package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DeleteDAO;
import dao.SearchHistoryDAO;
import model.Account;
import model.SearchHistory;

/**
 * Servlet implementation class SearchHistoryServlet
 */
@WebServlet("/SearchHistory")
public class SearchHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String searchhistory = req.getParameter("searchhistory");

		if("searchhistory".equals(searchhistory)){
			HttpSession session = req.getSession(false);
			Account account = (Account)session.getAttribute("account");
			SearchHistoryDAO dao = new SearchHistoryDAO();
			List<SearchHistory> list = dao.selectSearchHistory(account.getUser_id());
			req.setAttribute("searchHistoryList", list);
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/NewSearchRequestHistory.jsp");
			dispatcher.forward(req, resp);
		}else if("reform".equals(searchhistory)){
			String StrId = req.getParameter("id");
			int id = Integer.parseInt(StrId);
			req.setAttribute("id", id);
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/NewSearchRequestHistoryChange.jsp");
			dispatcher.forward(req, resp);
		}else if("delete".equals(searchhistory)){
			String StrId = req.getParameter("id");
			int id = Integer.parseInt(StrId);
			DeleteDAO dao = new DeleteDAO();
			dao.deleteSearchHistory(id);
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/NewSearchRequestHistoryDelete.jsp");
			dispatcher.forward(req, resp);
		}else if("reformcomp".equals(searchhistory)){
			String text = req.getParameter("text");
			String StrId = req.getParameter("id");
			int id = Integer.parseInt(StrId);
			SearchHistoryDAO dao = new SearchHistoryDAO();
			if(dao.isUpdateSearchHistory(id, text)){
				RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/NewSearchRequestHistoryChangecomp.jsp");
				dispatcher.forward(req, resp);
			}else{
				System.out.println("isupdatesearchhistorydao失敗");
			}
		}
		else{
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/mypage.jsp");
			dispatcher.forward(req, resp);
		}
	}
}

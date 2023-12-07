package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/NewSearchRequestHistory.jsp");
			dispatcher.forward(req, resp);
		}else if("reform".equals(searchhistory)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/NewSearchRequestHistoryChange.jsp");
			dispatcher.forward(req, resp);
		}else if("delete".equals(searchhistory)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/NewSearchRequestHistoryDelete.jsp");
			dispatcher.forward(req, resp);
		}else if("reformcomp".equals(searchhistory)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/NewSearchRequestHistoryChangecomp.jsp");
			dispatcher.forward(req, resp);
		}
		else{
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/mypage.jsp");
			dispatcher.forward(req, resp);
		}
	}
}

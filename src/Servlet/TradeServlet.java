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

import dao.PrizeDAO;
import model.Prize;

@WebServlet("/Trade")
public class TradeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrizeDAO dao = new PrizeDAO();
		List prizes = dao.selectByPrize();
		HttpSession session = req.getSession(false);
		session.setAttribute("prizes", prizes);
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/trademenu.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String trade = req.getParameter("trade");
		HttpSession session = req.getSession(false);
		if("ok".equals(trade)){
			String saftercoin = req.getParameter("aftercoin");
			int aftercoin = Integer.parseInt(saftercoin);
			if(aftercoin < 0){
				resp.sendRedirect("/Pet_Pathfinder/jsp/tradecheck.jsp?error=minuscoin");
			}else{
				//costomerテーブルのcoinを減らす処理
				//transactionテーブルを設定
				RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/tradecomp.jsp");
				dispatcher.forward(req, resp);
			}
		}else if(session.getAttribute("login") != null){
			String sid = req.getParameter("id");
			int id = Integer.parseInt(sid);
			PrizeDAO dao = new PrizeDAO();
			Prize prize = dao.choosedPrize(id);
			session.setAttribute("prize", prize);
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/tradecheck.jsp");
			dispatcher.forward(req, resp);
		}
		else{
			resp.sendRedirect("/Pet_Pathfinder/jsp/login.jsp");
		}
	}
}

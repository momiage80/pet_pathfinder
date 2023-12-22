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
import dao.TransactionDAO;
import model.Account;
import model.Login;
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
		Account account = (Account)session.getAttribute("account");
		Login login = (Login)session.getAttribute("login");
		String username = account.getUser_name();
		int userID = account.getUser_id();
		if("ok".equals(trade)){
			String saftercoin = req.getParameter("aftercoin");
			int aftercoin = Integer.parseInt(saftercoin);
			String safterfree = req.getParameter("afterfree");
			int afterfree = Integer.parseInt(safterfree);
			String safterpaid = req.getParameter("afterpaid");
			int afterpaid = Integer.parseInt(safterpaid);
			String samount = req.getParameter("amount");
			int amount = Integer.parseInt(samount);
			if(aftercoin < 0){
				resp.sendRedirect("/Pet_Pathfinder/jsp/tradecheck.jsp?error=minuscoin");
			}else{
				PrizeDAO dao = new PrizeDAO();
				dao.downCoin(username, afterfree, afterpaid);
				System.out.println("コインを減らすサーブレット成功");
				//transactionテーブルを設定
				TransactionDAO tdao = new TransactionDAO();
				tdao.insertTransaction(userID,"景品交換",0-amount,afterfree,afterpaid);
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

package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AccountDAO;
import dao.TransactionDAO;
import model.Account;

@WebServlet("/Charge")
public class ChargeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/chargetop.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String Strcoin = req.getParameter("coin");
		String payment = req.getParameter("payment");
		String check = req.getParameter("check");
		HttpSession session = req.getSession(false);
		if(Strcoin != null){
			int coin = Integer.parseInt(Strcoin);
			ArrayList<String> list = new ArrayList<>();
			list.add("hoge");
			list.set(0, Strcoin);
			session.setAttribute("chargeList", list);
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/payment-selection.jsp");
			dispatcher.forward(req, resp);
		}else if(req.getParameter("戻る") != null){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/chargetop.jsp");
			dispatcher.forward(req, resp);
		}else if(payment != null){
			ArrayList list = (ArrayList)session.getAttribute("chargeList");
			list.add("hoge");
			list.set(1, payment);
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/Coin_purchase_confirmation.jsp");
			dispatcher.forward(req, resp);
		}else if(check != null){
			AccountDAO dao = new AccountDAO();
			TransactionDAO transactiondao = new TransactionDAO();
			Account account = (Account)session.getAttribute("account");
			ArrayList list = (ArrayList)session.getAttribute("chargeList");
			int kakin = Integer.parseInt((String)list.get(0));
			int totalPaidCoins = kakin + account.getPaid_coins();
			dao.isUpdateAccount(account.getUser_name(), totalPaidCoins);
			account.setPaid_coins(totalPaidCoins);
			session.setAttribute("account", account);
			transactiondao.insertTransaction(account.getUser_id(), "課金", kakin, account.getFree_coins(), totalPaidCoins);
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/coin_purchase_completed.jsp");
			dispatcher.forward(req, resp);
		}else{
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/chargetop.jsp");
			dispatcher.forward(req, resp);
		}
	}
}

package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String coin = req.getParameter("coin");
		String payment = req.getParameter("payment");
		String check = req.getParameter("check");
		if(coin != null){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/payment-selection.jsp");
			dispatcher.forward(req, resp);
		}else if(payment != null){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/Coin_purchase_confirmation.jsp");
			dispatcher.forward(req, resp);
		}else if(check != null){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/coin_purchase_completed.jsp");
			dispatcher.forward(req, resp);
		}else{
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/chargetop.jsp");
			dispatcher.forward(req, resp);
		}
	}
}

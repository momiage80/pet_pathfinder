package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CustomerInfoServlet
 */
@WebServlet("/CustomerInfo")
public class CustomerInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String customer = req.getParameter("customer");
		if(customer != null){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/customer-information.jsp");
			dispatcher.forward(req, resp);
		}
	}
}

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
		if("customer".equals(customer)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/customer-information.jsp");
			dispatcher.forward(req, resp);
		}else if("delete".equals(customer)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/customer-information-delete.jsp");
			dispatcher.forward(req, resp);
		}else if("change".equals(customer)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/customer-information-change.jsp");
			dispatcher.forward(req, resp);
		}else if("deletecomp".equals(customer)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/customer-information-deletecomp.jsp");
			dispatcher.forward(req, resp);
		}else if("changecomp".equals(customer)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/customer-information-changecomp.jsp");
			dispatcher.forward(req, resp);
		}else if("changecheck".equals(customer)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/Update_confirmation.jsp");
			dispatcher.forward(req, resp);
		}
		else{
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/mypage.jsp");
			dispatcher.forward(req, resp);
		};
	}
}

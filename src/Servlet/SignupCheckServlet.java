package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Signupcheck")
public class SignupCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");

		if("edit".equals(action)){
			resp.sendRedirect("/Pet_Pathfinder/Signup");
		} else if("register".equals(action)){
			resp.sendRedirect("/Pet_Pathfinder/jsp/signupcomp.jsp");
		}
	}
}

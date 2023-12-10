package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Login;
import model.LoginLogic;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/login.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String user_name = req.getParameter("user_name");
		String password = req.getParameter("password");

		Login login = new Login(user_name, password);
		LoginLogic bo = new LoginLogic();
		boolean result = bo.execute(login);

		if(result){
			HttpSession session = req.getSession();
			System.out.println(session.getId());
			session.setAttribute("login", login);
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/mypage.jsp");
			dispatcher.forward(req, resp);
		}else{
			resp.sendRedirect("Login");
		}

	}
}

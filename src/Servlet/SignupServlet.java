package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DuplicationDAO;
import model.Signup;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/Signup")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/signup.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String mail = req.getParameter("mail");
		System.out.println(name+password+mail);
		Signup signup = new Signup(name,password,mail);
		DuplicationDAO dup = new DuplicationDAO();

		//重複処理--------------------------------------------------------------------------
		if(dup.isDuplicateUser(name, mail)){
			System.out.println("重複してるぞ");
			resp.sendRedirect("/Pet_Pathfinder/jsp/signup.jsp?error=duplicate");
            return;
		}else{
			req.setAttribute("signup", signup);
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/signupcheck.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
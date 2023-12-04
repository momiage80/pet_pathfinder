package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserProfileServlet
 */
@WebServlet("/Profile")
public class UserProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String profile = req.getParameter("profile");
		if("profile".equals(profile)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/user-profile.jsp");
			dispatcher.forward(req, resp);
		}else if("change".equals(profile)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/tmp.jsp");
			dispatcher.forward(req, resp);
		}else if("comp".equals(profile)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/user-profile-change-comp-tmp.jsp");
			dispatcher.forward(req, resp);
		}else if("coin".equals(profile)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/user-profile-coin-number.jsp");
			dispatcher.forward(req, resp);
		}else if("coincheck".equals(profile)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/user-profile-coin-check.jsp");
			dispatcher.forward(req, resp);
		}else if("coincomp".equals(profile)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/user-profile-coin-comp.jsp");
			dispatcher.forward(req, resp);
		}
		else{
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/mypage.jsp");
			dispatcher.forward(req, resp);
		};
	}
}

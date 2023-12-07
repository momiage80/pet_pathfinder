package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/Search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String search = req.getParameter("search");
		if("searchrequest".equals(search)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/NewSearchRequest.jsp");
			dispatcher.forward(req, resp);
		}else if("searchcomp".equals(search)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/searchcomp.jsp");
			dispatcher.forward(req, resp);
		}else if("searchnora".equals(search)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/searchNora.jsp");
			dispatcher.forward(req, resp);
		}
		else{
			RequestDispatcher dispatcher = req.getRequestDispatcher("#");
			dispatcher.forward(req, resp);
		}
	}
}

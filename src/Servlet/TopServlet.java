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

import dao.TopDAO;

/**
 * Servlet implementation class TopServlet
 */
@WebServlet("/Top")
public class TopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	TopDAO dao = new TopDAO();
    	List pointers = dao.selectByMap();
    	System.out.println(pointers.size());
    	HttpSession session = req.getSession(false);
    	if(session == null){
        	session = req.getSession();
    	}
		session.setAttribute("pointers", pointers);
    	RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/top.jsp");
    	dispatcher.forward(req, resp);
    }
}

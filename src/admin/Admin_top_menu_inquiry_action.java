package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/inquiry"})
public class Admin_top_menu_inquiry_action extends HttpServlet{
	private static final long serialVersionUID = 1L;
    public void doGet(
    		HttpServletRequest request, HttpServletResponse response
    ) throws ServletException, IOException{
    		request.getRequestDispatcher("admin_jsp/inquiry_list.jsp").forward(request, response);
    }
}

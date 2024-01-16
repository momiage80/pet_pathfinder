package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/admin_jsp/inquiry"})
public class Admin_top_menu_inquiry_action {
    public void doGet(
    		HttpServletRequest request, HttpServletResponse response
    ) throws ServletException, IOException{
    		request.getRequestDispatcher("inquiry_list.jsp").forward(request, response);
    }
}

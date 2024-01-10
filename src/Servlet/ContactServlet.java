package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ContactDAO;

/**
 * Servlet implementation class ContactServlet
 */
@WebServlet("/Contact")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/contactAsTop.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String inquiry = req.getParameter("inquiry");
		String StrUserid = req.getParameter("userid");
		int userid = Integer.parseInt(StrUserid);
		System.out.println(email+inquiry+userid);
		ContactDAO contactdao = new ContactDAO();
		if(contactdao.insertContact(userid, inquiry, email)){
			System.out.println("お問い合わせ成功");
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/contactAscomp.jsp");
			dispatcher.forward(req, resp);
		}else{
			System.out.println("お問い合わせのinsertに失敗しました");
			resp.sendRedirect("/Pet_Pathfinder/jsp/contactAsTop.jsp?error=cantinsert");
		}
	}
}

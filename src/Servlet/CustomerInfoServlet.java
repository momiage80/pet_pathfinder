package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AccountDAO;
import dao.DeleteDAO;
import dao.DuplicationDAO;
import model.Account;
import model.Login;
import model.Signup;

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
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/Newcustomer-info.jsp");
			dispatcher.forward(req, resp);
		}else if("delete".equals(customer)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/customer-information-delete.jsp");
			dispatcher.forward(req, resp);
		}else if("change".equals(customer)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/customer-information-change.jsp");
			dispatcher.forward(req, resp);
		}else if("deletecomp".equals(customer)){
			HttpSession session = req.getSession(false);
			Account account = (Account)session.getAttribute("account");
			int user_id = account.getUser_id();
			DeleteDAO dao = new DeleteDAO();
			dao.deleteCustomer(user_id);
			if (session != null && session.getAttribute("login") != null) {
	            // セッションの無効化
	            session.invalidate();
	            System.out.println("sessionを無効化したよ");
	        }else{
	        	System.out.println("sessionはまだ有効だよ");
	        }
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/customer-information-deletecomp.jsp");
			dispatcher.forward(req, resp);
		}else if("changecomp".equals(customer)){
			String name = req.getParameter("changename");
			String password = req.getParameter("changepassword");
			String mail = req.getParameter("changemail");
			HttpSession session = req.getSession(false);
			Account account = (Account)session.getAttribute("account");
			Login login = (Login)session.getAttribute("login");
			String updatedname = account.getUser_name();
			System.out.println(name+password+mail);
			AccountDAO dao = new AccountDAO();

			if(dao.isUpdateAccount(name, mail, password, updatedname)){
				System.out.println("update成功");
				account.setUser_name(name);
				account.setMail_address(mail);
				account.setPassword(password);
				login.setName(name);
				login.setPassword(password);
				RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/customer-information-changecomp.jsp");
				dispatcher.forward(req, resp);
			}else{
				resp.sendRedirect("/Pet_Pathfinder/jsp/customer-information-change.jsp?error=cantupdate");
			}

		}else if("changecheck".equals(customer)){
			String name = req.getParameter("name");
			String password = req.getParameter("password");
			String mail = req.getParameter("mail");
			System.out.println(name+password+mail);
			Signup signup = new Signup(name,password,mail);
			DuplicationDAO dup = new DuplicationDAO();

			//重複処理--------------------------------------------------------------------------
			if(dup.isDuplicateUser(name, mail)){
				System.out.println("重複してるぞ");
				resp.sendRedirect("/Pet_Pathfinder/jsp/customer-information-change.jsp?error=duplicate");
	            return;
			}else{
				req.setAttribute("update", signup);
				RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/Update_confirmation.jsp");
				dispatcher.forward(req, resp);
			}
		}
		else{
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/mypage.jsp");
			dispatcher.forward(req, resp);
		};
	}
}

package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.AccountDAO;
import dao.ProfileDAO;
import model.Account;
import model.Login;

/**
 * Servlet implementation class UserProfileServlet
 */
@MultipartConfig //これがないとfileをreqできない
@WebServlet("/Profile")
public class UserProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String profile = req.getParameter("profile");
		String str_User_id = req.getParameter("user_id");
		String account_id = req.getParameter("account_id");
		if("profile".equals(profile)){
			System.out.println(str_User_id+account_id);
			if(str_User_id == null || account_id.equals(str_User_id)){
				RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/user-profile.jsp");
				dispatcher.forward(req, resp);
			}else{
				int user_id = Integer.parseInt(str_User_id);
				ProfileDAO dao = new ProfileDAO();
				Account account = dao.findByProfile(user_id);
				HttpSession session = req.getSession(false);
		    	if(session == null){
		        	session = req.getSession();
		    	}
				session.setAttribute("other_user_profile", account);
				RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/other-user-profile.jsp");
				dispatcher.forward(req, resp);
			}
		}else if("change".equals(profile)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/tmp.jsp");
			dispatcher.forward(req, resp);
		}else if("comp".equals(profile)){
			String comment = req.getParameter("comment");
			String SmarginTop = req.getParameter("marginTop");
			int marginTop = Integer.parseInt(SmarginTop);
			Part file = req.getPart("file");
			String fileName = getFileName(file);
			HttpSession session = req.getSession(false);
			Account account = (Account)session.getAttribute("account");
			Login login = (Login)session.getAttribute("login");
			String updatedname = account.getUser_name();
			System.out.println(comment+marginTop+file);
			AccountDAO dao = new AccountDAO();
			if(dao.isUpdatefiles(comment, fileName, file, account.getUser_name(), marginTop)){
				account.setComment(comment);
				account.setIcon(fileName);
				account.setIconMargntop(marginTop);
				RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/user-profile-change-comp-tmp.jsp");
				dispatcher.forward(req, resp);
			}else{
				resp.sendRedirect("/Pet_Pathfinder/jsp/tmp.jsp?error=cantfileupload");
			}
		}else if("coin".equals(profile)){
			HttpSession session = req.getSession(false);
			if((Account)session.getAttribute("account") == null){
				RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/login.jsp");
				dispatcher.forward(req, resp);
			}
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/user_profile_coin_number.jsp");
			dispatcher.forward(req, resp);
		}else if("coincheck".equals(profile) && Integer.parseInt(req.getParameter("totalCoins")) - Integer.parseInt(req.getParameter("amount")) > 0){
			//まだほかのユーザープロフにとベルシステムができてないのでいったん保留。。。
			//↑okだょ
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/user_profile_coin_check.jsp");
			dispatcher.forward(req, resp);
		}else if("coincomp".equals(profile)){
			HttpSession session = req.getSession(false);
			Account account = (Account)session.getAttribute("account");
			Account other_account = (Account)session.getAttribute("other_user_profile");
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/user-profile-coin-comp.jsp");
			dispatcher.forward(req, resp);
		}
		else{
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/mypage.jsp");
			dispatcher.forward(req, resp);
		};
	}
	private String getFileName(final Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
        	System.out.println(content);
            if (content.trim().startsWith("filename")) {
            	System.out.println(content.trim().startsWith("filename"));
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}

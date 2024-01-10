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
		if("profile".equals(profile)){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/user-profile.jsp");
			dispatcher.forward(req, resp);
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
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/user-profile-coin-number.jsp");
			dispatcher.forward(req, resp);
		}else if("coincheck".equals(profile) && Integer.parseInt(req.getParameter("totalCoins")) - Integer.parseInt(req.getParameter("amount")) > 0){
			//まだほかのユーザープロフにとベルシステムができてないのでいったん保留。。。
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

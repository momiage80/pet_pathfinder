package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/Logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/logout.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// falseを指定することで、セッションが存在しない場合は新しいセッションを作成せずにnullを返します。
		HttpSession session = req.getSession(false);

        // セッションが存在し、無効でない場合
        if (session != null && session.getAttribute("login") != null) {
            // セッションの無効化
            session.invalidate();
            System.out.println("sessionを無効化したよ");
        }else{
        	System.out.println("sessionはまだ有効だよ");
        }

        // ログアウト後の処理
        resp.sendRedirect("jsp/logoutcomp.jsp");
	}
}

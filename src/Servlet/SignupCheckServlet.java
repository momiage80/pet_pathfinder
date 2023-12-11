package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Signupcheck")
public class SignupCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String mail = req.getParameter("mail");

		try {
            // データベース接続処理（略）
			Class.forName("org.postgresql.Driver");
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}

        try{
			Connection con = DriverManager.getConnection(
					"jdbc:postgresql://localhost/pet_pathfinder?useSSL=false",
					"postgres",
					"postsql"
					);
            // 重複チェッククエリの実行
            String query = "insert into customer (user_name, mail_address, password) values (?, ?, ?)";
            try (PreparedStatement statement = con.prepareStatement(query)) {
                statement.setString(1, name);
                statement.setString(2, mail);
                statement.setString(3, password);

             // INSERT文の実行
                int rowsAffected = statement.executeUpdate();

                if (rowsAffected > 0) {
                	System.out.println("insertできたよ");
                    RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/signupcomp.jsp");
                    dispatcher.forward(req, resp);
                } else {
                	System.out.println("insertできなかったよ");
                    resp.sendRedirect("/Pet_Pathfinder/jsp/signup.jsp?error=cantinsert");
                }
            }
        } catch (Exception e) {
        	e.printStackTrace();
            resp.getWriter().println("エラーが発生しました。");
        }
	}
}

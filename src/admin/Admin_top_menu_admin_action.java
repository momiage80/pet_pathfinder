package admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/admin"})
public class Admin_top_menu_admin_action extends HttpServlet{
	private static final long serialVersionUID = 1L;
    public void doGet(
    		HttpServletRequest request, HttpServletResponse response
    ) throws ServletException, IOException{
    		request.getRequestDispatcher("admin_jsp/admin_settings.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String old_password = req.getParameter("old_password");
    	String new_password = req.getParameter("new_password");
    	String confirm_password = req.getParameter("confirm_password");
    	String true_password = null;

		try {
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
			PreparedStatement pstmt = con.prepareStatement("select * from admin;");
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()){
				int getid = rs.getInt("id");
				String getpassword = rs.getString("password");
				true_password = getpassword;
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("失敗したでござる");
		}

        if(old_password.equals(true_password)){
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
                // updateチェッククエリの実行
                String query = "update admin set password = ?;";
                try (PreparedStatement statement = con.prepareStatement(query)) {
                    statement.setString(1, new_password);
                    int rowsAffected = statement.executeUpdate();
                    if (rowsAffected > 0) {
                    	resp.sendRedirect("admin_jsp/settings_complete.jsp");
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("customerのupdateに失敗しました");
            }
        	}else{
        		resp.sendRedirect("admin_jsp/admin_settings.jsp?error=error");
        }
    }
}

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

@WebServlet(urlPatterns={"/adminLogin"})
public class Admin_login_action extends HttpServlet{
	private static final long serialVersionUID = 1L;
    public void doPost(
    		HttpServletRequest request, HttpServletResponse response
    ) throws ServletException, IOException{
    	String StrID = request.getParameter("id");
    	String password = request.getParameter("password");
    	int id = Integer.parseInt(StrID);
    	int true_id = 0;
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
				true_id = getid;
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

        if(id == true_id && password.equals(true_password)){
        	response.sendRedirect("admin_jsp/top_menu.jsp");
        }else{
        	request.getRequestDispatcher("admin_jsp/admin_login_error.jsp").forward(request, response);
        }
    }
}

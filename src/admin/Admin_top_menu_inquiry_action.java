package admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Inquiry;

@WebServlet(urlPatterns={"/inquiry"})
public class Admin_top_menu_inquiry_action extends HttpServlet{
	private static final long serialVersionUID = 1L;
    public void doGet(
    		HttpServletRequest request, HttpServletResponse response
    ) throws ServletException, IOException{
    	List<Inquiry> list = new ArrayList<>();
		Inquiry inquiry = null;
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
			PreparedStatement pstmt = con.prepareStatement("select * from contact;");
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()){
				int id = rs.getInt("id");
				int user_id = rs.getInt("user_id");
				String content = rs.getString("content");
				//(inputString != null) ? inputString : "代替文字列";
				Timestamp date = rs.getTimestamp("date");
				boolean flag = rs.getBoolean("flag");

				inquiry = new Inquiry(id,user_id, content, date, flag);
				list.add(inquiry);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("失敗したでござる");
		}
		request.setAttribute("inquiry_list", list);
		request.getRequestDispatcher("admin_jsp/inquiry_list.jsp").forward(request, response);
    }
}

package admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Prize;

@WebServlet(urlPatterns={"/item"})
public class Admin_top_menu_item_action extends HttpServlet{
	private static final long serialVersionUID = 1L;
    public void doGet(
    		HttpServletRequest request, HttpServletResponse response
    ) throws ServletException, IOException{
	    	List<Prize> list = new ArrayList<>();
			Prize prize = null;
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
				PreparedStatement pstmt = con.prepareStatement("select * from prize;");
				ResultSet rs = pstmt.executeQuery();

				while (rs.next()){
					int id = rs.getInt("id");
					String name = rs.getString("name");
					//(inputString != null) ? inputString : "代替文字列";
					String detail = rs.getString("detail");
					int cost = rs.getInt("cost");
					String path = rs.getString("path");
					String kinds = rs.getString("kinds");

					prize = new Prize(id,name, detail, cost, path, kinds);
					list.add(prize);
				}
				rs.close();
				pstmt.close();
				con.close();
			} catch (Exception e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
				System.out.println("失敗したでござる");
			}
			request.setAttribute("prize_list", list);
    		request.getRequestDispatcher("admin_jsp/gift_list.jsp").forward(request, response);
    }
}

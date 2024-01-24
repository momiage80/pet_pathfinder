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

import model.Account;

@WebServlet(urlPatterns={"/member"})
public class Admin_top_menu_member_action extends HttpServlet{
	private static final long serialVersionUID = 1L;
    public void doGet(
    		HttpServletRequest request, HttpServletResponse response
    ) throws ServletException, IOException{
    		List<Account> list = new ArrayList<>();
    		Account account = null;
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
    			PreparedStatement pstmt = con.prepareStatement("select * from customer;");
    			ResultSet rs = pstmt.executeQuery();

    			while (rs.next()){
    				int user_id = rs.getInt("user_id");
    				String user_name = rs.getString("user_name");
    				String mail_address = rs.getString("mail_address");
    				String password = rs.getString("password");
    				int free_coins = rs.getInt("free_coins");
    				int paid_coins = rs.getInt("paid_coins");
    				Timestamp created = rs.getTimestamp("created");
    				Timestamp update = rs.getTimestamp("update");
    				String comment = rs.getString("comment");
    				String icon = rs.getString("icon");
    				account = new Account(user_id,user_name, mail_address, password, free_coins, paid_coins, created, update, comment, icon);
    				list.add(account);
    			}
    			rs.close();
    			pstmt.close();
    			con.close();
    		} catch (Exception e) {
    			// TODO 自動生成された catch ブロック
    			e.printStackTrace();
    			System.out.println("失敗したでござる");
    		}
    		request.setAttribute("user_list", list);
    		request.getRequestDispatcher("admin_jsp/members_list.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	if(req.getParameter("delete_comp") != null){
    		String strUser_id = req.getParameter("user_id");
    		int user_id = Integer.parseInt(strUser_id);
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
    			PreparedStatement pstmt = con.prepareStatement("delete from customer where user_id = ?;");
    			pstmt.setInt(1, user_id);

    			int rowsAffected = pstmt.executeUpdate();

                // 実行結果の確認
                if (rowsAffected > 0) {
                    System.out.println("データが削除されました。");
        	    	req.getRequestDispatcher("admin_jsp/members_delete.jsp").forward(req, resp);
                } else {
                    System.out.println("該当するデータが見つかりませんでした。");
                }
    			pstmt.close();
    			con.close();
    		} catch (Exception e) {
    			// TODO 自動生成された catch ブロック
    			e.printStackTrace();
    			System.out.println("customer deleteに失敗したでござる");
    		}
    	}else{
	    	req.setAttribute("user_id", req.getParameter("user_id"));
	    	req.getRequestDispatcher("admin_jsp/members_confirm_delete.jsp").forward(req, resp);
    	}
    }
}

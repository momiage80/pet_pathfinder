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

import model.Transaction;

@WebServlet(urlPatterns={"/transaction"})
public class Admin_top_menu_transaction_action extends HttpServlet{
	private static final long serialVersionUID = 1L;
    public void doGet(
    		HttpServletRequest request, HttpServletResponse response
    ) throws ServletException, IOException{
    	List<Transaction> list = new ArrayList<>();
		Transaction transaction = null;
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
			PreparedStatement pstmt = con.prepareStatement("select * from transactions;");
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()){
				int id = rs.getInt("transaction_id");
				int user_id = rs.getInt("user_id");
				String type = rs.getString("type");
				//(inputString != null) ? inputString : "代替文字列";
				int amount = rs.getInt("amount");
				int afterfreecoin = rs.getInt("afterfreecoin");
				int afterpaidcoin = rs.getInt("afterpaidcoin");
				Timestamp date = rs.getTimestamp("date");
				int receiver_id = rs.getInt("receiver_id");

				transaction = new Transaction(id,user_id, type, amount, afterfreecoin,afterpaidcoin,date,receiver_id);
				list.add(transaction);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("失敗したでござる");
		}
		request.setAttribute("transaction_list", list);
		request.getRequestDispatcher("admin_jsp/trading_history.jsp").forward(request, response);
    }
}

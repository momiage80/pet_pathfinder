package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class TransactionDAO {
	public void insertTransaction(int userID, String type, int amount, int free, int paid) {
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
			PreparedStatement pstmt = con.prepareStatement("insert into transactions (user_id, type, amount, afterfreecoin, afterpaidcoin) values (?,?,?,?,?);");
			pstmt.setInt(1, userID);
			pstmt.setString(2, type);
			pstmt.setInt(3, amount);
			pstmt.setInt(4, free);
			pstmt.setInt(5, paid);

			int rowsAffected = pstmt.executeUpdate();

            if (rowsAffected > 0) {
            	System.out.println("景品transactionできたよ");
            } else {
            	System.out.println("景品transactionできなかったよ");
            }
			pstmt.close();
			con.close();
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("景品transaction失敗したでござる");
		}
	}
}

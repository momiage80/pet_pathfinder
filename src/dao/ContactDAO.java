package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ContactDAO {
	public boolean insertContact(int userid, String content, String email) {
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
			PreparedStatement pstmt = con.prepareStatement("insert into contact (user_id, content, email) values (?, ?, ?);");
			pstmt.setInt(1, userid);
			pstmt.setString(2, content);
			pstmt.setString(3, email);

			int rowsAffected = pstmt.executeUpdate();
			pstmt.close();
			con.close();


            if (rowsAffected > 0) {
            	System.out.println("景品transactionできたよ");
            	return true;
            } else {
            	System.out.println("景品transactionできなかったよ");
            	return false;
            }
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("景品transaction失敗したでござる");
			return false;
		}
	}
}

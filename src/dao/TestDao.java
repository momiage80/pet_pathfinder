package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TestDao{
	public static void main(String[] args) {
		TestDao testdao = new TestDao();
		testdao.testmethod();
	}
	public void testmethod() {
		try {
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:postgresql://localhost/pet_pathfinder?useSSL=false",
					"postgres",
					"postsql"
					);
			PreparedStatement pstmt = con.prepareStatement("select * from customer");
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()){
				System.out.println(rs.getString("user_name"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException | ClassNotFoundException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println(e);
		}
	}
}

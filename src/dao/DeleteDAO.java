package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DeleteDAO {
	public void deleteCustomer(int user_id) {
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
	}
	public void deleteSearchHistory(int id) {
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
			PreparedStatement pstmt = con.prepareStatement("delete from search where id = ?;");
			pstmt.setInt(1, id);

			int rowsAffected = pstmt.executeUpdate();

            // 実行結果の確認
            if (rowsAffected > 0) {
                System.out.println("データが削除されました。");
            } else {
                System.out.println("該当するデータが見つかりませんでした。");
            }
			pstmt.close();
			con.close();
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("search deleteに失敗したでござる");
		}
	}
}

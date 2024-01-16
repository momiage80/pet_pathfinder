package Servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class CoinsDAO {
	public boolean isUpdateCoins(int user_id, int free_coins, int paid_coins){
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

	        // データベースにファイルのパスを保存
	        String query = "update customer set free_coins = ?, paid_coins = ? where user_id = ?;";
	        try (PreparedStatement statement = con.prepareStatement(query)) {
                statement.setInt(1, free_coins);
                statement.setInt(2, paid_coins);
                statement.setInt(3, user_id);
                int rowsAffected = statement.executeUpdate();
                if (rowsAffected > 0) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("free_coinsのupdateに失敗しました");
        }
        return false;
	}
}

package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DuplicationDAO {
	public boolean isDuplicateUser(String username, String email) {
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
            // 重複チェッククエリの実行
            String query = "SELECT COUNT(*) FROM customer WHERE user_name = ? OR mail_address = ?";
            try (PreparedStatement statement = con.prepareStatement(query)) {
                statement.setString(1, username);
                statement.setString(2, email);
                ResultSet resultSet = statement.executeQuery();
                if (resultSet.next()) {
                    int count = resultSet.getInt(1);
                    return count > 0; // 1以上なら重複がある
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

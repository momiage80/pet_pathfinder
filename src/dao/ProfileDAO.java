package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import model.Account;

public class ProfileDAO {
	public Account findByProfile(int user_id) {
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
			PreparedStatement pstmt = con.prepareStatement("select * from customer where user_id = ?");
			pstmt.setInt(1, user_id);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()){
				int id = rs.getInt("user_id");
				String user_name = rs.getString("user_name");
				String mail_address = rs.getString("mail_address");
				String password = rs.getString("password");
				int free_coins = rs.getInt("free_coins");
				int paid_coins = rs.getInt("paid_coins");
				Timestamp created = rs.getTimestamp("created");
				Timestamp update = rs.getTimestamp("update");
				String comment = rs.getString("comment");
				String icon = rs.getString("icon");
				account = new Account(id,user_name, mail_address, password, free_coins, paid_coins, created, update, comment, icon);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("他人のuser_profileの取り出しに失敗したでござる");
			return null;
		}
		System.out.println("他人のuser_profileの取り出し成功");
		return account;
	}
}

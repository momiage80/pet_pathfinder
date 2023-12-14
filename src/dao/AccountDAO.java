package dao;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import javax.servlet.http.Part;

import model.Account;
import model.Login;

public class AccountDAO {
	public boolean isUpdatefiles(String comment, String fileName, Part file, String user, int marginTop){
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
			String uploadDirectory = "C:/pleiades/4_6neon/Pet_Pathfinder/WebContent/img";
			String uploadPath = uploadDirectory + File.separator + fileName;

	        try (InputStream input = file.getInputStream();
	        	OutputStream output = new FileOutputStream(new File(uploadPath))) {

	        	byte[] buffer = new byte[1024];
	    		int length;
	    		while ((length = input.read(buffer)) > 0) {
	    			output.write(buffer, 0, length);
	    		}
			}

	        // データベースにファイルのパスを保存
	        String query = "update customer set comment = ?,icon = ?,icon_margintop = ? where user_name = ?;";
	        try (PreparedStatement statement = con.prepareStatement(query)) {
                statement.setString(1, comment);
                statement.setString(2, fileName);
                statement.setInt(3, marginTop);
                statement.setString(4, user);
                int rowsAffected = statement.executeUpdate();
                if (rowsAffected > 0) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("userprofileのupdateに失敗しました");
        }
        return false;
	}
	public boolean isUpdateAccount(String username, String email, String pass, String updatename) {
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
            // updateチェッククエリの実行
            String query = "update customer set user_name = ?,mail_address = ?,password = ? where user_name = ?;";
            try (PreparedStatement statement = con.prepareStatement(query)) {
                statement.setString(1, username);
                statement.setString(2, email);
                statement.setString(3, pass);
                statement.setString(4, updatename);
                int rowsAffected = statement.executeUpdate();
                if (rowsAffected > 0) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("customerのupdateに失敗しました");
        }
        return false;
    }
	public Account findByLogin(Login login) {
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
			PreparedStatement pstmt = con.prepareStatement("select * from customer where user_name = ? and password = ?");
			pstmt.setString(1, login.getName());
			pstmt.setString(2, login.getPassword());
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()){
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
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("失敗したでござる");
			return null;
		}
		return account;
	}
}

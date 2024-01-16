package dao;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.http.Part;

public class SearchDAO {
	public boolean isInsertSearch(int user_id, String animal, String animal_detail, String fileName, Part file, double lat, double lng, String type){
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
	        String query = "insert into search (user_id, animal, animal_detail, file, lat, lng, type) values (?,?,?,?,?,?,?);";
	        try (PreparedStatement statement = con.prepareStatement(query)) {
                statement.setInt(1, user_id);
                statement.setString(2, animal);
                statement.setString(3, animal_detail);
                statement.setString(4, fileName);
                statement.setDouble(5, lat);
                statement.setDouble(6, lng);
                statement.setString(7, type);
                int rowsAffected = statement.executeUpdate();
                if (rowsAffected > 0) {
                	System.out.println("searchのinsert成功");
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("searchのinsertに失敗しました");
        }
        return false;
	}
}

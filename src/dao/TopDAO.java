package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Pointer;

public class TopDAO {
	public List selectByMap() {
		Pointer pointer = null;
		List<Pointer> pointers = new ArrayList<>(); // ArrayListを使用してPrizeオブジェクトを格納するリスト
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
			PreparedStatement pstmt = con.prepareStatement("select * from search");
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()){
				int id = rs.getInt("id");
				int user_id = rs.getInt("user_id");
				String animal = rs.getString("animal");
				String animal_detail = rs.getString("animal_detail");
				String file = rs.getString("file");
				double lat = rs.getDouble("lat");
				double lng = rs.getDouble("lng");
				pointer = new Pointer(id, user_id, animal, animal_detail, file, lat, lng);
				pointers.add(pointer);
				System.out.println(pointer);
			}
			rs.close();
			pstmt.close();
			con.close();
			System.out.println("select * from search成功");
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("失敗したでござる");
			return null;
		}
		System.out.println(pointers);
		return pointers;
	}
}

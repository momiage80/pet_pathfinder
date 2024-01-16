package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.SearchHistory;

public class SearchHistoryDAO {
	public List selectSearchHistory(int user_id) {
		SearchHistory searchHistory = null;
		List<SearchHistory> searchHistoryList = new ArrayList<>(); // ArrayListを使用してPrizeオブジェクトを格納するリスト
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
			PreparedStatement pstmt = con.prepareStatement("select id,animal,animal_detail,file from search where user_id = ?");
			pstmt.setInt(1, user_id);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()){
				int id = rs.getInt("id");
				String animal = rs.getString("animal");
				String animal_detail = rs.getString("animal_detail");
				String file = rs.getString("file");
				searchHistory = new SearchHistory(id,animal, animal_detail,file);
				searchHistoryList.add(searchHistory);
			}
			rs.close();
			pstmt.close();
			con.close();
			System.out.println("select id,animal,animal_detail from search where user_id = ?成功");
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("個人の捜索依頼履歴の抽出失敗したでござる");
			return null;
		}
		return searchHistoryList;
	}
	public boolean isUpdateSearchHistory(int id, String text) {
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
            String query = "update search set animal_detail = ? where id = ?;";
            try (PreparedStatement statement = con.prepareStatement(query)) {
                statement.setString(1, text);
                statement.setInt(2, id);
                int rowsAffected = statement.executeUpdate();
                if (rowsAffected > 0) {
                	System.out.println("捜索依頼履歴をupdate");
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("searchのupdateに失敗しました");
        }
        return false;
    }
}

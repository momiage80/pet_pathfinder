package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Prize;

public class PrizeDAO {
	public void downCoin(String username,int free,int paid){
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
			PreparedStatement pstmt = con.prepareStatement("update customer set free_coins = ?, paid_coins = ? where user_name = ?");
			pstmt.setInt(1, free);
			pstmt.setInt(2, paid);
			pstmt.setString(3, username);
			int rowsAffected = pstmt.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("コイン枚数変更成功");
            }
			pstmt.close();
			con.close();
			System.out.println("prizedao成功");
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("失敗したでござる");
		}
	}
	public List selectByPrize() {
		Prize prize = null;
		List<Prize> prizes = new ArrayList<>(); // ArrayListを使用してPrizeオブジェクトを格納するリスト
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
			PreparedStatement pstmt = con.prepareStatement("select * from prize");
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()){
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String detail = rs.getString("detail");
				int cost = rs.getInt("cost");
				String path = rs.getString("path");
				String kinds = rs.getString("kinds");
				prize = new Prize(id,name,detail,cost,path, kinds);
				prizes.add(prize);
				System.out.println(prize);
			}
			rs.close();
			pstmt.close();
			con.close();
			System.out.println("prizedao成功");
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("失敗したでござる");
			return null;
		}
		return prizes;
	}
	public Prize choosedPrize(int choosedId) {
		Prize prize = null;
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
			PreparedStatement pstmt = con.prepareStatement("select * from prize where id = ?");
			pstmt.setInt(1, choosedId);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()){
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String detail = rs.getString("detail");
				int cost = rs.getInt("cost");
				String path = rs.getString("path");
				String kinds = rs.getString("kinds");
				prize = new Prize(id,name,detail,cost,path, kinds);
				System.out.println(prize.getName());
			}
			rs.close();
			pstmt.close();
			con.close();
			System.out.println("prizedao成功");
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("失敗したでござる");
			return null;
		}
		return prize;
	}
}

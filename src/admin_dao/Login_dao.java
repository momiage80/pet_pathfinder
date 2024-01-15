package admin_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import admin_bean.Login;

public class Login_dao extends Admin_DAO{
    public Login search(String id, String password)throws Exception{
    	Login login=null;
    	Connection con=getConnection();

    	PreparedStatement st;
    	st=con.prepareStatement("select * from login where id=? and password=?");
    	st.setString(1, id);
    	st.setString(2, password);
    	ResultSet rs=st.executeQuery();

    	while(rs.next()){
    		login=new Login();
    		login.setId(rs.getString("id"));
    		login.setPassword(rs.getString("password"));
    	}

    	st.close();
    	con.close();
    	return login;
    }
}

package admin_dao;

import java.sql.Connection;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Admin_DAO {
    static DataSource ds;

    public Connection getConnection() throws Exception{
       if (ds==null){
    	   InitialContext ic = new InitialContext();
    	   ds=(DataSource)ic.lookup("java:");
       }
       return ds.getConnection();
    }
}

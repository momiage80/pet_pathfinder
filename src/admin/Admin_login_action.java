package admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin_bean.Login;
import admin_dao.Login_dao;
import tool.Action;

public class Admin_login_action extends Action{
    public String execute(
    		HttpServletRequest request, HttpServletResponse response
    ) throws Exception{
    	HttpSession session=request.getSession();

    	String id = request.getParameter("id");
    	String password = request.getParameter("password");
        Login_dao dao = new Login_dao();
        Login login = dao.search(id, password);

        if(login!=null){
        	session.setAttribute("login", login);
        	return "admin_jsp/top_menu.jsp";
        }
        return "admin_jsp/admin_login_error.jsp";
    }
}

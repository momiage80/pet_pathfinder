package admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tool.Action;

public class Admin_logout_action extends Action{
	public String execute(
    		HttpServletRequest request, HttpServletResponse response
    ) throws Exception{
    	HttpSession session=request.getSession();

    	if(session.getAttribute("login")!=null){
    		session.removeAttribute("login");
    		return "admin_jsp/logout.jsp";
    	}

    	return "";
	}
}

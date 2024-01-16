package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.SearchDAO;

/**
 * Servlet implementation class SearchServlet
 */
@MultipartConfig //これがないとfileをreqできない
@WebServlet("/Search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String search = req.getParameter("search");
		String StrUserid = req.getParameter("userid");
		int user_id = Integer.parseInt(StrUserid);
		System.out.println(user_id);

		if("searchrequest".equals(search) && user_id != 1){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/NewSearchRequest.jsp");
			dispatcher.forward(req, resp);
		}else if("searchcomp".equals(search)){
			String lat = req.getParameter("lat");
			String lng = req.getParameter("lng");
			String animal = req.getParameter("animal");
			Part file = req.getPart("file");
			String fileName = getFileName(file);
			String text = req.getParameter("text");
			Double dlat = Double.parseDouble(lat);
			Double dlng = Double.parseDouble(lng);
			System.out.println(lat+lng+animal+file+fileName+text);
			SearchDAO dao = new SearchDAO();
			if(dao.isInsertSearch(user_id, animal, text, fileName, file, dlat, dlng, "request") && user_id != 1){
				RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/searchcomp.jsp");
				dispatcher.forward(req, resp);
			}else{
				System.out.println("捜索依頼のinsertに失敗しました");
				resp.sendRedirect("/Pet_Pathfinder/jsp/NewSearchRequest.jsp?error=cantinsert");
			}
		}else if("searchnora".equals(search) && user_id != 1){
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/NewSearchNora.jsp");
			dispatcher.forward(req, resp);
		}else if("noracomp".equals(search)){
			String lat = req.getParameter("lat");
			String lng = req.getParameter("lng");
			String animal = req.getParameter("animal");
			Part file = req.getPart("file");
			String fileName = getFileName(file);
			String text = req.getParameter("text");
			Double dlat = Double.parseDouble(lat);
			Double dlng = Double.parseDouble(lng);
			System.out.println(lat+lng+animal+file+fileName+text);
			SearchDAO dao = new SearchDAO();
			if(dao.isInsertSearch(user_id, animal, text, fileName, file, dlat, dlng, "nora") && user_id != 1){
				RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/searchcomp.jsp");
				dispatcher.forward(req, resp);
			}else{
				System.out.println("捜索依頼のinsertに失敗しました");
				resp.sendRedirect("/Pet_Pathfinder/jsp/NewSearchNora.jsp?error=cantinsert");
			}
		}
		else{
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/login.jsp");
			dispatcher.forward(req, resp);
		}
	}
	private String getFileName(final Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
        	System.out.println(content);
            if (content.trim().startsWith("filename")) {
            	System.out.println(content.trim().startsWith("filename"));
            	System.out.println(content.substring(content.indexOf('=') + 1).trim().replace("\"", ""));
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}

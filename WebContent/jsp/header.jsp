<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="logined" style="position: absolute;
		    right: 100px;
		    top: 40px;
	        color: #ffa5a5;
		    z-index: 1;
		    font-size: 1.2rem;
		    font-family: serif;
   			 text-shadow: 2px 2px 4px rgb(218 20 20 / 50%);">
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="model.*" %>
<%
	// セッションからユーザ情報を取得
	Login login = (session != null) ? (Login) session.getAttribute("login") : null;

	// ログインしているかどうかを確認
	boolean isLoggedIn = (login != null);

	if (isLoggedIn) {
	    // ログインしている場合はユーザ名を表示
	    out.println(login.getName() + "さん！");
	} else {
	    // ログインしていない場合はゲストと表示
	    out.println("ゲストさん！");
	}
%>
</div>
<header class="hamburger">
    <div class="nav">
        <input id="drawer_input" class="drawer_hidden" type="checkbox">
        <label for="drawer_input" class="drawer_open"><span></span></label>
        <nav class="nav_content">
            <ul class="nav_list">
            <% if (isLoggedIn) { %>
                <li class="nav_item"><a class="a" href="/Pet_Pathfinder/Mypage">mypage</a></li>
                <li class="nav_item"><a class="a" href="/Pet_Pathfinder/Trade">Trade</a></li>
                <li class="nav_item"><a class="a" href="/Pet_Pathfinder/Contact">contact as</a></li>
                <li class="nav_item"><a class="a" href="/Pet_Pathfinder/Logout">logout</a></li>
                <li class="nav_item"><a class="a" href="/Pet_Pathfinder/Charge">charge</a></li>
            <% }else{ %>
            	<li class="nav_item"><a class="a" href="/Pet_Pathfinder/Login">login</a></li>
                <li class="nav_item"><a class="a" href="/Pet_Pathfinder/Signup">signup</a></li>
                <li class="nav_item"><a class="a" href="/Pet_Pathfinder/Trade">Trade</a></li>
                <li class="nav_item"><a class="a" href="/Pet_Pathfinder/Contact">contact as</a></li>
            <% }; %>
            </ul>
        </nav>
    </div>
</header>
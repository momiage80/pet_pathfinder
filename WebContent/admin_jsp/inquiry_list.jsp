<%@page import="model.Inquiry"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%
	List<Inquiry> list =(List)request.getAttribute("inquiry_list");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/inquiry_list.css">
    <title>お問い合わせ一覧 </title>
</head>

<body>
    <div class="inquiry-list">
        <div class="inquiry-header">お問い合わせ一覧</div>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>USER_ID</th>
                    <th>問い合わせ内容</th>
                    <th>問い合わせ日</th>
                </tr>
            </thead>

            <tbody>
            	<%for (int i = 0; i < list.size(); i++) {%>
                <tr>
                    <td><%= list.get(i).getId() %></td>
                    <td><%= list.get(i).getUser_id() %></td>
                    <td><%= list.get(i).getContent() %></td>
                    <td><%= list.get(i).getDate() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
       <!-- <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/427aac47-5b2b-476a-a8fe" class="background-img" />-->
    </div>
    <footer>
       <form action="/Pet_Pathfinder/admin_jsp/top_menu.jsp" method="get">
        <input type="submit"  value="Xトップへ戻る" id="back"  class="back-to-top">
        </form>
    </footer>
</body>
<style>
.inquiry-header{ /*divのヘッダー*/
    background-color: #BFA04F;
    padding: 20px;
    color: #ffffff;
    font-size: 24px;

}

body {
    font-family: Arial, sans-serif;
}

.inquiry-list {
    max-width: 900px;
    margin: 0 auto;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 60px;
    padding: 40px;
}

th, td {
    border: 3px solid #ddd;
    padding: 5px;
    text-align: left;
}

th {
    background-color: #f2f2f2;
}


textarea {
    margin: 0;
    padding: 0px;
    border: none;
    width: 100%;
    height: 100%;
}

/*.background-img {
    width: 100%;
    height: auto;
    margin-top: 20px;
}*/
/*ここまでボタンの設定*/

footer {
    color: #00b3ff;
    text-decoration-line: underline;
    margin: 50px auto 20px; /* 上下左右の余白を調整 */
    width: 890px;
    cursor: pointer;
    border-top: 1px solid rgb(0, 0, 0);
    padding: 15px;
}

footer a {
    color: inherit; /* テキストの色を親要素と同じに設定 */
}

.back-to-top{
    color: blue;
    border: none;
    outline: none;
    background: transparent;
}

.back-to-top:hover{
    color: red;
    cursor:pointer
}
</style>
</html>

<%@page import="model.Prize"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%
	List<Prize> list =  (List)request.getAttribute("prize_list");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/top_menu.css">
           <title>景品一覧</title>
</head>

<body>
    <div class="gift-list">
        <div class="gift-header">景品一覧</div>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>景品名</th>
                    <th>詳細</th>
                    <th>コイン</th>
                    <th>削除</th>
                </tr>
            </thead>

            <tbody>
            	<%for (int i = 0; i < list.size(); i++) {%>
	                <tr>
	                    <td><%= list.get(i).getId() %></td>
	                    <td><%= list.get(i).getName() %></td>
	                    <td><%= list.get(i).getDetaile() %></td>
	                    <td><%= list.get(i).getCost() %></td>
	                    <td>
	                        <form action="gift_confirm_delete.jsp" method="post">
	                            <input type="submit"  value="削除" id="delete"  class="image-with-delete">
	                        </form>
	                    </td>
	                </tr>
                <%}%>
            </tbody>
        </table>
		<form action="gift_settings.jsp" method="get">
		    <input type="submit"  value="追加" id="add"  class="image-with-addition">
		</form>
    </div>
    <footer>
        <a href="/Pet_Pathfinder/admin_jsp/top_menu.jsp">
            <div class="back-to-top">×トップへ戻る</div>
        </a>
    </footer>

</body>
<style>
.gift-header{
    background-color: #0e16b3ce;
    padding: 20px;
    color: #ffffff;
    font-size: 24px;

}

body {
    font-family: Arial, sans-serif;
}

.gift-list {
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
    padding: 10px;
    text-align: left;
}

th {
    background-color: #f2f2f2;
}

/*ここからボタンの設定*/
.delete-button {
    background-color: #ff0000;
    color: #fff;
    padding: 8px 6px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    align-items: center;
    text-decoration: none; /* 下線をなくす */
}
.delete-button img {
    width: 14px; /* 画像の幅を調整 */
    height: 14px; /* 画像の高さを調整 */
}
.image-with-delete {
    border-radius: 10px 10px 10px 10px;
    border: none;
    background-color: red;
    color: white;
    width:80px;
    height:40px;
    font-size: 20px;
    margin-right: 5px;
}

.image-with-delete:hover{
    cursor:pointer;
    opacity: 0.5;
}

.addition-button {
    background-color: #3ED0F0;
    color: #fff;
    font-size: 18px;
    padding: 8px 8px;
    border: none;
    border-radius: 5px;
    cursor: pointer; /* カーソルをポインターに変更 */
    text-decoration: none; /* 下線をなくす */
    align-items: center; /* 子要素を中央に配置 */
}

.addition-button img {
    width: 17px; /* 画像の幅を調整 */
    height: 17px; /* 画像の高さを調整 */
}

.image-with-addition {
    margin-right: 3px; /* 画像の右側に3pxの余白を追加 */
    margin-top: 25px; /* 余白の上部をリセット */
    border-radius: 10px 10px 10px 10px;
    border: none;
    background-color: blue;
    color: white;
    width:80px;
    height:40px;
    font-size: 20px;
}
.image-with-addition:hover{
    cursor:pointer;
    opacity: 0.5;
}


footer {
    color: #00b2ff;
    text-decoration-line: underline;
    margin: 50px auto 20px; /* 上下左右の余白を調整 */
    width: 890px;
    cursor: pointer;
    border-top: 1px solid rgb(0, 0, 0);
    padding: 15px;
}

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
</style>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%
	String error = (request.getParameter("error") != null) ? request.getParameter("error") : null;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../adminhtml/css/admin_settings.css">
        <title>管理者設定</title>
</head>

<body>
    <div class="settings-container">
        <div class="settings-header">管理者設定-パスワード変更-</div>
        <div class="explanation-header">
            新しく設定するパスワードを入力し、{パスワード変更}ボタンを押してください。
            パスワードには、八桁の半角英数字を入力してください。
        </div>

        <div class="settings-fields">
        	<% if(error != null){ %>
        	<h1 style="color: red">あなたにパスワードを変更する資格はありません。<br>今すぐここから立ち去りなさい。</h1>
        	<% } %>
            <form action="/Pet_Pathfinder/admin" method="post">
	            <div class="field_pass">前のパスワード</div>
	            <div>
	                <input type="password" name="old_password" maxlength="8" value="" placeholder="">
	            </div>

	            <div class="field_new_pass">新しいパスワード(八桁半角英数字)</div>
	            <div>
	                <input type="password" name="new_password" maxlength="8" value="" placeholder="">
	            </div>

	            <div class="field_again_pass">新しいパスワードの再入力</div>
	            <div>
	                <input type="password" name="confirm_password" maxlength="8" value="" placeholder="">
	            </div>

	            <div class="password-button">
	                <input type="submit"  value="パスワード変更" id="change"  class="change-button">
	                <a href="/Pet_Pathfinder/admin_jsp/top_menu.jsp" class="cancel-button" id="cancel" value="キャンセル" style="text-decoration: none;">キャンセル</a>
	            </div>
            </form>
        </div>
</body>
<style>
.settings-header{ /*divのヘッダー*/
    background-color: #4FABBF;
    padding: 20px;
    color: #ffffff;
    font-size: 24px;
}

.settings-container {
    margin: 0 auto;
    width: 700px;
    box-sizing: border-box;
    margin-left: auto;
}

@media (max-width: 991px) {
    .settings-container {
        max-width: 100%;
    }
}

.explanation-header {
    color: #000;
    margin-top: 35px;
    width: 600px;
}

@media (max-width: 991px) {
    .settings-header {
        line-height: 32px;
    }
}

.settings-fields {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center; /* 横方向の中央寄せ */
    width: 100%;
    margin: 30px 0;
}

.field_pass {
    color: #000;
    font: 400 16px/24px Inter, sans-serif;
    margin-top: 20px;
    margin-right: 195px;
}

.field_new_pass {
    color: #000;
    font: 400 16px/24px Inter, sans-serif;
    margin-top: 20px;
    margin-right: 45px;
}

.field_again_pass {
    color: #000;
    font: 400 16px/24px Inter, sans-serif;
    margin-top: 20px;
    margin-right: 110px;
}

.password-button {
    color: #fff;
    margin-top: 20px;
    margin-bottom: 20px;
    padding: 20px 20px 15px;
}

.change-button {
    background-color: #0075FF;
    color: #fff;
    padding: 8px 20px;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    margin-bottom: 10px; /* マージンを追加 */
}

.change-button:hover{
    cursor:pointer;
    opacity:0.5;
}

.cancel-button {
    background-color: #89AAD1;
    color: #fff;
    padding: 8px 20px;
    border: none;
    border-radius: 10px;
    cursor: pointer;
}

.cancel-button:hover{
    cursor:pointer;
    opacity:0.5;
}

input[type="password"] {
    width: 300px; /* 例: 適切な幅に調整してください */
    max-width: 100%; /* 親要素に収まるようにする */
    padding: 5px; /* 適切な余白を設定してください */
    box-sizing: border-box; /* paddingが幅に含まれるようにする */
    font-size: 16px; /* 例: 適切なフォントサイズに調整してください */
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../adminhtml/css/confirm.css">
    <title>パスワード変更確認</title>
</head>
<body>
    <div class="confirm-list">
        <div class="confirm-header">パスワードを変更しますか?</div>
        <div class="confirm">
            <form action="settings_complete.jsp" method="post">
                <input type="submit"  value="-パスワードを変更する-" id="delete"  class="confidence">
            </form>
            <form action="admin_settings.jsp"" method="get">
                <input type="submit"  value="-パスワード変更画面に戻る-" id="back"  class="denial">
            </form>


        </div>
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

.cancel-button {
    background-color: #89AAD1;
    color: #fff;
    padding: 8px 20px;
    border: none;
    border-radius: 10px;
    cursor: pointer;
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

.confidence{
    padding: 20px 20px;
    color: red;
    border: none;
    outline: none;
    background: transparent;
}

.confidence:hover{
    color: black;
    cursor:pointer
}

.denial{
    padding: 20px 20px;
    color: blue;
    border: none;
    outline: none;
    background: transparent;
}

.denial:hover{
    color: black;
    cursor:pointer
}

</style>
</html>

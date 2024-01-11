<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/top_menu.css">
        <title>ログイン画面</title>
</head>

<body>
    <div class="login-container">
        <div class="login-header">ログイン画面</div>
        <div class="login-fields">

            <div class="field_ID">管理者ID</div>
            <div class="divider">
                <input type="text" name="login-text" maxlength="10" value="" placeholder="">
            </div>

            <div class="field_pass">パスワード</div>
            <div class="divider">
                <input type="text" name="login-text" maxlength="8" value="" placeholder="">
            </div>

            <div class="login-button">
                <a href="top_menu.jsp" value="ログイン" name="login" class="icon-button" style="text-decoration: none">ログイン</a>
            </div>
        </div>
</body>
<style>
.login-container {
    background-color: rgba(217, 217, 217, 0.6);
    display: flex;
    flex-direction: column;
    align-items: center;
    margin: auto;
    margin-top: 80px;
    padding: 20px;
    width: 600px;
    box-sizing: border-box;
    margin-left: auto;
}

@media (max-width: 991px) {
    .login-container {
        max-width: 100%;
    }
}

.login-header {
    color: #000;
    text-align: center;
    align-self: center;
    max-width: 300px;
    font: 400 30px/40px Inter, sans-serif;
}

@media (max-width: 991px) {
    .login-header {
        font-size: 24px;
        line-height: 32px;
    }
}

.login-fields {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center; /* 横方向の中央寄せ */
    width: 100%;
    margin: 20px 0;
}

.field_ID {
    color: #000;
    font: 400 18px/26px Inter, sans-serif;
    margin-top: 10px;
    margin-right: 200px;
}

.field_pass {
    color: #000;
    font: 400 18px/26px Inter, sans-serif;
    margin-top: 20px;
    margin-right: 180px;
}

.login-button {
    color: #fff;
    text-align: center;
    margin-top: 20px;
    width: 100%;
    max-width: 300px;
    padding: 20px 20px 15px;
}

.icon-button {
    background-color: #757272;
    color: #fff;
    padding: 10px 28px;
    border: none;
    border-radius: 10px;
    cursor: pointer;
}

input[name="login-text"] {
    width: 300px; /* 例: 適切な幅に調整してください */
    max-width: 100%; /* 親要素に収まるようにする */
    padding: 5px; /* 適切な余白を設定してください */
    box-sizing: border-box; /* paddingが幅に含まれるようにする */
    font-size: 16px; /* 例: 適切なフォントサイズに調整してください */
}


/*button-icon {
    position: absolute;
    height: 100%;
    width: 100%;
    object-fit: cover;
    object-position: center;
}
*/

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

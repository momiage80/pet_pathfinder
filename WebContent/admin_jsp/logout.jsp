<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/completion.css">
    <title>ログアウト確認</title>
</head>

<body>
    <div class="completion-list">
        <div class="completion-header">ログアウトしました。</div>
        <div class="completion">

            <p class="confidence"><a href="admin_login.jsp" class="logout-link">ログイン画面に戻る</a></p>

        </div>
    </div>
    <footer>
    </footer>
</body>
<style>
/*選択確認画面のCSS*/
.completion-header { /*divのヘッダー*/
    padding: 10px;
    color: #fb0000;
    font-size: 20px;
}

.link {
    color:#00B2FF;
    padding: 10px 20px;
}

.logout-link {
    background-color: #757272;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    text-decoration: none; /* 下線をなくす */
}


</style>
</html>

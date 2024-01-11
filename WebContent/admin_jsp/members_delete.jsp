<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/completion.css">
    <title>会員削除</title>
</head>

<body>
    <div class="completion-list">
        <div class="completion-header">会員を削除しました。</div>
        <div class="completion">

            <form action="members_list.jsp" method="get">
                <input type="submit"  value="会員設定に戻る" id="back"  class="confidence">
            </form>

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

.confidence{
    padding: 10px 20px;
    color: blue;
    border: none;
    outline: none;
    background: transparent;
}

.confidence:hover{
    color: red;
    cursor:pointer
}

</style>
</html>

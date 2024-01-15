<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/top_menu.css">
        <title>ログインエラー</title>
</head>

<body>
   <p class="p-1">IDまたはパスワードが間違っています<br>もう一度ご確認の上、入力して下さい</p>
   <form action="admin_login.jsp" method="get">
       <input type="submit" id="back" value="入力画面へ戻る" class="back">
   </form>
</body>
<style>
body{
    background-color:rgb(190, 205, 214);
}
.p-1{
    background-color: #FFFFB9;
    color: red;
    font-size: 30px;
    width:100.9%;
    height: 100px;
    text-align:center;
    font-weight: bold;
    margin-top: -8px;
    margin-left: -8px;
    border: double 2px red;
}

.back{
    border-radius: 10px;
    border:0.1px solid white;
    width:250px;
    height:100px;
    background-color: rgb(190, 205, 214);
    color: white;
    font-size: 30px;
    margin-top: 50px;
    margin-left:40%;
    transition: box-shadow 0.5s;
    box-shadow:
        10px 10px 30px rgba(18, 47, 61, 0.5),
        -10px -10px 30px rgba(248, 253, 255, 0.9),
        inset 10px 10px 30px transparent,
        inset -10px -10px 30px transparent;
}

.back:hover{
    transition:0.5s;
    color:black;
    box-shadow:
        10px 10px 30px transparent,
        -10px -10px 30px transparent,
        inset 10px 10px 30px rgba(18, 47, 61, 0.5),
        inset -10px -10px 30px rgba(248, 253, 255, 0.9);
}
</style>
</html>
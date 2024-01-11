<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/members_list.css">
    <title>会員一覧 </title>
</head>

<body>
    <div class="member-list">
        <div class="member-header">会員一覧</div>
        <table>
            <thead>
                <tr>
                    <th>ユーザID</th>
                    <th>ユーザ名</th>
                    <th>パスワード</th>
                    <th>メールアドレス</th>
                    <th>無償コイン</th>
                    <th>有償コイン</th>
                    <th>削除</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td>abcdefghi</td>
                    <td>山田 太郎</td>
                    <td>abcdefgh</td>
                    <td><a href="mailto:user01@email.com" target="_blank">user01@email.com</a></td>
                    <td>3100コイン</td>
                    <td>4000コイン</td>
                    <td>
                        <a href="members_confirm_delete.jsp" value="削除" name="delete" class="icon-button">
                            <img src="image/dustbox.png" alt="削除" class="image-with-margin">削除
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>ihgfedcba</td>
                    <td>一二 三四</td>
                    <td>12345678</td>
                    <td><a href="mailto:user02@email.com" target="_blank">user02@email.com</a></td>
                    <td>1400コイン</td>
                    <td>2100コイン</td>
                    <td>
                        <a href="members_confirm_delete.jsp" value="削除" name="delete" class="icon-button">
                            <img src="image/dustbox.png" alt="削除" class="image-with-margin">削除
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>
       <!-- <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/427aac47-5b2b-476a-a8fe" class="background-img" />-->
    </div>
    <footer>
        <form action="top_menu.jsp" method="get">
        <input type="submit"  value="Xトップへ戻る" id="back"  class="back-to-top">
        </form>
    </footer>

</body>
<style>
.member-header{ /*divのヘッダー*/
    background-color: #e3bc32;
    padding: 20px;
    color: #ffffff;
    font-size: 24px;
}

body {
    font-family: Arial, sans-serif;
}

.member-list {
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
.icon-button {
    background-color: #ff0000;
    color: #fff;
    padding: 8px 6px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    align-items: center;
    text-decoration: none; /* 下線をなくす */
}

.icon-button img {
    width: 14px; /* 画像の幅を調整 */
    height: 14px; /* 画像の高さを調整 */
}

.image-with-margin {
    margin-right: 2px;
}

/*.background-img {
    width: 100%;
    height: auto;
    margin-top: 20px;
}*/

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

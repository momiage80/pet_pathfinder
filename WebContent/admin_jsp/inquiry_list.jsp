<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
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
                    <th>タイトル</th>
                    <th>氏名</th>
                    <th>メールアドレス</th>
                    <th>問い合わせ内容</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td>abcdefghi</td>
                    <td>山田 太郎</td>
                    <td><a href="mailto:user01@email.com" target="_blank">user01@email.com</a></td>
                    <td><textarea cols="20（横幅）" rows="2（高さ）" name="mail"></textarea></td>
                </tr>
                <tr>
                    <td>ihgfedcba</td>
                    <td>一二 三四</td>
                    <td><a href="mailto:user02@email.com" target="_blank">user02@email.com</a></td>
                    <td><textarea cols="20（横幅）" rows="2（高さ）" name="mail"></textarea></td>
                </tr>
            </tbody>
        </table>
       <!-- <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/427aac47-5b2b-476a-a8fe" class="background-img" />-->
    </div>
    <footer>
        <a href="top_menu.jsp">
        <div class="back-to-top">×トップへ戻る</div>
        </a>
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
</style>
</html>

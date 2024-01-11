<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/trading_history.css">
    <title>取引履歴</title>
</head>

<body>
    <div class="trading-list">
        <div class="trading-header">取引履歴</div>
        <table>
            <thead>
                <tr>
                    <th>トランザクションID</th>
                    <th>ユーザID</th>
                    <th>トランザクション<br>タイプ</th>
                    <th>トランザクション<br>金額</th>
                    <th>無償コイン<br>残高</th>
                    <th>有償コイン<br>残高</th>
                    <th>トランザクション<br>日時</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>12345678</td>
                    <td>abcdefghi</td>
                    <td>入金</td>
                    <td>+3000コイン</td>
                    <td>3100コイン</td>
                    <td>4000コイン</td>
                    <td>2023年11月28日15時6分</td>
                </tr>
                <tr>
                    <td>87654321</td>
                    <td>ihfgedcba</td>
                    <td>出金</td>
                    <td>-3000コイン</td>
                    <td>1500コイン</td>
                    <td>2000コイン</td>
                    <td>2023年11月28日15時5分</td>
                </tr>
                <tr>
                    <td>24681012</td>
                    <td>ihfgedcba</td>
                    <td>購入</td>
                    <td>-100コイン</td>
                    <td>4500コイン</td>
                    <td>2000コイン</td>
                    <td>2023年11月28日13時24分</td>
                </tr>
            </tbody>
        </table>
    </div>

    <footer>
        <form action="top_menu.jsp" method="get">
        <input type="submit"  value="Xトップへ戻る" id="back"  class="back-to-top">
        </form>
    </footer>
</body>
<style>
.trading-header{ /*divのヘッダー*/
    background-color: #0000008a;
    padding: 20px;
    color: #ffffff;
    font-size: 24px;
}

body {
    font-family: Arial, sans-serif;
}

.trading-list {
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
    font-size: 15px;
}

tr th {
    text-align: center;
}

/* 奇数行の背景色を変更するスタイルを追加 */
tbody tr:nth-child(odd) {
    background-color: #c9c6c6;
    color: #ffffff;
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

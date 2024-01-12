<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../adminhtml/css/confirm.css">
<title>景品一覧:追加</title>
</head>

<body>
    <div class="gift-set">
        <div class="giftset-header">景品一覧:追加</div>

        <form action="gift_plus.jsp" method="post">
                <input type="submit"  value="新規追加" id="add"  class="additionset-button">
        <table>
            <thead>
                <tr>
                    <th>画像</th>
                    <th>名前</th>
                    <th>詳細</th>
                    <th>コイン</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td>
                        <label for="file" class="file-label"></label>
                        <input type="file" id="file" name="file" class="file-input" accept=".jpg, .jpeg, .png">
                    </td>
                    <td>ぬいぐるみ</td>
                    <td>猫のぬいぐるみです</td>
                    <td>100コイン</td>
                </tr>
            </tbody>
        </table>
        </form>
    </div>
    <footer>
        <form action="top_menu.jsp" method="get">
        <input type="submit"  value="Xトップへ戻る" id="back"  class="back-to-top">
        </form>
    </footer>
</body>
<style>
.giftset-header{
    background-color: #0e16b3ce;
    padding: 20px;
    color: #ffffff;
    font-size: 24px;

}

body {
    font-family: Arial, sans-serif;
}

.gift-set {
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
    border: 1px solid #ddd;
    padding: 10px;
    text-align: left;
}

th {
    background-color: #C0C0C0;
}

/*ここからボタンの設定*/

.additionset-button {
    background-color: #3ED0F0;
    color: #fff;
    font-size: 18px;
    padding: 12px 14px;
    border: none;
    border-radius: 25px;
    cursor: pointer; /* カーソルをポインターに変更 */
    text-decoration: none; /* 下線をなくす */
    /* 他のスタイルプロパティ... */
    position: relative;
    top: 30px; /* 例: 上方向に10px移動 */
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

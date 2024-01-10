<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../adminhtml/css/confirm.css">
         <title>景品削除確認</title>
</head>

<body>
    <div class="confirm-list">
        <div class="confirm-header">景品を削除しますか?</div>
        <div class="confirm">

            <p class="confidence"><a href="gift_delete.html" class="confidence-link">景品を削除する</a></p>
            <p class="denial"><a href="gift_list.html" class="denial-link">景品設定に戻る</a></p>

        </div>
    </div>
</body>
<style>
/*選択確認画面のCSS*/
.confirm-header { /*divのヘッダー*/
    padding: 20px;
    color: #fb0000;
    font-size: 24px;
    text-align: center;
}

body {
    font-family: Arial, sans-serif;
}

.confirm {
    text-align: center; /* .confirm 内の要素を中央に配置 */
    margin-top: 30px;
}

.confirm p {
    display: inline-block; /* または 'inline' を使用しても良いです */
}

/*.confirm p a {/* リンクの色を青に変更
    text-decoration: none; /* リンクの下線を削除
}


.confirm p a:hover {
    text-decoration: underline; /* ホバー時にリンクの下線を表示
}
*/

.confirm .confidence a {
    /* 赤字に対するスタイル */
    display: inline-block;
    margin-right: 50px;
    font-size: 16px;
    color: #FF0000; /* ログアウトのテキストの色を赤に変更 */
}

.confirm .denial a {
    /* 青字に対するスタイル */
    display: inline-block;
    margin-left: 50px;
    font-size: 16px;
    color: #00B2FF; /* メニューに戻るテキストの色を青に変更 */
}

</style>
</html>

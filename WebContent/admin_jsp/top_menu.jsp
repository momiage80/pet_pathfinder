<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/top_menu.css">
    <title>管理者画面</title>
</head>

<body>
    <header>
        <h1>トップメニュー</h1>
         <form action="logout_confirm.jsp" method="post">
            <p>
            <div class="a">ログアウト
              <input type="image" src="image/logout.png" alt="ログアウト" id="logout"  class="a-1">
            </div>
            </p>
         </form>
    </header>

    <!-- HTML -->
    <nav>
    <ul class="menu-list">
        <form action="../member" method="get">
        <li><div class="a">
              <input type="image" src="image/member.png" alt="会員一覧" id="member"  class="img">
            </div>
            <div class="menu-item">会員一覧</div>
        </li>
        </form>

        <form action="../item" method="get">
        <li><div class="a">
              <input type="image" src="image/gift.jpeg" alt="景品設定" id="item"  class="img">
              <div class="menu-item">景品設定</div>
            </div>
        </li>
        </form>

        <form action="../inquiry" method="get">
        <li><div class="a">
              <input type="image" src="image/inquiry.jpg" alt="お問合せ一覧" id="inquiry"  class="img">
              <div class="menu-item">お問合せ一覧</div>
            </div>
        </li>
        </form>

        <form action="../admin" method="get">
        <li><div class="a">
              <input type="image" src="image/settings.jpg" alt="管理者設定" id="admin"  class="img">
              <div class="menu-item">管理者設定</div>
            </div>
        </li>
        </form>

        <form action="../transaction" method="get">
        <li><div class="a">
              <input type="image" src="image/trading.jpg" alt="取引履歴" id="transaction"  class="img">
              <div class="menu-item">取引履歴</div>
            </div>
        </li>
        </form>
    </ul>
    </nav>

    <footer>

    </footer>

</body>
<style>

/*nav h1 {
    text-align: center;
    padding: 10px 0;
}*/

header {
    background-color: #4FABBF;
    color: #ffffff;
    margin-top: -10px;
}

header p {
    text-align: right; /* テキストを右寄せにする */
}

header p .a {
    display: inline-block; /* インラインブロック要素にする */
}

header p .a .img {
    width: 20px; /* 画像の幅を設定 */
    height: auto; /* 高さを自動調整 */
    vertical-align: middle; /* 画像をテキストと垂直方向に中央揃え */
}

.a {
    color: #2600ff; /* ここに適切なカラーコードを指定 */
    text-decoration: none; /* リンクの下線を非表示にする場合 */
}

.a:hover {
    color: #2600ff; /* ホバー時の色を指定 */
}

.menu-list {
    text-align: center; /* テキストを中央揃えにする */
    line-height: 10px;/* テキストの垂直方向の位置調整 */
    /* または
    vertical-align: middle;
    */
}

.menu-list li {
    position: relative;/* 画像を親要素に合わせる */
}

.menu-item {
    height:100px;
    width:100px;
    position: absolute;
    top: 125%; /* 画像の下に配置 */
    left: 160%; /* 画像の中央に配置 */
    transform: translate(-50%, -50%); /* 中央揃えのための変換 */
    text-align: center;
    color: #0047FF; /* テキストの色を設定（任意） */
    font-size: 14px; /* テキストのフォントサイズを設定（任意） */

    opacity:0;
    transition: opacity 0.1s ease-in-out; /* ホバーエフェクト用のトランジション */
}

/* メニューアイテムのホバーエフェクト */
.menu-list li:hover .menu-item {
    opacity: 1;
}

.menu-list li:hover .img {
    transform: scale(1.1);
}

nav ul.menu-list {
    display: flex;
    justify-content: space-around;
    list-style: none; /* リストのデフォルトのマーカーを非表示 */
    padding: 50px;
}

nav ul.menu-list li {
    width: 30%; /* 二列にするために各項目の幅を調整 */
    box-sizing: border-box;
    margin-bottom: 10px; /* 項目間の余白を追加 */
    }

nav ul.menu-list .a {
    display: block;
    text-align: center;
    text-decoration: none;
}

nav ul.menu-list .img {
    width: 100px; /* 画像の幅を100%に設定 */
    height: 100px;; /* 高さを自動調整 */
    border: 26px solid #24aea783; /* 画像にボーダーを追加 */
    border-radius: 8px; /* 画像に角丸を追加 */
    transition: transform 0.3s ease-in-out; /* ホバーエフェクト用のトランジション */
}

nav ul.menu-list .img:hover {
    transform: scale(1.1); /* ホバー時に拡大するエフェクト */
}

.a-1 {
    display: inline-block; /* インラインブロック要素にする */
}

.a-1{
    width: 20px; /* 画像の幅を設定 */
    height: auto; /* 高さを自動調整 */
    vertical-align: middle; /* 画像をテキストと垂直方向に中央揃え */
}

.a-1 {
    color: #2600ff; /* ここに適切なカラーコードを指定 */
    text-decoration: none; /* リンクの下線を非表示にする場合 */
}

.a-1:hover {
    color: #2600ff; /* ホバー時の色を指定 */
}

</style>
</html>


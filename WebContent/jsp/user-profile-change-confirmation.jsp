<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="object-1">
        <header class="hamburger">
            <div class="nav">
                <input id="drawer_input" class="drawer_hidden" type="checkbox">
                <label for="drawer_input" class="drawer_open"><span></span></label>
                <nav class="nav_content">
                    <ul class="nav_list">
                        <li class="nav_item"><a href="PPF_login.html">login</a></li>
                        <li class="nav_item"><a href="PPF_Signup.html">signup</a></li>
                        <li class="nav_item"><a href="PPF_mypage.html">mypage</a></li>
                        <li class="nav_item"><a href="PPF_GiftTop.html">gift</a></li>
                        <li class="nav_item"><a href="PPF_ContactAsTop.html">contact as</a></li>
                        <li class="nav_item"><a href="PPF_logout.html">logout</a></li>
                        <li class="nav_item"><a href="PPF_ChargeTop.html">charge</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <div class="object-2">
            <div class="object-3">
	            <div class="object-4">
	                <div class="column">
		                <div class="object-5">
		                    <div class="object-6">
		                        <a href="#" class="button_title">Pet PathFinder</a>
		                    </div>
		                    <div class="object-7">
		                    	<!-- ここの文字を書き換える -------------------------------------------------------->
			                    <div class="object-8">ユーザプロフィール<br>変更確認</div>
		                    </div>
		                </div>
	                </div>
	                <div class="column-2">
	                <div class="object-10">
	                	<!-- ここにヘッダー画像のURLを記述 ---------------------------------------------------->
	                    <img
	                    loading="lazy"
	                    srcset="../img/user-profile-change.png"
	                    class="img"
	                    />
	                </div>
	                </div>
	            </div>
            </div>
            <!-- このメインの部分を入れ替える（CSSも） -------------------------------------------------------->
            <img src="../img/user-profile-change-com-a.png"  class="img-a">
            <img src="../img/user-profile-change-com-d.png"  class="img-b">
            <!-- 変更前 -->
            <img src="../img/user-profile-change-com-e.png"  class="img-c">
            <img src="../img/user-profile-change-com-b.png"  class="img-d">
            <p class="p-1">表示名</p>
            <div class="img-f"></div>
            <p class="p-2">メールアドレス</p>
            <div class="img-g"></div>
            <p class="p-3">一言コメント</p>
            <div class="img-h"></div>
            <!-- 変更後 -->
            <img src="../img/user-profile-change-com-f.png"  class="img-c">
            <img src="../img/user-profile-change-com-c.png"  class="img-d">
            <p class="p-1">表示名</p>
            <div class="img-f"></div>
            <p class="p-2">メールアドレス</p>
            <div class="img-g"></div>
            <p class="p-3">一言コメント</p>
            <div class="img-h"></div>
            <!-- ボタン -->
            <form action="user-profile-change.jsp" method="get">
            <input type="submit"  id="back"  name="back" value="戻る" class="box-1">
            </form>

            <form action="user-profile-change-completion.jsp" method="get">
            <input type="submit"  id="completion"  name="completion" value="変更確定" class="box-2">
            </form>
            <!-- ここまで入れ替える ------------------------------------------------------------------------->
        </div>
    </div>
    <jsp:include page="footer.jsp" />
    <style>
    	/*ここからヘッダー
    	ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー*/
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .page {
            background-color: #fff;
            display: flex;
            flex-direction: column;
        }
        .object-2 {
            display: flex;
            width: 100%;
            padding-left: 60px;
            flex-direction: column;
        }
        @media (max-width: 991px) {
            .object-2 {
            max-width: 100%;
            padding-left: 20px;
            }
        }
        .object-3 {
        }
        @media (max-width: 991px) {
            .object-3 {
            max-width: 100%;
            }
        }
        .object-4 {
            gap: 20px;
            display: flex;
            height: 661px;
        }
        @media (max-width: 991px) {
            .object-4 {
            flex-direction: column;
            align-items: stretch;
            gap: 0px;
            }
        }
        .column {
		    display: flex;
		    flex-direction: column;
		    line-height: normal;
		    width: 20%;
		    margin-left: 0px;
		    flex-wrap: nowrap;
		    justify-content: flex-start;
		}
        @media (max-width: 991px) {
            .column {
            width: 100%;
            }
        }
        .object-5 {
            display: flex;
            flex-direction: column;
        }
        @media (max-width: 991px) {
            .object-5 {
            margin-top: 40px;
            }
        }
        .object-6 {
            color: #000;
            padding-top: 30px;
            text-align: center;
            font: 400 32px/37px Yeseva One, sans-serif;
        }
        .object-7 {
            display: flex;
            margin-top: 183px;
            padding-left: 80px;
            flex-direction: column;
            align-items: start;
        }
        @media (max-width: 991px) {
            .object-7 {
            margin-top: 40px;
            padding-left: 20px;
            }
        }
        .object-8 {
            margin-left:-200px;
            width:500px;
            color: #000;
            text-align: center;
            font: 700 30px/50px Shippori Mincho B1, -apple-system, Roboto, Helvetica,
            sans-serif;
        }
        @media (max-width: 991px) {
            .object-8 {
            margin-left: 9px;
            font-size: 40px;
            line-height: 65px;
            }
        }
        .column-2 {
            display: flex;
            flex-direction: column;
            line-height: normal;
            width: 80%;
            margin-left: 20px;
        }
        @media (max-width: 991px) {
            .column-2 {
            width: 100%;
            }
        }
        .object-10 {
            overflow: hidden;
            position: relative;
            min-height: 100%;
            flex-grow: 1;
        }
        @media (max-width: 991px) {
            .object-10 {
            max-width: 100%;
            margin-top: 33px;
            }
        }
        .img {
            position: absolute;
            height: 80%;
            width: 100%;
            object-fit: cover;
            object-position: center;
        }
        .img-2 {
            aspect-ratio: 1.67;
            object-fit: contain;
            object-position: center;
            width: 80px;
            fill: #fff;
            box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25) inset;
            overflow: hidden;
            max-width: 100%;
            margin: 0 16px 409px 0;
        }
        @media (max-width: 991px) {
            .img-2 {
            margin: 0 10px 40px 0;
            }
        }
        /*ここからメイン
        ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー*/
         .div-9 {
          justify-content: center;
          color: #fff;
          max-width: 1485px;
          border: 1px solid #000;
          box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
          background-color: #000;
          align-self: stretch;
          width: 100%;
          align-items: start;
          padding: 31px 20px;
          font: 400 48px/60px Inder, sans-serif;
        }
        @media (max-width: 991px) {
          .div-9 {
            max-width: 100%;
            font-size: 40px;
            line-height: 56px;
          }
        }
        a{
            width:200px;
            height:150px;
            background: white;
            /*border:none;*/
        }
        .img-a{
            margin-top:-132.5px;
            margin-left:-60px;
        }
        .img-b{
            margin-top:-2719.5px;
            margin-left:-60px;
        }
        .img-c{
            margin-top:100px;
            margin-left:-60px;
        }
        .img-d{
            margin-top: -700px;
            margin-left:0px;
            width:400px;
            height:400px;
        }
        .p-1{
            margin-top:-500px;
            margin-left:600px;
            font-size:40px;
        }
        .img-f{
            margin-bottom:20px;
            margin-left:600px;
            width:500px;
            height:70px;
            background-color: white;
            border-radius:5%;
            border: solid 1px black;
        }
        .p-2{
            margin-left:600px;
            font-size:40px;
        }
        .img-g{
            margin-bottom:20px;
            margin-left:600px;
            width:500px;
            height:70px;
            background-color: white;
            border-radius:5%;
            border: solid 1px black;
        }
        .p-3{
            margin-left:600px;
            font-size:40px;
        }
        .img-h{
            margin-left:600px;
            margin-bottom: 200px;
            width:500px;
            height:300px;
            background-color: white;
            border-radius:5%;
            border: solid 1px black;
        }
        .box-1{
            width:400px;
            height:100px;
            background-color: #58BBFF;
            border: solid 2px white;
            font-size:60px;
            font-weight:bold;
            color:white;
            opacity: 70%;
            margin-top: 100px;
            margin-left: 300px;
            box-shadow: 0 10px 25px 0 rgba(0, 0, 0, .5);
            margin-bottom: 14px;
        }
        .box-1:hover{
            opacity:30%;
        }
        .box-2{
            width:400px;
            height:100px;
            background-color: red;
            border: solid 2px white;
            color: white;
            font-size:60px;
            font-weight:bold;
            opacity: 70%;
            margin-top: -115px;
            margin-left: 750px;
            box-shadow: 0 10px 25px 0 rgba(0, 0, 0, .5);
            margin-bottom: 137px;
        }
        .box-2:hover{
            opacity:30%;
        }
		/*ここからハンバーガー
		ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー*/
        .hamburger{
        	position: absolute;
            background:#555;
            right: 22px;
		    top: 22px;
		    z-index: 1;
        }

        .drawer_hidden{
            display:none;
        }

        .drawer_open{
            display:flex;
            height: 60px;
            width:60px;
            justify-content:center;
            align-items:center;
            position: relative;
            z-index: 100;/*重なりが一番上になる*/
            cursor:pointer;
            color:#fff
        }

        .drawer_open span,
        .drawer_open span:before,
        .drawer_open span:after{
            content:'';
            display:block;
            height:3px;
            width:25px;
            border-radius:3px;
            background:#fff;
            transition:0.5s;
            position:absolute;
        }

        .drawer_open span:before{
            bottom:8px;
        }

        .drawer_open span:after{
            top:8px;
        }

        #drawer_input:checked ~ .drawer_open span{
            background:rgba(255,255,255,0);
        }

        #drawer_input:checked ~ .drawer_open span::before{
            bottom:0;
            transform: rotate(45deg);
        }

        #drawer_input:checked ~ .drawer_open span::after{
            top:0;
            transform: rotate(-45deg);
        }

        .nav_content{
            width:250px;
            height:100%;
            bottom:0px;
            text-align:center;
            margin-right:auto;
            position:fixed;
            top:0;
            left:100%;
            z-index:99;
            background:rgba(0,0,0,0.5);
            color:#fff;
            transition:.5s;

        }
		/*この記述でハンバーガーメニューを修正する。
		--------------------------------------------------------------------------------------------------*/
		.nav_list{
            list-style:none;
        }

        #drawer_input:checked ~ .nav_content{
            left:0;
        }

        .nav_item{
            font-size:25px;
            margin-top:20px;
            margin-bottom:20px;
            margin-left:20px;
            margin-right:20px;
        }
        .a{
            color:#fff;
        }
    </style>
</body>
</html>
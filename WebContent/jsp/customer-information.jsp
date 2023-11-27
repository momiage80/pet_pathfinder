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
			                    <div class="object-8">会員情報</div>
		                    </div>
		                </div>
	                </div>
	                <div class="column-2">
	                <div class="object-10">
	                	<!-- ここにヘッダー画像のURLを記述 ---------------------------------------------------->
	                    <img
	                    loading="lazy"
	                    srcset="../img/cat6.png"
	                    class="img"
	                    />
	                </div>
	                </div>
	            </div>
            </div>
            <!-- このメインの部分を入れ替える（CSSも） -------------------------------------------------------->
            <img src="../img/aki.png" class="img-a">

            <form action="userprofile.jsp" method="get">
            <p class="img-c"><input type="image" src="../img/customer-information-icon.png" id="userprofile" name="userprofile" ></p>
            </form>

            <!--<img src="../img/customer-information-icon.png" class="img-c">-->
            <img src="../img/customer-information.png" class="img-b">

            <form action="mypage.jsp" method="get">
            <p class="img-d"><input type="image" src="../img/customer-information-back.png" id="back" name="back" ></p>
            </form>

            <!--<a href="#" class="img-d"><img src="../img/customer-information-back.png" ></a>-->
            <!--<a href="#" class="img-e"><img src="../img/customer-information-delete.png" ></a>-->
            <form action="customer-information-delete.jsp" method="get" >
            <p class="img-e"><input type="image" src="../img/customer-information-delete.png" id="delete" name="delete" ></p>
            </form>

            <form action="customer-information-change.jsp" method="get" >
            <p class="img-f"><input type="image" src="../img/customer-information-change.png" id="change" name="change" ></p>
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
            color: #000;
            text-align: center;
            font: 400 30px/70px Shippori Mincho B1, -apple-system, Roboto, Helvetica,
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
            margin-top:-133px;
            margin-left:-60px;
            width:1263px;
            height:1841px;;
        }
        .img-b{
            margin-top:-1600px;
            margin-bottom:100px;
            margin-left:280px;
            width:900px;
            height:500px;;
        }
        .img-c{
            width:100px;
            height:100px;
            margin-top: -1800px;
            margin-bottom:100px;
        }
        .img-c:hover{
            opacity:0.5;
        }
        .img-d{
            margin-top:0px;
            margin-left:-10px;
            margin-bottom:0px;
            width:0px;
            height:0px;
        }
        .img-d:hover{
            opacity:0.5;
        }
        .img-e{
            margin-top:0px;
            margin-left:300px;
            margin-bottom:0px;
            width:0px;
            height:0px;
        }
        .img-e:hover{
            opacity:0.5;
        }
        .img-f{
            margin-top:0px;
            margin-left:850px;
            margin-bottom:1100px;
            width:0px;
            height:0px;
        }
        .img-f:hover{
            opacity:0.5;
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
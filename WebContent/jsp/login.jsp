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
			                    <div class="object-8">ログイン</div>
			                    <div class="object-9">login</div>
		                    </div>
		                </div>
	                </div>
	                <div class="column-2">
	                <div class="object-10">
	                	<!-- ここにヘッダー画像のURLを記述 ---------------------------------------------------->
	                    <img
	                    loading="lazy"
	                    srcset="../img/login_header_image.jpg"
	                    class="img"
	                    />
	                </div>
	                </div>
	            </div>
            </div>
            <!-- このメインの部分を入れ替える（CSSのメイン部分も入れ替える） -------------------------------------------------------->
	            <div class="main">
		            <div class="object-12">login</div>
		            <form action="Login" method="post">
			            <div class="object-13">
			                <img
			                loading="lazy"
			                srcset="https://cdn.builder.io/api/v1/image/assets/TEMP/7371d0a0-d70b-48d6-bed8-950765dd3bff?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=100 100w, https://cdn.builder.io/api/v1/image/assets/TEMP/7371d0a0-d70b-48d6-bed8-950765dd3bff?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=200 200w, https://cdn.builder.io/api/v1/image/assets/TEMP/7371d0a0-d70b-48d6-bed8-950765dd3bff?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=400 400w, https://cdn.builder.io/api/v1/image/assets/TEMP/7371d0a0-d70b-48d6-bed8-950765dd3bff?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=800 800w, https://cdn.builder.io/api/v1/image/assets/TEMP/7371d0a0-d70b-48d6-bed8-950765dd3bff?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=1200 1200w, https://cdn.builder.io/api/v1/image/assets/TEMP/7371d0a0-d70b-48d6-bed8-950765dd3bff?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=1600 1600w, https://cdn.builder.io/api/v1/image/assets/TEMP/7371d0a0-d70b-48d6-bed8-950765dd3bff?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=2000 2000w, https://cdn.builder.io/api/v1/image/assets/TEMP/7371d0a0-d70b-48d6-bed8-950765dd3bff?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&"
			                class="img-3"
			                />
			                <div class="object-14">
			                    <input type="text" class="input-name" placeholder="Your name">
			                </div>
			            </div>
			            <div class="object-15"></div>
			            <div class="object-16">
			                <img
			                loading="lazy"
			                srcset="https://cdn.builder.io/api/v1/image/assets/TEMP/a6936667-0be9-4f44-a0d4-4fcf3fbfd461?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=100 100w, https://cdn.builder.io/api/v1/image/assets/TEMP/a6936667-0be9-4f44-a0d4-4fcf3fbfd461?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=200 200w, https://cdn.builder.io/api/v1/image/assets/TEMP/a6936667-0be9-4f44-a0d4-4fcf3fbfd461?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=400 400w, https://cdn.builder.io/api/v1/image/assets/TEMP/a6936667-0be9-4f44-a0d4-4fcf3fbfd461?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=800 800w, https://cdn.builder.io/api/v1/image/assets/TEMP/a6936667-0be9-4f44-a0d4-4fcf3fbfd461?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=1200 1200w, https://cdn.builder.io/api/v1/image/assets/TEMP/a6936667-0be9-4f44-a0d4-4fcf3fbfd461?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=1600 1600w, https://cdn.builder.io/api/v1/image/assets/TEMP/a6936667-0be9-4f44-a0d4-4fcf3fbfd461?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=2000 2000w, https://cdn.builder.io/api/v1/image/assets/TEMP/a6936667-0be9-4f44-a0d4-4fcf3fbfd461?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&"
			                class="img-4"
			                />
			                <div class="object-17">
			                    <input type="password" class="input-password" placeholder="Password">
			                </div>
			            </div>
			            <div class="object-18"></div>
			            <input class="object-19" type="submit" value="login"></input>
		           	</form>
	            </div>
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
        .button_title {
        	color: #000000;
            text-decoration-line: none;
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
            font: 400 37px/70px Shippori Mincho B1, -apple-system, Roboto, Helvetica,
            sans-serif;
        }
        @media (max-width: 991px) {
            .object-8 {
            margin-left: 9px;
            font-size: 40px;
            line-height: 65px;
            }
        }
        .object-9 {
            color: #f00;
            text-align: center;
            align-self: center;
            margin-top: 56px;
            white-space: nowrap;
            font: 400 24px/35px Shippori Mincho B1, -apple-system, Roboto, Helvetica,
            sans-serif;
        }
        @media (max-width: 991px) {
            .object-9 {
            margin-top: 40px;
            white-space: initial;
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
        .main {
            border-radius: 61px;
            border: 1px solid #3e3e3e;
            background-color: #fdfdfd;
            align-self: center;
            display: flex;
            width: 585px;
            max-width: 100%;
            flex-direction: column;
            align-items: center;
            margin: 153px 0 0 31px;
            padding: 50px 80px;
            margin-bottom: 100px;
        }
        @media (max-width: 991px) {
            .object-11 {
            margin-top: 40px;
            padding: 0 20px;
            }
        }

        .object-12 {
            justify-content: flex-end;
            color: #000;
            margin-top: 72px;
            font: 700 50px/72px Noto Serif JP, -apple-system, Roboto, Helvetica,
            sans-serif;
        }
        @media (max-width: 991px) {
            .object-12 {
            font-size: 40px;
            line-height: 64px;
            margin-top: 40px;
            }
        }
        .object-13 {
            display: flex;
            margin-top: 76px;
            width: 391px;
            max-width: 100%;
            justify-content: space-between;
            gap: 20px;
        }
        @media (max-width: 991px) {
            .object-13 {
            margin-top: 40px;
            }
        }
        .img-3 {
            aspect-ratio: 0.76;
            object-fit: contain;
            object-position: center;
            width: 47px;
            overflow: hidden;
            max-width: 100%;
        }
        .input-name {
                    border: none;
                    outline: none;
                    background: transparent;
                    width: 100%;
                    font: 400 32px/46px Noto Serif JP, -apple-system, Roboto, Helvetica, sans-serif;
                    color: #838383;
        }
        .object-15 {
            background-color: #494949;
            width: 391px;
            height: 2px;
        }
        .object-16 {
            display: flex;
            margin-top: 84px;
            width: 393px;
            max-width: 100%;
            gap: 19px;
        }
        @media (max-width: 991px) {
            .object-16 {
            margin-top: 40px;
            }
        }
        .img-4 {
            aspect-ratio: 1.02;
            object-fit: contain;
            object-position: center;
            width: 58px;
            overflow: hidden;
            max-width: 100%;
        }
        .input-password {
                border: none;
                outline: none;
                background: transparent;
                width: 100%;
                font: 400 32px/46px Noto Serif JP, -apple-system, Roboto, Helvetica, sans-serif;
                color: #838383;
        }
        .object-18 {
            background-color: #494949;
            margin-top: 7px;
            width: 393px;
            height: 2px;
        }
        .object-19 {
            color: #070707;
            text-align: center;
            letter-spacing: 4.5600000000000005px;
            white-space: nowrap;
            justify-content: center;
            align-items: center;
            border-radius: 20px;
            box-shadow: 8px 7px 0px 0px rgba(0, 0, 0, 0.4);
            background-color: #0cf;
            width: 391px;
            max-width: 100%;
            margin: 78px 0 56px;
            padding: 13px 20px;
            font: 400 24px/34px Noto Serif JP, -apple-system, Roboto, Helvetica,
            sans-serif;

        }
        .object-19:hover{
             opacity:0.5;
        }
        @media (max-width: 991px) {
            .object-19 {
            white-space: initial;
            margin: 40px 0;
            }
        }
        a{
            color: #000000;
            text-decoration-line: none;
        }

		/*ここからハンバーガー ※ここから下は入れ替えない
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
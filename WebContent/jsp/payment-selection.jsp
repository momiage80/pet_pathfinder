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
		<!-- ハンバーガーをインクルードで挿入してるよ ーーーーーーーーーーーーーーーーーーーー-->
    	<%@ include file="header.jsp" %>

        <div class="object-2">
            <div class="object-3">
	            <div class="object-4">
	                <div class="column">
		                <div class="object-5">
		                    <div class="object-6">
		                        <a href="/Pet_Pathfinder/jsp/top.jsp" class="button_title">Pet PathFinder</a>
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
	                    srcset="/Pet_Pathfinder/img/login_header_image.jpg"
	                    class="img"
	                    />
	                </div>
	                </div>
	            </div>
            </div>
            <!-- このメインの部分を入れ替える（CSSのメイン部分も入れ替える） -------------------------------------------------------->
	            <div class="main-content">
    <div class="center-heading">
        <h1>支払い方法選択</h1>
    </div>
    <div class="payment-options">
        <label class="payment-option" sty>
            <input type="radio" name="paymentMethod" value="creditCard" style="display: none;">
            <div class="radio-custom"></div>
            <span class="payment-label">クレジットカード</span>
        </label>

        <label class="payment-option">
            <input type="radio" name="paymentMethod" value="payPay" sty style="display: none;">
            <div class="radio-custom"></div>
            <span class="payment-label">PayPay</span>
        </label>

        <label class="payment-option">
            <input type="radio" name="paymentMethod" value="convenienceStore" style="display: none;">
            <div class="radio-custom"></div>
            <span class="payment-label">コンビニ払い</span>
        </label>

        <button type="button" onclick="submitPayment()">決定</button>
        <button type="button" onclick="goBack()">戻る</button>
    </div>
</div>
            <!-- ここまで入れ替える ------------------------------------------------------------------------->
        </div>
    </div>
    <jsp:include page="footer.jsp" />
    <style>
    	/*ここからヘッダーCSS（書き換えない）
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
        /*ここからメイン （書き換える）
        ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー*/
         body {
            background-color: #f5f5f5;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .main-content {
            text-align: center;
            margin-top: 50px;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: 0 auto;
        }

        .center-heading {
            font-size: 32px;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
        }

        .payment-options {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .payment-option {
            display: flex;
            align-items: center;
            margin: 10px 0;
            cursor: pointer;
        }

        .radio-custom {
            width: 20px;
            height: 20px;
            border-radius: 50%;
            border: 2px solid #f1800c;
            margin-right: 10px;
            position: relative;
            transition: background-color 0.3s;
        }

        .radio-custom::before {
            content: '';
            width: 10px;
            height: 10px;
            border-radius: 50%;
            background-color:#ffb859;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%) scale(0);
            transition: transform 0.3s;
        }

        input[type="radio"]:checked + .radio-custom::before {
            transform: translate(-50%, -50%) scale(1);
        }

        .payment-label {
            font-size: 18px;
            color: #333;
        }

        .payment-options button {
            margin-top: 20px;
            padding: 15px 30px;
            font-size: 18px;
            background-color: #f1800c;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .payment-options button:hover {
            background-color:#ffb859 ;
        }

        .drawer_hidden {
            display: none;
        }

        .drawer_open {
            display: flex;
            height: 60px;
            width: 60px;
            justify-content: center;
            align-items: center;
            position: relative;
            z-index: 100;
            /*重なりが一番上になる*/
            cursor: pointer;
            color: #fff;
        }

        .drawer_open span,
        .drawer_open span:before,
        .drawer_open span:after {
            content: '';
            display: block;
            height: 3px;
            width: 25px;
            border-radius: 3px;
            background: #fff;
            transition: 0.5s;
            position: absolute;
        }

        .drawer_open span:before {
            bottom: 8px;
        }

        .drawer_open span:after {
            top: 8px;
        }

        #drawer_input:checked ~ .drawer_open span {
            background: rgba(255, 255, 255, 0);
        }

        #drawer_input:checked ~ .drawer_open span::before {
            bottom: 0;
            transform: rotate(45deg);
        }

        #drawer_input:checked ~ .drawer_open span::after {
            top: 0;
            transform: rotate(-45deg);
        }

        .nav_content {
            width: 50%;
            height: 100%;
            bottom: 0px;
            text-align: center;
            margin-right: auto;
            position: fixed;
            top: 0;
            left: 100%;
            z-index: 99;
            background: rgba(0, 0, 0, 0.5);
            color: #fff;
            transition: 0.5s;
        }

        #drawer_input:checked ~ .nav_content {
            /*ここでアニメーション後のnavバーの位置を変える*/
            left: 50%;
        }

        .nav_item {
            font-size: 25px;
            margin-top: 20px;
            margin-bottom: 20px;
            margin-left: 20px;
            margin-right: 20px;
        }

        .a {
            color: #fff;
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
            width:50%;
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
        	/*ここでアニメーション後のnavバーの位置を変える*/
            left:50%;
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
            text-decoration-line: none;
        }
    </style>
</body>
</html>
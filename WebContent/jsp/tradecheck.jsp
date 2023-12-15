<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Prize prize = (Prize)session.getAttribute("prize");
	Account account = (Account)session.getAttribute("account");
	int totalCoins = account.getFree_coins() + account.getPaid_coins();
	int afterPurchase = totalCoins - prize.getCost();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="object-1">
    	<%@ include file="header.jsp" %>
        <div class="object-2">
            <div class="object-3">
	            <div class="object-4">
	                <div class="column">
		                <div class="object-5">
		                    <div class="object-6">
		                        <a href="/Pet_Pathfinder/Top" class="button_title">Pet PathFinder</a>
		                    </div>
		                    <div class="object-7">
		                    	<!-- ここの文字を書き換える -------------------------------------------------------->
			                    <div class="object-8">交換所</div>
			                    <div class="object-9">trade</div>
		                    </div>
		                </div>
	                </div>
	                <div class="column-2">
	                <div class="object-10">
	                	<!-- ここにヘッダー画像のURLを記述 ---------------------------------------------------->
	                    <img
	                    loading="lazy"
	                    srcset="/Pet_Pathfinder/img/cat5.png"
	                    class="img"
	                    />
	                </div>
	                </div>
	            </div>
            </div>
            <!-- このメインの部分を入れ替える（CSSも） -------------------------------------------------------->
            <div class="limited-title">
            	<p>交換の確認</p>
            </div>
            <% if ("minuscoin".equals(request.getParameter("error"))) { %>
			    <p style="color: red; margin: auto;">コインが不足しています。</p>
			<% } %>
            <div class="limited-parent">
	            <div class="trade-child">
					<div class="rounded-image">
						<img src="/Pet_Pathfinder/img/<%= prize.getPath() %>" alt="Circle Image">
					</div>
					<p>交換しますか？</p>
				</div>
				<div class="check-child">
					<p>コイン所持枚数</p>
					<p><%= totalCoins %>枚</p>
					<p>↓</p>
					<p style="margin-bottom: 80px;"><%= afterPurchase %>枚</p>
					<div class="parent" style="display: flex;">
						<form action="/Pet_Pathfinder/Trade" method="post">
							<input type="hidden" name="trade" value="ok">
							<input type="hidden" name="aftercoin" value="<%= afterPurchase %>">
							<input class="div-12 button" type="submit" value="はい">
						</form>
						<button class="div-12 button"><a href="javascript:history.back()">いいえ</a></button>
					</div>
				</div>
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
        .button_title{
        	color: black;
        }
        a{
            width:200px;
            height:150px;
            text-decoration: none;
            color: #fff;
        }
        .img-a{
            margin-top:-133px;
            margin-left:-60px;
            width:1263px;
            height:1841px;;
        }
        .limited-parent {
        	display: flex;
        	justify-content: space-evenly;
        	flex-wrap: wrap
        }
        .normal-parent {
        	display: flex;
        	justify-content: space-evenly;
        	flex-wrap: wrap
        }
        .child {
        	width: 50%;
        }
        .trade-child{
        	width: 45%;
        }
        .trade-child p {
        	width: 100%;
        	margin: 100px auto 100px;
        	text-align: center;
        	font-size: 2rem;
        	color: red;
        }
        .check-child{
        	width: 45%;
        }
        .check-child p {
        	width: 100%;
        	margin: auto;
        	text-align: center;
        	font-size: 2rem;
        	color: #191919;
        }
        .rounded-image {
			width: 200px; /* 任意のサイズ */
			height: 200px; /* 任意のサイズ */
			border-radius: 50%; /* 円形にするためのスタイル */
			overflow: hidden; /* 余白を非表示にするためのスタイル */
			border: 2px solid #191919;
			margin: auto;
    	}
    	.rounded-image img {
			width: 100%; /* 親要素に対して画像を100%にするためのスタイル */
			height: auto; /* アスペクト比を維持するためのスタイル */
	    }
	    .limited-title p {
	    	width: 400px;
	    	margin: 10px auto;
	    	text-align: center;
	    	padding: 0 auto;
	    	font-size: 3rem;
	    	color: red;
	    }
	    .normal-title p {
	    	width: 400px;
	    	margin: 10px auto;
	    	text-align: center;
	    	padding: 0 auto;
	    	font-size: 3rem;
	    	color: #191919;
	    }
	    form{
	    	width: 40%;
	    	white-space: nowrap;
	    }
	    input.btn {
			text-align: center;
			vertical-align: middle;
			text-decoration: none;
			width: 250px;
			font-size: 2rem;
			margin: 0 0 82px 20px;
			padding: 1rem 4rem;
			font-weight: bold;
			border-radius: 0.3rem;
			border-bottom: 7px solid #0686b2;
			background: #27acd9;
			color: #fff;
		}
		input.btn:hover {
			margin-top: 6px;
			border-bottom: 1px solid #0686b2;
			color: #fff;
		}
		.div-12 {
		    color: #fff;
		    text-align: center;
		    max-width: 200px;
		    border-radius: 16px;
		    border: 2px solid #000;
		    background-color: #98a0a8;
		    width: 1308px;
		    justify-content: center;
		    align-items: center;
		    margin: 36px 0 18px 16%;
		    font: 100 36px Inter, sans-serif;
		}
		.div-12 a{
			text-decoration: none;
			color: #fff;
		}
		.div-12:hover{
			cursor: pointer;
		}

		@media (max-width: 991px) {
		  .div-12 {
		    font-size: 40px;
		    max-width: 100%;
		  }
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
        }
    </style>
</body>
</html>
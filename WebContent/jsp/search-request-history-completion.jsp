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
		                        <a href="/Pet_Pathfinder/Top" class="button_title">Pet PathFinder</a>
		                    </div>
		                    <div class="object-7">
		                    	<!-- ここの文字を書き換える -------------------------------------------------------->
			                    <div class="object-8">捜索依頼履歴<br>変更</div>
			                    <div class="object-9">Search Request history change</div>
		                    </div>
		                </div>
	                </div>
	                <div class="column-2">
	                <div class="object-10">
	                	<!-- ここにヘッダー画像のURLを記述 ---------------------------------------------------->
	                    <img
	                    loading="lazy"
	                    srcset="../img/search-request-history-completion-a.png"
	                    class="img"
	                    />
	                </div>
	                </div>
	            </div>
            </div>
            <!-- このメインの部分を入れ替える（CSSも） -------------------------------------------------------->
	         <img loading="lazy" srcset="../img/search-request-history-completion-b.png" class="img-a" />
	         <p class="p-1">捜索依頼履歴の変更が完了致しました</p>
	         <img src="../img/search-request-history-completion-c.png" class="img-b">
	         <form action="search-request-history.jsp" method="get">
	         <input type="submit" id="search" name="search" value="履歴に戻る" class="box">
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
            margin-left:-120px;
            width:300px;
            color: #000;
            text-align: center;
            font: 400 30px/90px Shippori Mincho B1, -apple-system, Roboto, Helvetica,
            sans-serif;
        }
        @media (max-width: 991px) {
            .object-8 {
            margin-left: 8px;
            font-size: 40px;
            line-height: 65px;
            }
        }
        .object-9 {
            margin-left:-70px;
            color: #f00;
            text-align: center;
            align-self: center;
            margin-top: 56px;
            white-space: nowrap;
            font: 400 20px/35px Shippori Mincho B1, -apple-system, Roboto, Helvetica,
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
        .button_title {
        	color: black;
        }
        /*ここからメイン
        ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー*/
        .img-a{
            margin-top:-132.5px;
            margin-left: -100px;
        }
        .p-1{
            height:80px;
            margin-top: -926.5px;
            background-color: #FFFF00;
            margin-left:-60px;
            border: solid 3px black;
            color: red;
            font-size: 50px;
            text-align: center;
        }

        .img-b{
            margin-top: 150px;
            width:600px;
            height:300px;
            margin-left: 500px;
        }
        .box{
            background-color: #67FF50;
            width: 300px;
            height: 100px;
            box-shadow: 0 10px 25px 0 rgba(0, 0, 0, .5);
            margin-left:850px;
            margin-top: 150px;
            margin-bottom: 146px;
            opacity: 70%;
            font-size: 45px;
            font-weight: bold;
            border: none;
            transition: 2.0s ;
        }
        .box:hover{
            color: white;
            opacity: 30%;
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
            text-decoration-line: none;
        }
    </style>
</body>
</html>
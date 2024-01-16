<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList list = (ArrayList)session.getAttribute("chargeList");
%>
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
			                    <div class="object-8">コイン確認</div>
			                    <div class="object-9">Coin checked</div>
		                    </div>
		                </div>
	                </div>
	                <div class="column-2">
	                <div class="object-10">
	                	<!-- ここにヘッダー画像のURLを記述 ---------------------------------------------------->
	                    <img
	                    loading="lazy"
	                    srcset="/Pet_Pathfinder/img/coin-purchase-completed_dog2.jpg"
	                    class="img"
	                    />
	                </div>
	                </div>
	            </div>
            </div>
            <!-- このメインの部分を入れ替える（CSSのメイン部分も入れ替える） -------------------------------------------------------->
			<div class="div-2">内容をご確認ください</div>
			  <div class="div-3"></div>
			  <div class="div-4">
			    <div class="div-5">支払い方法</div>
			    <div class="div-6"><%= list.get(1) %></div>
			  </div>
			  <div class="div-7"></div>
			  <div class="div-8">
			    <div class="div-9">枚数</div>
			    <div class="div-10"><%= list.get(0) %>コイン</div>
			  </div>
			  <form action="Charge" method="post" style="width: 400px; margin: auto;">
			  	<input type="hidden" name="check" value="ok">
			  	<input class="div-12 button" type="submit" value="購入する">
			  </form>
			<button class="div-12 button"><a href="javascript:history.back()">戻る</a></button>
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
        /*ここからメイン （書き換える）
        ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー*/

		  .button {
		    cursor: pointer;
		    padding: 10px 20px;
		    text-align: center;
		    border-radius: 16px;
		    font: 100 36px Inter, sans-serif;
		  }

		  @media (max-width: 991px) {
		    .button {
		      font-size: 40px;
		      max-width: 100%;
		    }
		  }

		    background-color: #fff;
		    display: flex;
		    flex-direction: column;
		    padding: 50px 0;
		  }
		  .img {
		    aspect-ratio: 1;
		    object-fit: contain;
		    object-position: center;
		    width: 160px;
		    overflow: hidden;
		    align-self: center;
		    margin-top: 16px;
		    max-width: 100%;
		  }
		  .div-2 {
		    color: #000;
		    text-align: center;
		    align-self: center;
		    margin-top: 30px;
		    max-width: 690px;
		    font: 400 64px Inter, sans-serif;
		  }
		  @media (max-width: 991px) {
		    .div-2 {
		      max-width: 100%;
		      font-size: 40px;
		    }
		  }
		  .div-3 {
		    background-color: #888585;
		    align-self: stretch;
		    min-height: 1px;
		    margin-top: 54px;
		    width: 100%;
		  }
		  @media (max-width: 991px) {
		    .div-3 {
		      max-width: 100%;
		      margin-top: 40px;
		    }
		  }
		  .div-4 {
		    align-self: center;
		    display: flex;
		    margin-top: 116px;
		    width: 100%;
		    max-width: 1142px;
		    align-items: start;
		    justify-content: space-between;
		    gap: 20px;
		    padding: 0 20px;
		  }
		  @media (max-width: 991px) {
		    .div-4 {
		      max-width: 100%;
		      flex-wrap: wrap;
		      margin-top: 40px;
		    }
		  }
		  .div-5 {
		    color: #6b6b6b;
		    flex-grow: 1;
		    flex-basis: auto;
		    font: 400 36px Inter, sans-serif;
		  }
		  .div-6 {
		    color: #746565;
		    text-align: center;
		    flex-grow: 1;
		    flex-basis: auto;
		    margin-left: 378px;
		    font: 90 56px Inter, sans-serif;
		  }
		  @media (max-width: 991px) {
		    .div-6 {
		      font-size: 40px;
		    }
		  }
		  .div-7 {
		    background-color: #888585;
		    align-self: center;
		    margin-top: 16px;
		    width: 100%;
		    height: 3px;
		  }
		  @media (max-width: 991px) {
		    .div-7 {
		      max-width: 100%;
		    }
		  }
		  .div-8 {
		    align-self: center;
		    display: flex;
		    margin-top: 21px;
		    width: 100%;
		    max-width: 1191px;
		    align-items: start;
		    justify-content: space-between;
		    gap: 20px;
		    padding: 0 20px;
		  }
		  @media (max-width: 991px) {
		    .div-8 {
		      max-width: 100%;
		      flex-wrap: wrap;
		    }
		  }
		  .div-9 {
		    color: #857f7f;
		    text-align: center;
		    margin-top: 5px;
		    font: 400 36px Inter, sans-serif;
		  }
		  .div-10 {
		    color: #777474;
		    text-align: center;
		    align-self: stretch;
		    flex-basis: 378px;
		    font: 400 48px Inter, sans-serif;
		  }
		  @media (max-width: 991px) {
		    .div-10 {
		      font-size: 40px;
		    }
		  }
		  .div-11 {
		    color: #fff;
		    text-align: center;
		    max-width: 800px;
		    border-radius: 16px;
		    border: 6px solid #000;
		    background-color: #98a0a8;
		    align-self: center;
		    margin-top: 111px;
		    width: 1308px;
		    justify-content: center;
		    align-items: center;
		    font: 100 36px Inter, sans-serif;
		  }
		  .div-11 a {
		    text-decoration: none;
		    color: #fff;
		  }
		  @media (max-width: 991px) {
		    .div-11 {
		      font-size: 40px;
		      max-width: 100%;
		      margin-top: 40px;
		    }
		  }
		  .div-12 {
		    color: #fff;
		    text-align: center;
		    border-radius: 16px;
		    border: 6px solid #000;
		    background-color: #98a0a8;
		    width: 400px;
		    justify-content: center;
		    align-items: center;
		    margin: 36px auto;
		    font: 100 36px Inter, sans-serif;
		  }
		  .div-12 a{
		  text-decoration: none;
		  color: #fff;
		  }

		  @media (max-width: 991px) {
		    .div-12 {
		      font-size: 40px;
		      max-width: 100%;
		    }
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
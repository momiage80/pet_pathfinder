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
			                    <div class="object-8">マイページ</div>
			                    <div class="object-9">Mypage</div>
		                    </div>
		                </div>
	                </div>
	                <div class="column-2">
	                <div class="object-10">
	                	<!-- ここにヘッダー画像のURLを記述 ---------------------------------------------------->
	                    <img
	                    loading="lazy"
	                    srcset="img/login_header_image.jpg"
	                    class="img"
	                    />
	                </div>
	                </div>
	            </div>
            </div>
            <!-- このメインの部分を入れ替える（CSSも） -------------------------------------------------------->
	          <div class="div-9">(表示名)のマイページ</div>
          <div class="div-10">
            <div class="div-11">
              <div class="column-3">
               <a href="#" class="img-button">

                <img
                  loading="lazy"
                  srcset="https://cdn.builder.io/api/v1/image/assets/TEMP/992b5867-b159-4700-8ea1-900f3e454e62?apiKey=e12b54bb17444cfc81d9a0b4cd1be7e1&width=100 100w, https://cdn.builder.io/api/v1/image/assets/TEMP/992b5867-b159-4700-8ea1-900f3e454e62?apiKey=e12b54bb17444cfc81d9a0b4cd1be7e1&width=200 200w, https://cdn.builder.io/api/v1/image/assets/TEMP/992b5867-b159-4700-8ea1-900f3e454e62?apiKey=e12b54bb17444cfc81d9a0b4cd1be7e1&width=400 400w, https://cdn.builder.io/api/v1/image/assets/TEMP/992b5867-b159-4700-8ea1-900f3e454e62?apiKey=e12b54bb17444cfc81d9a0b4cd1be7e1&width=800 800w, https://cdn.builder.io/api/v1/image/assets/TEMP/992b5867-b159-4700-8ea1-900f3e454e62?apiKey=e12b54bb17444cfc81d9a0b4cd1be7e1&width=1200 1200w, https://cdn.builder.io/api/v1/image/assets/TEMP/992b5867-b159-4700-8ea1-900f3e454e62?apiKey=e12b54bb17444cfc81d9a0b4cd1be7e1&width=1600 1600w, https://cdn.builder.io/api/v1/image/assets/TEMP/992b5867-b159-4700-8ea1-900f3e454e62?apiKey=e12b54bb17444cfc81d9a0b4cd1be7e1&width=2000 2000w, https://cdn.builder.io/api/v1/image/assets/TEMP/992b5867-b159-4700-8ea1-900f3e454e62?apiKey=e12b54bb17444cfc81d9a0b4cd1be7e1&"
                  class="img-3"
                  alt="Image 1"
                />
              </a>
              </div>
              <div class="column-4">
              <a href="#" class="img-button">
                <div class="div-12">
                  <div class="div-13">
                    <img
                      loading="lazy"
                      src="https://cdn.builder.io/api/v1/image/assets/TEMP/95db9bf7-77e9-4ced-b3b8-9cd716345e8d?apiKey=e12b54bb17444cfc81d9a0b4cd1be7e1&"
                      class="img-4"
                      alt="Image 2"
                    />
                   </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="div-14">
            <div class="div-15">
              <div class="column-5">
               <a href="#" class="button" onclick="location.href='リンク先URL1';">
                <div class="div-16">
                <div class="div-17">捜索依頼履歴</div></div></a>
              </div>
              <div class="column-6">
               <a href="#" class="button" onclick="location.href='リンク先URL2';">
                <div class="div-18">
                <div class="div-19">ユーザプロフィール</div></div>
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
        .div-10 {
          align-self: center;
          margin-top: 41px;
          width: 100%;
          max-width: 1056px;
        }
        @media (max-width: 991px) {
          .div-10 {
            max-width: 100%;
            margin-top: 40px;
          }
        }
        .div-11 {
          gap: 20px;
          display: flex;
        }
        @media (max-width: 991px) {
          .div-11 {
            flex-direction: column;
            align-items: stretch;
            gap: 0px;
          }
        }
        .column-3 {
          display: flex;
          flex-direction: column;
          line-height: normal;
          width: 58%;
          margin-left: 0px;
        }
        @media (max-width: 991px) {
          .column-3 {
            width: 100%;
          }
        }
        .img-3 {
          aspect-ratio: 1.56;
          object-fit: contain;
          object-position: center;
          width: 100%;
          justify-content: center;
          align-items: center;
          border: 1px solid #000;
          box-shadow: 22px 22px 22px 0px rgba(0, 0, 0, 0.9);
          overflow: hidden;
          flex-grow: 1;
          margin: 0 auto;
        }
        @media (max-width: 991px) {
          .img-3 {
            max-width: 100%;
            margin-top: 40px;
          }
        }
        .column-4 {
          display: flex;
          flex-direction: column;
          line-height: normal;
          width: 42%;
          margin-left: 20px;
        }
        @media (max-width: 991px) {
          .column-4 {
            width: 100%;
          }
        }
        .div-12 {
          border: 1px solid #000;
          box-shadow: 22px 22px 22px 0px rgba(0, 0, 0, 0.9);
          background-color: #ffb673;
          display: flex;
          flex-grow: 1;
          flex-direction: column;
          width: 100%;
          margin: 15px auto 0;
        }
        @media (max-width: 991px) {
          .div-12 {
            margin-top: 40px;
          }
        }
        .div-13 {
          background-color: rgba(255, 107, 0, 0.7);
          display: flex;
          flex-direction: column;
          align-items: center;
          padding: 50px 20px;
        }
        .img-4 {
          aspect-ratio: 3.19;
          object-fit: contain;
          object-position: center;
          width: 188px;
          fill: #000;
          overflow: hidden;
          max-width: 100%;
          margin: 57px 0 37px;
        }
        @media (max-width: 991px) {
          .img-4 {
            margin-top: 40px;
          }
        }
        .div-14 {
          align-self: center;
          width: 100%;
          max-width: 1009px;
          margin: 120px 0 65px;
        }
        @media (max-width: 991px) {
          .div-14 {
            max-width: 100%;
            margin: 40px 0;
          }
        }
        .div-15 {
          gap: 20px;
          display: flex;
        }
        @media (max-width: 991px) {
          .div-15 {
            flex-direction: column;
            align-items: stretch;
            gap: 0px;
          }
        }
        .column-5 {
          display: flex;
          flex-direction: column;
          line-height: normal;
          width: 56%;
          margin-left: 0px;
        }
        @media (max-width: 991px) {
          .column-5 {
            width: 100%;
          }
        }
        .div-16 {
          border: 1px solid #000;
          box-shadow: 22px 22px 22px 0px rgba(0, 0, 0, 0.9);
          display: flex;
          flex-grow: 1;
          flex-direction: column;
          width: 100%;
          margin: 0 auto;
        }
        @media (max-width: 991px) {
          .div-16 {
            margin-top: 40px;
          }
        }
        .div-17 {
          justify-content: center;
          color: #000;
          text-align: center;
          background-color: rgba(5, 255, 0, 0.75);
          padding: 107px 10px 87px;
          font: 400 64px/77px Inter, sans-serif;
        }
        @media (max-width: 991px) {
          .div-17 {
            font-size: 40px;
            line-height: 53px;
            padding: 40px 1px 0 0;
          }
        }
        .column-6 {
          display: flex;
          flex-direction: column;
          line-height: normal;
          width: 44%;
        }
        @media (max-width: 991px) {
          .column-6 {
            width: 100%;
          }
        }
        .div-18 {
          border: 1px solid #000;
          box-shadow: 22px 22px 22px 0px rgba(0, 0, 0, 0.9);
          display: flex;
          flex-grow: 1;
          flex-direction: column;
          width: 100%;
          margin: 0 auto;
        }
        @media (max-width: 991px) {
          .div-18 {
            margin-top: 40px;
          }
        }
        .div-19 {
          justify-content: center;
          color: #000;
          text-align: center;
          background-color: rgba(238, 243, 0, 0.75);
          padding: 119px 20px 96px;
          font: 400 40px/48px Inter, sans-serif;
        }
        @media (max-width: 991px) {
          .div-19 {
            padding: 40px 3px 40px 4px;
          }
        }

        a{
            color: #000000;
            text-decoration-line: none;
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
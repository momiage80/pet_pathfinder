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
			                    <div class="object-8">捜索依頼削除</div>
			                    <div class="object-9">historydelete</div>
		                    </div>
		                </div>
	                </div>
	                <div class="column-2">
	                <div class="object-10">
	                	<!-- ここにヘッダー画像のURLを記述 ---------------------------------------------------->
						<img
    loading="lazy"
    srcset="/Pet_Pathfinder/img/cat1.png"
    class="img"
  />
	                </div>
	                </div>
	            </div>
            </div>
            <!-- このメインの部分を入れ替える（CSSのメイン部分も入れ替える） -------------------------------------------------------->
<div class="div">
  <img
    loading="lazy"
    srcset="https://cdn.builder.io/api/v1/image/assets/TEMP/c235027be9133c7a2c9f95fadc6e119f208e29915630e6dd5e78fd3e2c124bc6?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=100 100w, https://cdn.builder.io/api/v1/image/assets/TEMP/c235027be9133c7a2c9f95fadc6e119f208e29915630e6dd5e78fd3e2c124bc6?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=200 200w, https://cdn.builder.io/api/v1/image/assets/TEMP/c235027be9133c7a2c9f95fadc6e119f208e29915630e6dd5e78fd3e2c124bc6?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=400 400w, https://cdn.builder.io/api/v1/image/assets/TEMP/c235027be9133c7a2c9f95fadc6e119f208e29915630e6dd5e78fd3e2c124bc6?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=800 800w, https://cdn.builder.io/api/v1/image/assets/TEMP/c235027be9133c7a2c9f95fadc6e119f208e29915630e6dd5e78fd3e2c124bc6?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=1200 1200w, https://cdn.builder.io/api/v1/image/assets/TEMP/c235027be9133c7a2c9f95fadc6e119f208e29915630e6dd5e78fd3e2c124bc6?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=1600 1600w, https://cdn.builder.io/api/v1/image/assets/TEMP/c235027be9133c7a2c9f95fadc6e119f208e29915630e6dd5e78fd3e2c124bc6?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=2000 2000w, https://cdn.builder.io/api/v1/image/assets/TEMP/c235027be9133c7a2c9f95fadc6e119f208e29915630e6dd5e78fd3e2c124bc6?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&"
    class="img"
  />
  <div class="div-2">捜索依頼を削除しますか？</div>
  <div class="div-3">
    <img
      loading="lazy"
      src="https://cdn.builder.io/api/v1/image/assets/TEMP/459c7c73f3096a6cead0bb196866be528703b84b61941adb0aa214142f63b043?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&"
      class="img"
    />
    <div class="div-4">
      <div class="div-5">緯度：</div>
      <input type="text" class="div-6">
    </div>
    <div class="div-7">
      <div class="div-8">経度：</div>
      <input type="text" class="div-9">
    </div>
    <div class="div-10">
      <div class="div-11">メールアドレス：</div>
      <input type="text" class="div-12">
    </div>
    <div class="div-13">
      <div class="div-14">動物の種類：</div>
      <input type="text" class="div-15">
    </div>
    <div class="div-16">
      <div class="div-17">備考：</div>
      <input type="text" class="div-18">
    </div>
  </div>
  <div class="div-19">
    <div class="div-20">
      <div class="column">
        <div class="div-21"><div class="div-22">戻る</div></div>
      </div>
      <div class="column-2">
        <div class="div-23"><div class="div-24">削除する</div></div>
      </div>
    </div>
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
        .div {
    disply: flex;
    flex-direction: column;
    overflow: hidden;
    position: relative;
    display: flex;
    min-height: 1024px;
    width: 100%;
    align-items: end;
    padding: 50px 48px 50px 80px;
  }
  @media (max-width: 991px) {
    .div {
      max-width: 100%;
      padding: 0 20px;
    }
  }
  .img {
    position: absolute;
    inset: 0;
    height: 100%;
    width: 100%;
    object-fit: cover;
    object-position: center;
  }
  .div-2 {
    position: relative;
    justify-content: center;
    color: #fff;
    text-align: center;
    margin-top: 26px;
    max-width: 840px;
    font: 400 64px Inter, sans-serif;
  }
  @media (max-width: 991px) {
    .div-2 {
      max-width: 100%;
      font-size: 40px;
    }
  }
  .div-3 {
    disply: flex;
    flex-direction: column;
    position: relative;
    fill: rgba(102, 205, 170, 0.6);
    overflow: hidden;
    display: flex;
    min-height: 565px;
    margin-top: 25px;
    width: 762px;
    max-width: 100%;
    padding: 50px 33px 50px 27px;
  }
  @media (max-width: 991px) {
    .div-3 {
      padding: 0 20px;
    }
  }
  .div-4 {
    position: relative;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 20px;
    padding: 0 2px;
  }
  @media (max-width: 991px) {
    .div-4 {
      max-width: 100%;
      flex-wrap: wrap;
    }
  }
  .div-5 {
    justify-content: center;
    color: #fff;
    text-align: center;
    margin: auto 0;
    font: 400 40px Inter, sans-serif;
  }
  .div-6 {
  	font-size:28px;
    border-radius: 60px;
    background-color: #d9d9d9;
    align-self: stretch;
    display: flex;
    width: 557px;
    max-width: 100%;
    height: 62px;
    flex-direction: column;
  }
  .div-7 {
    position: relative;
    display: flex;
    margin-top: 30px;
    align-items: center;
    justify-content: space-between;
    gap: 20px;
    padding: 0 2px;
  }
  @media (max-width: 991px) {
    .div-7 {
      max-width: 100%;
      flex-wrap: wrap;
    }
  }
  .div-8 {
    justify-content: center;
    color: #fff;
    text-align: center;
    margin: auto 0;
    font: 400 40px Inter, sans-serif;
  }
  .div-9 {
  	font-size:28px;
    border-radius: 60px;
    background-color: #d9d9d9;
    align-self: stretch;
    display: flex;
    width: 557px;
    max-width: 100%;
    height: 62px;
    flex-direction: column;
  }
  .div-10 {
    position: relative;
    display: flex;
    margin-top: 33px;
    align-items: center;
    justify-content: space-between;
    gap: 20px;
    padding: 0 1px;
  }
  @media (max-width: 991px) {
    .div-10 {
      max-width: 100%;
      flex-wrap: wrap;
    }
  }
  .div-11 {
    justify-content: center;
    color: #fff;
    text-align: center;
    flex-grow: 1;
    flex-basis: auto;
    margin: auto 0;
    font: 400 32px Inter, sans-serif;
  }
  .div-12 {
  font-size:28px;
    border-radius: 60px;
    background-color: #d9d9d9;
    align-self: stretch;
    display: flex;
    width: 440px;
    max-width: 100%;
    height: 62px;
    flex-direction: column;
  }
  .div-13 {
    position: relative;
    display: flex;
    margin-top: 35px;
    align-items: center;
    justify-content: space-between;
    gap: 20px;
  }
  @media (max-width: 991px) {
    .div-13 {
      max-width: 100%;
      flex-wrap: wrap;
    }
  }
  .div-14 {
    justify-content: center;
    color: #fff;
    text-align: center;
    flex-grow: 1;
    flex-basis: auto;
    margin: auto 0;
    font: 400 40px Inter, sans-serif;
  }
  .div-15 {
  font-size:28px;
    border-radius: 60px;
    background-color: #d9d9d9;
    align-self: stretch;
    display: flex;
    width: 440px;
    max-width: 100%;
    height: 62px;
    flex-direction: column;
  }
  .div-16 {
    position: relative;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 20px;
    margin: 31px 0 27px;
    padding: 0 2px;
  }
  @media (max-width: 991px) {
    .div-16 {
      max-width: 100%;
      flex-wrap: wrap;
    }
  }
  .div-17 {
    justify-content: center;
    color: #fff;
    text-align: center;
    margin: auto 0;
    font: 400 40px Inter, sans-serif;
  }
  .div-18 {
  font-size:28px;
    border-radius: 60px;
    background-color: #d9d9d9;
    align-self: stretch;
    display: flex;
    width: 557px;
    max-width: 100%;
    height: 62px;
    flex-direction: column;
  }
  .div-19 {
    position: relative;
    width: 676px;
    max-width: 100%;
    margin: 21px 72px 52px 0;
  }
  @media (max-width: 991px) {
    .div-19 {
      margin: 0 10px 40px 0;
    }
  }
  .div-20 {
    gap: 20px;
    display: flex;
  }
  @media (max-width: 991px) {
    .div-20 {
      flex-direction: column;
      align-items: stretch;
      gap: 0px;
    }
  }
  .column {
    display: flex;
    flex-direction: column;
    line-height: normal;
    width: 51%;
    margin-left: 0px;
  }
  @media (max-width: 991px) {
    .column {
      width: 100%;
    }
  }
  .div-21 {
    position: relative;
    display: flex;
    flex-grow: 1;
    flex-direction: column;
    justify-content: center;
  }
  @media (max-width: 991px) {
    .div-21 {
      margin-top: 40px;
    }
  }
  .div-22 {
    justify-content: center;
    color: #fff;
    text-align: center;
    border: 1px solid #000;
    box-shadow: 10px 10px 10px 0px rgba(0, 0, 0, 0.5);
    background-color: rgba(255, 165, 241, 0.5);
    align-items: start;
    padding: 34px 59px;
    font: 400 96px Inter, sans-serif;
  }
  @media (max-width: 991px) {
    .div-22 {
      font-size: 40px;
      padding: 0 20px;
    }
  }
  .column-2 {
    display: flex;
    flex-direction: column;
    line-height: normal;
    width: 49%;
    margin-left: 20px;
  }
  @media (max-width: 991px) {
    .column-2 {
      width: 100%;
    }
  }
  .div-23 {
    position: relative;
    display: flex;
    flex-direction: column;
    justify-content: center;
    margin: auto 0;
  }
  @media (max-width: 991px) {
    .div-23 {
      margin-top: 40px;
    }
  }
  .div-24 {
    justify-content: center;
    color: #000;
    text-align: center;
    border: 3px solid #000;
    box-shadow: 20px 20px 20px 0px rgba(0, 0, 0, 0.5);
    background-color: #14ff00;
    padding: 33px 26px 33px 21px;
    font: 400 64px Inter, sans-serif;
  }
  @media (max-width: 991px) {
    .div-24 {
      font-size: 40px;
      padding: 0 20px;
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
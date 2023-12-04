<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>お問合せページ</title>
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
		                        <a href="#" class="button_title">Pet PathFinder</a>
		                    </div>
		                    <div class="object-7">
		                    	<!-- ここの文字を書き換える -------------------------------------------------------->
			                    <div class="object-8">お問合せ</div>
			                    <div class="object-9">contacta</div>
		                    </div>
		                </div>
	                </div>
	                <div class="column-2">
	                <div class="object-10">
	                	<!-- ここにヘッダー画像のURLを記述 ---------------------------------------------------->
	                    <img
	                    loading="lazy"
	                    srcset="/Pet_Pathfinder/img/contactAsTop_dog.jpg"
	                    class="img"
	                    />
	                </div>
	                </div>
	            </div>
            </div>
            <!-- このメインの部分を入れ替える（CSSも） -------------------------------------------------------->
            <form action="Contact" method="post">
			   	<label for="username" class="label">ユーザー名</label>
			   	<input type="text" id="username" name="username" class="input" required>
				<label for="email" class="label">メールアドレス</label>
				<input type="email" id="email" name="email" class="input" required>
				<label for="inquiry" class="label">お問い合わせ内容</label>
		        <textarea id="inquiry" name="inquiry" class="textarea" required></textarea>
				<div class="div-12">
				  <input class="button_sousi" value="送信" type="submit">
				</div>
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

        .button_title{
        color: #191919;
        text-decoration-line: none;
        }

        /*ここからメイン
        ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー*/
		.button_sousi {
		    cursor: pointer;
		    display: inline-block;
		    padding: 15px 40px; /* 横長に調整 */
		    font-size: 16px;
		    text-align: center;
		    text-decoration: none;
		    background-color: #fff;
		    color: #fff;
		    border: 1px solid #000;
		    border-radius: 5px;
		    transition: background-color 0.3s ease;
		    margin-top: 20px;
		}

		.button_sousi:hover {
		    background-color: #555;
		}

		.button_sousi:hover {
		    background-color: #555;
		}

		.div-6 form {
		    display: flex;
		    flex-direction: column;
		    align-items: flex-start;
		    margin-top: 20px;
		}

		.label {
		    color: #000;
		    font-size: 18px;
		    margin-bottom: 5px;
		    display: block;
		}

		.input,
		.textarea {
		    border-radius: 6px;
		    border: 1px solid #000;
		    background-color: #fff;
		    width: 678px;
		    height: 40px; /* 必要に応じて調整 */
		    margin-bottom: 15px;
		    padding: 10px;
		    font-size: 16px;
		}

		.textarea {
		    height: 100px; /* 必要に応じて調整 */
		}

		.button {
		    cursor: pointer;
		    display: flex;
		    align-items: center;
		    justify-content: center;
		    text-decoration: none;
		    color: #fff;
		    background-color: #000;
		    padding: 15px 20px;
		    border: 1px solid #000;
		    border-radius: 5px;
		    transition: background-color 0.3s ease;
		}

		.button:hover {
		    background-color: #555;
		}
		    sans-serif;
		}
		@media (max-width: 991px) {
		    .div-6 {
		    margin: 40px 0 0 10px;
		    }
		}
		.div-7 {
		    border-radius: 6px;
		    border: 1px solid #000;
		    background-color: #fff;
		    align-self: center;
		    display: flex;
		    margin-top: 15px;
		    width: 678px;
		    height: 75px;
		    flex-direction: column;
		}
		@media (max-width: 991px) {
		    .div-7 {
		    max-width: 100%;
		    }
		}
		.div-8 {
		    color: #000;
		    align-self: start;
		    max-width: 262px;
		    margin: 46px 0 0 370px;
		    font: 400 32px/46px Shippori Mincho B1, -apple-system, Roboto, Helvetica,
		    sans-serif;
		}
		@media (max-width: 991px) {
		    .div-8 {
		    margin: 40px 0 0 10px;
		    }
		}
		.div-9 {
		    border-radius: 6px;
		    border: 1px solid #000;
		    background-color: #fff;
		    align-self: center;
		    display: flex;
		    margin-top: 14px;
		    width: 678px;
		    height: 75px;
		    flex-direction: column;
		}
		@media (max-width: 991px) {
		    .div-9 {
		    max-width: 100%;
		    }
		}
		.div-10 {
		    color: #000;
		    margin: 44px 0 0 362px;
		    font: 400 32px/46px Shippori Mincho B1, -apple-system, Roboto, Helvetica,
		    sans-serif;
		}
		@media (max-width: 991px) {
		    .div-10 {
		    margin: 40px 0 0 10px;
		    }
		}
		.div-11 {
		    border-radius: 14px;
		    border: 1px solid #000;
		    background-color: #fff;
		    align-self: center;
		    display: flex;
		    margin-top: 13px;
		    width: 687px;
		    height: 263px;
		    flex-direction: column;
		}
		@media (max-width: 991px) {
		    .div-11 {
		    max-width: 100%;
		    }
		}
		.div-12 {
		    z-index: 100;
		    display: flex;
		    flex-direction: column;
		    color: #fff;
		    position: relative;
		    fill: #8f949c;
		    stroke-width: 4px;
		    stroke: #000;
		    overflow: hidden;
		    align-self: end;
		    min-height: 106px;
		    width: 1200px;
		    align-items: center;
		    margin: 37px 0 91px;
		    padding: 29px 20px 44px;
		    font: 400 36px/52px Shippori Mincho B1, -apple-system, Roboto, Helvetica,
		    sans-serif;
		}
		@media (max-width: 991px) {
		    .div-12 {
		    max-width: 100%;
		    margin-bottom: 40px;
		    }
		}
		.div-13 {
		    position: relative;
		}
		.button{
		    z-index: 100;
		}

		.header{
		    margin-right: auto;
		    display:flex;
		    justify-content: space-between;
		    align-items:right;
		    padding:20
		    20px;
		    background:#555;
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

		.nav_list{

		    /*この記述でハンバーガーメニューを修正する。*/
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
		a{
		    color:#fff;
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
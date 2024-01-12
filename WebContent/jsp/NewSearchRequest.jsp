<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Account account = ((Account)session.getAttribute("account") != null) ? (Account)session.getAttribute("account") : null;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"
    integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY="
    crossorigin=""/>
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
    integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo="
    crossorigin=""></script>
<script>
   	function optionChange() {
		var otherRadio = document.getElementById('otherOption');
		var otherInput = document.getElementById('otherInput');

		if(otherRadio.checked){
			otherInput.disabled = false;
			otherInput.style.background = "none";
		}else{
			otherInput.disabled = true;
			otherInput.style.background = "#eee";
		};
	}
   	function previewImage(obj){
		var fileReader = new FileReader();

		fileReader.onload = (function() {
			document.getElementById('preview').src = fileReader.result;
		});
		fileReader.readAsDataURL(obj.files[0]);
	}

</script>
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
			                    <div class="object-8">捜索依頼</div>
			                    <div class="object-9">search</div>
		                    </div>
		                </div>
	                </div>
	                <div class="column-2">
	                <div class="object-10">
	                	<!-- ここにヘッダー画像のURLを記述 ---------------------------------------------------->
	                    <img
	                    loading="lazy"
	                    srcset="/Pet_Pathfinder/img/Catsunglasses.png"
	                    class="img"
	                    />
	                </div>
	                </div>
	            </div>
            </div>
            <!-- このメインの部分を入れ替える（CSSのメイン部分も入れ替える） -------------------------------------------------------->
            <div class="sub-title"><p>捜索依頼をする</p></div>
			<div id="map"></div>
            <form action="Search" method="post" enctype="multipart/form-data">
            	<input type="hidden" name="userid" value="<%= (account != null) ? account.getUser_id() : 1 %>">
				<p>緯度：<span style="color: red;">(必須)</span></p>
				<input id="lat" name="lat" type="text" class="feedback-input" value="" placeholder="マップ上をクリックしてください" />
				<p>経度：<span style="color: red;">(必須)</span></p>
				<input id="lng" name="lng" type="text" class="feedback-input" value="" placeholder="マップ上をクリックしてください" />
				<p>動物の種類：<span style="color: red;">(必須)</span></p>
				<div><input id="dog" type="radio" name="animal" value="dog" checked onclick="optionChange()"><label for="dog">犬</label></div>
			    <div><input id="cat" type="radio" name="animal" value="cat" onclick="optionChange()"><label for="cat">猫</label></div>
			    <div><input type="radio" name="animal" value="way" id="otherOption" onclick="optionChange()"><label for="otherOption">その他</label></div>
				<input name="others" type="text" class="feedback-input" id="otherInput" disabled>
				<p>動物の写真：<span style="color: red;">(必須)</span></p>
				<div>
					<input type="file" accept='image/*' name="file" onchange="previewImage(this);"><!-- 画像読み込み -->
				</div>
				<div class="img-aspect"><img id="preview" src=""></div>
				<p>備考：</p>
				<textarea name="text" class="feedback-input" placeholder="動物の詳細を記入してください"></textarea>
				<div style="margin-bottom: 15px;">
					<label>
					<input type="checkbox" name="check" value="Check">
					入力内容に間違いがないことを確認しました
					</label>
				</div>
				<input type="hidden" name="search" value="searchcomp">
				<input type="submit" value="SUBMIT"/>
			</form>
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
            height: 528px;
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
            height: 100%;
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
        .sub-title {
        	font-size: 3rem;
        	text-align: center;
        	color: white;
        	margin: 20px auto 0;
        	width: 90%;
        	background: #CC6666;
			clip-path: polygon(0% 0%, 98% 0%, 100% 100%, 2% 100%);
        }
        .sub-title p {
        	transform: rotate(-3deg);
        	display: inline-block;
        }

		form { max-width:420px; margin:50px auto; }

		form p{
			font-size: 18px;
		}

		.feedback-input {
		  font-family: Helvetica, Arial, sans-serif;
		  font-weight:500;
		  font-size: 18px;
		  border-radius: 5px;
		  line-height: 22px;
		  background-color: transparent;
		  border:2px solid #CC6666;
		  transition: all 0.3s;
		  padding: 13px;
		  margin-bottom: 15px;
		  width:100%;
		  box-sizing: border-box;
		  outline:0;
		}

		.feedback-input:focus { border:2px solid #CC4949; }

		textarea {
		  height: 150px;
		  line-height: 150%;
		  resize:vertical;
		}

		[type="submit"] {
		  font-family: 'Montserrat', Arial, Helvetica, sans-serif;
		  width: 100%;
		  background:#CC6666;
		  border-radius:5px;
		  border:0;
		  cursor:pointer;
		  color:white;
		  font-size:24px;
		  padding-top:10px;
		  padding-bottom:10px;
		  transition: all 0.3s;
		  margin-top:-4px;
		  font-weight:700;
		}

		#otherInput {
			background: #eee;
		}

		[type="submit"]:hover { background:#CC4949; }

		.img-aspect {
			max-width: 300px;
			max-height: 500px;
		/** overflow: scroll; **/
			margin-bottom: 15px;
		}

		.img-aspect #preview {
			width: 100%;
			height: auto;
			display: block;
		}
		#map {
        	width: 60%;
        	height: 400px;
        	margin: 50px auto;
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
    <script>
	    function rotateArrow(id) {
		    var btn = document.getElementById(id);
		    btn.classList.toggle('active');
		}

		function toggleContent(id) {
		    var openDiv = document.getElementById(id);
		    openDiv.style.display = (openDiv.style.display == 'none') ? 'block' : 'none';
		}

		// ここからmapでーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーす。
	    var map = L.map('map').setView([35.8713, 139.9719], 15);
	    L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
	        maxZoom: 14,
	        attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
	    }).addTo(map);
	    var marker = L.marker([35.8689, 139.9711]).addTo(map);
	    // var polygon = L.polygon([
	    //     [35.89, 139.971],
	    //     [35.8689, 139.9713],
	    //     [35.868, 139.9715]
	    // ]).addTo(map);
	    marker.bindPopup("hoge").openPopup();
	    var popup = L.popup()
	        .setLatLng([35.85, 139.90])
	        .setContent("<button style='color:blue';>I am a standalone popup.</button>")
	        .openOn(map);
	    var popup_latlng = L.popup();
	    var nowmarker = L.marker([0,0]).addTo(map);
	    function onMapClick(e) {
	        var inputlat = document.getElementById("lat");
	        var inputlng = document.getElementById("lng");

        	nowmarker.setLatLng(e.latlng);
        	inputlat.value = e.latlng.lat;
        	inputlng.value = e.latlng.lng;
	    }
	    map.on('click', onMapClick);
    </script>
</body>
</html>
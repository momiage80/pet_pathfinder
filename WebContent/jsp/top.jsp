<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%
	Account account = ((Account)session.getAttribute("account") != null) ? (Account)session.getAttribute("account") : null;
	int account_id = (account != null) ? account.getUser_id() : 1;
	System.out.println(account_id);
%>
<%
	List<Pointer> pointers = (List)session.getAttribute("pointers");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/earlyaccess/notosansjp.css">
<link href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" rel="stylesheet">
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"
    integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY="
    crossorigin=""/>
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
    integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo="
    crossorigin=""></script>
</head>
<body>
	<div class="div">
	    <!--ハンバーガーメニュー-->
	    <%@ include file="header.jsp" %>

	    <div class="div-2">
		    <img
		        loading="lazy"
		        srcset="/Pet_Pathfinder/img/cat1.png"
		        class="img"
		    />
		    <div class="div-3">
		        <div class="div-4">
		        	<span>Pet PathFinder<img src="/Pet_Pathfinder/img/7785.png" alt="hoge" style="width: 3rem; white-space: nowrap;"></span>
		        	<hr style="width: 240px">
		        </div>
		    </div>
		    <div class="div-5">
		    	<p class="header-title">「おかえり」 </p>
		    	<p class="header-subtitle">また、一緒にいられる毎日を</p>
		    </div>
	    </div>
	    <!-- 初号機
	    ------------------------------------------------------------------------------------------------------------ -->
		<!-- 折り畳み展開ポインタ -->
			<div onclick="toggleContent('open-1');">
				<a class="btn" id="btn-1" onclick="rotateArrow('btn-1');">Pet Pathfinderとは</a>
			</div>
		<!--// 折り畳み展開ポインタ -->

		<!-- 折り畳まれ部分 -->
			<div id="open-1" style="display:none;clear:both;">
				<!--ここの部分が折りたたまれる＆展開される部分になります。自由に記述してください。-->
				<p class="p-1">hogehogehogeohgeohgehogehogehogehogehogehogehogehogehogehoge</p>
			</div>
		<!--// 折り畳まれ部分 -->
		<hr class="btn-hr" />

		<!-- 2号機
		------------------------------------------------------------------------------------------------------------ -->
		<!-- 折り畳み展開ポインタ -->
			<div onclick="toggleContent('open-2');">
				<a class="btn" id="btn-2" onclick="rotateArrow('btn-2');">Pet Pathfinderとは</a>
			</div>
		<!--// 折り畳み展開ポインタ -->

		<!-- 折り畳まれ部分 -->
			<div id="open-2" style="display:none;clear:both;">
				<!--ここの部分が折りたたまれる＆展開される部分になります。自由に記述してください。-->
				<p class="p-1">hogehogehogeohgeohgehogehogehogehogehogehogehogehogehogehoge</p>
			</div>
		<!--// 折り畳まれ部分 -->
		<hr class="btn-hr" />

		<!-- 3号機
		------------------------------------------------------------------------------------------------------------ -->
		<!-- 折り畳み展開ポインタ -->
			<div onclick="toggleContent('open-3');">
				<a class="btn" id="btn-3" onclick="rotateArrow('btn-3');">Pet Pathfinderとは</a>
			</div>
		<!--// 折り畳み展開ポインタ -->

		<!-- 折り畳まれ部分 -->
			<div id="open-3" style="display:none;clear:both;">
				<!--ここの部分が折りたたまれる＆展開される部分になります。自由に記述してください。-->
				<p class="p-1">hogehogehogeohgeohgehogehogehogehogehogehogehogehogehogehoge</p>
			</div>
		<!--// 折り畳まれ部分 -->
		<hr class="btn-hr" />

	    <!-- map
	    ------------------------------------------------------------------------------------------------ -->
	    <div id="map"></div>
	    <img src="/Pet_Pathfinder/img/Frame.png" class="frame">
	    <div class="search-btns">
	    <form action="/Pet_Pathfinder/Search" method="post" class="search-buttons">
	    	<input type="hidden" name="search" value="searchrequest">
	    	<input type="hidden" name="userid" value="<%= (account != null) ? account.getUser_id() : 1 %>">
		    <input type="submit" class="img-y" value="捜索依頼を出す"/>
		</form>
	    <form action="/Pet_Pathfinder/Search" method="post" class="search-buttons">
	    	<input type="hidden" name="search" value="searchnora">
	    	<input type="hidden" name="userid" value="<%= (account != null) ? account.getUser_id() : 1 %>">
		    <input type="submit" class="img-z" value="野良動物を報告する"/>
		</form>

		</div>
	    <!-- footer部分 -->
	    <jsp:include page="footer.jsp" />
	</div>
	<style>
		* {
			padding: 0;
			margin: 0;
			box-sizing: border-box;
		}
		.notosun {
	    	font-family: 'Noto Sans JP', sans-serif;
	    	font-weight: 100;
	    }
	    .div {
		    background-color: #fff;
		    display: flex;
		    flex-direction: column;
	    }
	    .div-2 {
		    display: flex;
		    flex-direction: column;
		    overflow: hidden;
		    align-self: stretch;
		    position: relative;
		    min-height: 100vh;
	    }
	    @media (max-width: 991px) {
		    .div-2 {
		        max-width: 100%;
		    }
	    }
	    .img {
		    position: absolute;
		    height: 100vh;
		    width: 100%;
		    object-fit: fill;
		    object-position: center;
	    }
	    .div-3 {
		    position: relative;
		    display: flex;
		    margin-right: -10px;
		    width: 25%;
		    align-items: end;
		    justify-content: space-between;
		    gap: 20px;
	        left: 20px;
    		top: 20px;
	    }
	    @media (max-width: 991px) {
		    .div-3 {
		        max-width: 100%;
		        flex-wrap: wrap;
		    }
	    }
	    .div-4 {
		    justify-content: flex-end;
		    color: #fff;
		    margin-top: 10px;
		    margin-left: 0px;
		    text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
		    flex-grow: 1;
		    flex-basis: auto;
		    font: 400 29px/46px serif;
	    }
	    @media (max-width: 991px) {
		    .div-4 {
		        max-width: 100%;
		    }
	    }
	    .img-2 {
		    aspect-ratio: 1.13;
		    object-fit: contain;
		    object-position: center;
		    width: 80px;
		    fill: #fff;
		    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25) inset;
		    overflow: hidden;
		    align-self: start;
		    max-width: 100%;
	    }
	    .div-5 {
		    position: relative;
		    color: #fff;
		    text-align: center;
		    text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
		    align-self: start;
		    max-width: 701px;
		    margin: 56px 0 91px;
	    }
	    .header-title {
	    	font-family: serif;
			font-size: 5rem;
	    }
	    .header-subtitle {
		     position: relative;
		     color: #fff;
		     text-align: center;
		     margin: 0 0 0 50px;
		     text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
		     font-family: serif;
			 font-weight: 400;
			 font-size: 2rem;
	    }
	    @media (max-width: 991px) {
	    .div-5 {
	        max-width: 100%;
	        font-size: 40px;
	        line-height: 64px;
	        margin: 40px 0;
	    }
	    }
	    .div-6 {
		    border: 1px solid #000;
		    align-self: center;
		    display: flex;
		    margin-top: 30px;
		    width: 1000px;
		    gap: 20px;
		    padding: 3px 80px 3px 24px;
	    }
	    @media (max-width: 991px) {
	    .div-6 {
	        max-width: 100%;
	        flex-wrap: wrap;
	        padding: 0 20px;
	    }
	    }
	    .img-3 {
		    object-fit: contain;
		    object-position: center;
		    width: 45px;
		    overflow: hidden;
		    max-width: 100%;
	    }
	    .img-4 {
		    aspect-ratio: 8.81;
		    object-fit: contain;
		    object-position: center;
		    width: 273px;
		    overflow: hidden;
		    align-self: center;
		    margin: auto 0;
	    }
	    .div-7 {
		    border: 1px solid #000;
		    align-self: center;
		    display: flex;
		    margin-top: 11px;
		    width: 1000px;
		    justify-content: space-between;
		    gap: 20px;
		    padding: 3px 80px 3px 24px;
	    }
	    @media (max-width: 991px) {
		    .div-7 {
		        max-width: 100%;
		        flex-wrap: wrap;
		        padding: 0 20px;
		    }
		}
		.img-5 {
		    aspect-ratio: 0.5;
		    object-fit: contain;
		    object-position: center;
		    width: 45px;
		    overflow: hidden;
		    max-width: 100%;
		}
		.div-8 {
		    color: #000;
		    text-align: center;
		    align-self: center;
		    white-space: nowrap;
		    margin-right: 645px;
		    font: 400 32px/37px Yeseva One, sans-serif;
		}
		@media (max-width: 991px) {
		    .div-8 {
		    white-space: initial;
		    }
		}
		.div-9 {
		    border: 1px solid #000;
		    align-self: center;
		    display: flex;
		    margin-top: 11px;
		    width: 1000px;
		    gap: 20px;
		    padding: 3px 80px 3px 24px;
		}
		@media (max-width: 991px) {
		    .div-9 {
		    max-width: 100%;
		    flex-wrap: wrap;
		    padding: 0 20px;
		    }
		}
		.img-6 {
		    aspect-ratio: 0.5;
		    object-fit: contain;
		    object-position: center;
		    width: 45px;
		    overflow: hidden;
		    max-width: 100%;
		}
		.img-7 {
		    aspect-ratio: 8.81;
		    object-fit: contain;
		    object-position: center;
		    width: 273px;
		    overflow: hidden;
		    align-self: center;
		    margin: auto 0;
		}
		.img-8 {
		    margin: 30px 30px 0 0;
		    object-fit: contain;
		    width: 99%;
		    overflow: hidden;
		}
		@media (max-width: 991px) {
		    .img-8 {
		    max-width: 100%;
		    }
		}
		.img-y {
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
		.img-y:hover{
            background-color:#ffb859 ;
		}
		.search-buttons{
			display: inline;
		}
		.img-z {
			margin-left: 100px;
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
		.img-z:hover{
            background-color:#ffb859 ;
		}
		.div-10 {
		    justify-content: flex-end;
		    color: #fff;
		    text-align: center;
		    text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
		    max-width: 599px;
		    background-color: #e5d7b4;
		    align-self: stretch;
		    margin-top: 44px;
		    width: 100%;
		    align-items: center;
		    padding: 130px 20px 108px;
		    font: 400 64px/74px Yeseva One, sans-serif;
		}
		@media (max-width: 991px) {
		    .div-10 {
		    max-width: 100%;
		    font-size: 40px;
		    line-height: 51px;
		    margin-top: 40px;
		    padding: 40px 0;
		    }
		}

        a {
       		color: white;
       		border-
        }
        #map {
        	width: 60%;
        	height: 400px;
        	margin: 50px auto;
        }
        .btn {
        	display: block;
			text-align: center;
			vertical-align: middle;
			text-decoration: none;
			width: 60%;
			margin: 15px auto 0;
			padding: 1rem 4rem;
			font-weight: bold;
			color: black;
			transition: 0.5s;
			cursor: pointer;
			position: relative;
        }
        .btn::before{
		    content: "";
		    display: block;
		    width: 20px;
		    height: 20px;
		    background: #eee;
		    border-radius: 50%;
		    position: absolute;
		    top: 50%;
		    transform: translateY(-50%);
		    right: 10%;
		}
		.btn::after{
		    content: "";
		    display: block;
		    width: 7px;
		    height: 7px;
		    border-right: 2px solid #333;
		    border-bottom: 2px solid #333;
		    transform: rotate(45deg);
		    position: absolute;
		    top: calc(50% - 6px);
		    right: 10.7%;
		}
		#btn-1.active::after{
			transform: rotate(225deg);
			top: calc(50% - 3px);
		}
		#btn-2.active::after{
			transform: rotate(225deg);
			top: calc(50% - 3px);
		}
		#btn-3.active::after{
			transform: rotate(225deg);
			top: calc(50% - 3px);
		}
        .btn:hover {
			color: #fff;
			background: #eee;
		}
		.p-1 {
			width: 60%;
			margin: 10px auto;
		}
		.btn-hr {
			width: 60%;
			margin: auto;
			color: #eee;
		}
		.search-btns {
			margin: 40px auto;

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
        a{
            color:#fff;
            text-decoration-line: none;
        }
        .icon-red { /* icon-redは最初に指定したクラス名 */
        	filter: hue-rotate(150deg);
		}
		</style>

		<!-- ここからjavascript
		ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー-->
		<script>
			function rotateArrow(id) {
			    var btn = document.getElementById(id);
			    btn.classList.toggle('active');
			}

			function toggleContent(id) {
			    var openDiv = document.getElementById(id);
			    openDiv.style.display = (openDiv.style.display == 'none') ? 'block' : 'none';
			}

			const redIcon = L.icon({
				  iconUrl: "https://esm.sh/leaflet@1.9.2/dist/images/marker-icon.png",
				  iconRetinaUrl: "https://esm.sh/leaflet@1.9.2/dist/images/marker-icon-2x.png",
				  shadowUrl: "https://esm.sh/leaflet@1.9.2/dist/images/marker-shadow.png",
				  iconSize: [25, 41],
				  iconAnchor: [12, 41],
				  popupAnchor: [1, -34],
				  tooltipAnchor: [16, -28],
				  shadowSize: [41, 41],
				  className: "icon-red", // <= ここでクラス名を指定
				});

	        var map = L.map('map').setView([35.8713, 139.9719], 15);
	        L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
	            maxZoom: 19,
	            attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
	        }).addTo(map);
			var count = 2;
			// マーカーとポップアップを表示する関数
			function addMarker(lat, lng, animal, animal_detail, file, user_id, account_id, type) {

			    var marker;
			    console.log(type == "request");
			    if(type == "request"){
			    	marker = L.marker([lat, lng], { icon: redIcon }).addTo(map);
			    }else{
			    	marker = L.marker([lat, lng]).addTo(map);
			    }
			    //ピンをクリックしたときに表示する内容
			    marker.bindPopup(
			    		"<h1>"+animal+"<br>"+animal_detail+"<br></h1>"+
			    		"<img alt='画像の表示には時間がかかりませう。申し訳ございませう。' style='max-width: 300px;max-height: 500px;margin-right: 30px' src='/Pet_Pathfinder/img/"+file+"'>"+
			    		"<form action='/Pet_Pathfinder/Profile' method='post'>"+
			    		"<input type='hidden' name='profile' value='profile'>"+
			    		"<input type='hidden' name='user_id' value='"+user_id+"'>"+
			    		"<input type='hidden' name='account_id' value='"+account_id+"'>"+
			    		"<input type='submit' value='プロフィール画面'>"+

			    		"</form>"
			    		).openPopup();
			}

			// ポップアップを表示する例（forループ使用）
			<%for (int i = 0; i < pointers.size(); i++) {%>
			    var markerLat = <%=pointers.get(i).getLat() %>;
			    var markerLng = <%=pointers.get(i).getLng() %>;
			    var animal = "<%=pointers.get(i).getAnimal() %>";
			    var animal_detail = "<%=pointers.get(i).getAnimal_detail() %>";
			    var file = "<%=pointers.get(i).getFile() %>";
			    var user_id = "<%=pointers.get(i).getUser_id() %>";
			    var account_id = <%=account_id %>;
			    var type = "<%=pointers.get(i).getType() %>";
			    addMarker(markerLat, markerLng, animal, animal_detail, file, user_id, account_id, type);
			<%}%>
	        var marker = L.marker([35.8689, 139.9711]).addTo(map);
	        marker.bindPopup("<h1>hoge</h1>").openPopup();
	        var popup = L.popup()
	            .setLatLng([35.85, 139.90])
	            .setContent("<button style='color:blue';>I am a standalone popup.</button>")
	            .openOn(map);
	        var popup_latlng = L.popup();
	        function onMapClick(e) {
	            popup_latlng
	                        .setLatLng(e.latlng)
	                        .setContent("You clicked the map at" + e.latlng.toString())
	                        .openOn(map);
	        }
	        map.on('click', onMapClick);
    	</script>
	</body>
</html>
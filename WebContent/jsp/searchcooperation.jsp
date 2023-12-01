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
			                    <div class="object-8">捜索協力</div>
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
	           <img
      loading="lazy"
      srcset="https://cdn.builder.io/api/v1/image/assets/TEMP/e4c7f1a0-06c5-45b1-8ac8-4fe65d79c386?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=100 100w, https://cdn.builder.io/api/v1/image/assets/TEMP/e4c7f1a0-06c5-45b1-8ac8-4fe65d79c386?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=200 200w, https://cdn.builder.io/api/v1/image/assets/TEMP/e4c7f1a0-06c5-45b1-8ac8-4fe65d79c386?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=400 400w, https://cdn.builder.io/api/v1/image/assets/TEMP/e4c7f1a0-06c5-45b1-8ac8-4fe65d79c386?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=800 800w, https://cdn.builder.io/api/v1/image/assets/TEMP/e4c7f1a0-06c5-45b1-8ac8-4fe65d79c386?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=1200 1200w, https://cdn.builder.io/api/v1/image/assets/TEMP/e4c7f1a0-06c5-45b1-8ac8-4fe65d79c386?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=1600 1600w, https://cdn.builder.io/api/v1/image/assets/TEMP/e4c7f1a0-06c5-45b1-8ac8-4fe65d79c386?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=2000 2000w, https://cdn.builder.io/api/v1/image/assets/TEMP/e4c7f1a0-06c5-45b1-8ac8-4fe65d79c386?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&"
      class="img-3"
    />
    <div class="div-9">捜索協力をする</div>
    <div class="div-10">
      <span
        style="
          font-family: Noto Serif JP, -apple-system, Roboto, Helvetica,
            sans-serif;
          font-weight: 700;
        "
      >
        緯度
      </span>
      <span
        style="
          font-family: Noto Serif JP, -apple-system, Roboto, Helvetica,
            sans-serif;
          font-weight: 400;
        "
      >
        　:
      </span>
    </div>
    <div class="div-11">マップ上の地点をクリックしてください</div>
    <div class="div-12">
      <span
        style="
          font-family: Noto Serif JP, -apple-system, Roboto, Helvetica,
            sans-serif;
          font-weight: 700;
        "
      >
        経度
      </span>
      <span
        style="
          font-family: Noto Serif JP, -apple-system, Roboto, Helvetica,
            sans-serif;
          font-weight: 400;
        "
      >
        　：
      </span>
    </div>
    <div class="div-13">マップ上の地点をクリックしてください</div>
    <div class="div-14">
      <span
        style="
          font-family: Noto Serif JP, -apple-system, Roboto, Helvetica,
            sans-serif;
          font-weight: 700;
        "
      >
        メールアドレス
      </span>
      <span
        style="
          font-family: Noto Serif JP, -apple-system, Roboto, Helvetica,
            sans-serif;
          font-weight: 400;
        "
      >
        　：
      </span>
    </div>
    <div class="div-15">必須（ほかのユーザに表示されます）</div>
    <!-- ここからチェックボックスに変更 -->
  <!--<div class="div-33">Pet PathFinder</div>-->
  <div class="div-16">動物の写真　: <input type="file" accept='image/*' onchange="previewImage(this);"></div>





      <!-- 画像添付のスクリプト -->
		<script>
		function previewImage(obj)
		{
			var fileReader = new FileReader();
			fileReader.onload = (function() {
				document.getElementById('preview').src = fileReader.result;
			});
			fileReader.readAsDataURL(obj.files[0]);
		}
		</script>
   		<!--  <div class="div-27"></div>-->
    </div>
     <!-- 画像表示タグ -->
    <img id="preview" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" style="algin=50px; ">

    <div class="div-28">
      <span
        style="
          font-family: Noto Serif JP, -apple-system, Roboto, Helvetica,
            sans-serif;
          font-weight: 700;
        "
      >
        備考
      </span>
      <!-- textboxに書き換え -->
		<span
        style="
          font-family: Noto Serif JP, -apple-system, Roboto, Helvetica,
            sans-serif;
          font-weight: 400;
        "
      >
       <textarea class="text" placeholder="動物の詳細情報を記入してください" style="width:100%;height:100px;"></textarea>
      </span>
    </div>
    <div class="div-29"></div>
    <div class="div-30">
    <!-- 入力内容ミスがないか確認のチェックボックス -->
    <input type="checkbox" name="check" value="Check">
      <!--  <img
        loading="lazy"
        srcset="https://cdn.builder.io/api/v1/image/assets/TEMP/a53c02c7-a637-4a57-b924-edf70a9a20dc?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=100 100w, https://cdn.builder.io/api/v1/image/assets/TEMP/a53c02c7-a637-4a57-b924-edf70a9a20dc?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=200 200w, https://cdn.builder.io/api/v1/image/assets/TEMP/a53c02c7-a637-4a57-b924-edf70a9a20dc?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=400 400w, https://cdn.builder.io/api/v1/image/assets/TEMP/a53c02c7-a637-4a57-b924-edf70a9a20dc?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=800 800w, https://cdn.builder.io/api/v1/image/assets/TEMP/a53c02c7-a637-4a57-b924-edf70a9a20dc?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=1200 1200w, https://cdn.builder.io/api/v1/image/assets/TEMP/a53c02c7-a637-4a57-b924-edf70a9a20dc?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=1600 1600w, https://cdn.builder.io/api/v1/image/assets/TEMP/a53c02c7-a637-4a57-b924-edf70a9a20dc?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&width=2000 2000w, https://cdn.builder.io/api/v1/image/assets/TEMP/a53c02c7-a637-4a57-b924-edf70a9a20dc?apiKey=5fb7fc1e8ce740c2bc96a0eebd2ef662&"
        class="img-7"
      />-->
      <div class="div-31">入力内容に間違いがないことを確認しました</div>
    </div>
    <!-- 送信処理と送信完了画面に遷移 -->
    	<div class="div-32">送信する</div>
 	</div>



<jsp:include page="footer.jsp"/>
    <style>
    	/*ここからヘッダーCSS（書き換えない）ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー*/
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
    background-color: #fff;
    display: flex;
    flex-direction: column;
  }
  .div-2 {
    display: flex;
    width: 100%;
    padding-left: 27px;
    flex-direction: column;
  }
  @media (max-width: 991px) {
    .div-2 {
      max-width: 100%;
      padding-left: 20px;
    }
  }
  .div-3 {
    align-self: stretch;
  }
  @media (max-width: 991px) {
    .div-3 {
      max-width: 100%;
      padding-right: 20px;
    }
  }
  .div-4 {
    gap: 20px;
    display: flex;
  }
  @media (max-width: 991px) {
    .div-4 {
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
  }
  @media (max-width: 991px) {
    .column {
      width: 100%;
    }
  }
  .div-5 {
    display: flex;
    margin-top: 50px;
    flex-direction: column;
  }
  @media (max-width: 991px) {
    .div-5 {
      margin-top: 40px;
    }
  }
  .div-6 {
    color: #000;
    text-align: center;
    font: 400 32px Yeseva One, sans-serif;
  }
  .div-7 {
    color: #000;
    text-align: center;
    margin-top: 217px;
    font: 400 48px Shippori Mincho B1, -apple-system, Roboto, Helvetica,
      sans-serif;
  }
  @media (max-width: 991px) {
    .div-7 {
      margin-top: 40px;
      font-size: 40px;
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
  .div-8 {
    disply: flex;
    flex-direction: column;
    overflow: hidden;
    position: relative;
    display: flex;
    min-height: 659px;
    flex-grow: 1;
    justify-content: center;
    align-items: end;
    padding: 44px 20px;
  }
  @media (max-width: 991px) {
    .div-8 {
      max-width: 100%;
      margin-top: 31px;
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
  .img-2 {
    aspect-ratio: 1.19;
    object-fit: contain;
    object-position: center;
    width: 57px;
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
  .img-3 {
    aspect-ratio: 1.86;
    object-fit: contain;
    object-position: center;
    width: 100%;
    overflow: hidden;
    align-self: stretch;
    margin-top: 60px;
  }
  @media (max-width: 991px) {
    .img-3 {
      max-width: 100%;
      margin-top: 40px;
    }
  }
  .div-9 {
    color: #fff;
    text-align: center;
    max-width: 262px;
    align-items: start;
    background-color: #aeaeae;
    align-self: center;
    width: 1288px;
    justify-content: center;
    margin: 120px 0 0 14px;
    padding: 29px 20px;
    font: 400 40px Noto Serif JP, sans-serif;
  }
  @media (max-width: 991px) {
    .div-9 {
      max-width: 100%;
      margin-top: 40px;
      padding-left: 10px;
    }
  }
  .div-10 {
    color: #000;
    margin: 43px 0 0 49px;
    font: 400 32px Noto Serif JP, sans-serif;
  }
  @media (max-width: 991px) {
    .div-10 {
      margin: 40px 0 0 10px;
    }
  }
  .div-11 {
    color: #818181;
    max-width: 561px;
    align-items: start;
    border-radius: 12px;
    border: 1px solid #000;
    align-self: center;
    width: 1288px;
    justify-content: center;
    margin: 17px 0 0 14px;
    padding: 32px 20px;
    font: 400 32px Noto Serif JP, sans-serif;
  }
  @media (max-width: 991px) {
    .div-11 {
      max-width: 100%;
    }
  }
  .div-12 {
    color: #000;
    margin: 10px 0 0 49px;
    font: 400 32px Noto Serif JP, sans-serif;
  }
  @media (max-width: 991px) {
    .div-12 {
      margin-left: 10px;
    }
  }
  .div-13 {
    color: #818181;
    max-width: 561px;
    align-items: start;
    border-radius: 12px;
    border: 1px solid #000;
    align-self: center;
    width: 1288px;
    justify-content: center;
    margin: 17px 0 0 14px;
    padding: 32px 20px;
    font: 400 32px Noto Serif JP, sans-serif;
  }
  @media (max-width: 991px) {
    .div-13 {
      max-width: 100%;
    }
  }
  .div-14 {
    color: #000;
    max-width: 270px;
    align-self: start;
    margin: 12px 0 0 49px;
    font: 400 32px Noto Serif JP, sans-serif;
  }
  @media (max-width: 991px) {
    .div-14 {
      margin-left: 10px;
    }
  }
  .div-15 {
    color: #818181;
    max-width: 515px;
    align-items: start;
    border-radius: 12px;
    border: 1px solid #000;
    align-self: center;
    width: 1288px;
    justify-content: center;
    margin: 18px 0 0 14px;
    padding: 33px 20px;
    font: 400 32px Noto Serif JP, sans-serif;
  }
  @media (max-width: 991px) {
    .div-15 {
      max-width: 100%;
    }
  }
  .div-16 {
    color: #000;
    margin: 10px 0 0 50px;
    font: 700 32px Noto Serif JP, sans-serif;
  }
  @media (max-width: 991px) {
    .div-16 {
      margin-left: 10px;
    }
  }
  .div-17 {
    align-self: start;
    display: flex;
    justify-content: space-between;
    gap: 20px;
    margin: 19px 0 0 50px;
  }
  @media (max-width: 991px) {
    .div-17 {
      margin-left: 10px;
    }
  }
  .img-4 {
    aspect-ratio: 0.79;
    object-fit: contain;
    object-position: center;
    width: 30px;
    overflow: hidden;
    max-width: 100%;
  }
  .div-18 {
    color: #000;
    align-self: start;
    margin-top: 7px;
    font: 400 32px Noto Serif JP, sans-serif;
  }
  .div-19 {
    align-self: start;
    display: flex;
    justify-content: space-between;
    gap: 20px;
    margin: 18px 0 0 50px;
  }
  @media (max-width: 991px) {
    .div-19 {
      margin-left: 10px;
    }
  }
  .img-5 {
    aspect-ratio: 0.79;
    object-fit: contain;
    object-position: center;
    width: 30px;
    overflow: hidden;
    max-width: 100%;
  }
  .div-20 {
    color: #000;
    align-self: start;
    margin-top: 9px;
    font: 400 32px Noto Serif JP, sans-serif;
  }
  .div-21 {
    align-self: start;
    display: flex;
    justify-content: space-between;
    gap: 20px;
    margin: 18px 0 0 49px;
  }
  @media (max-width: 991px) {
    .div-21 {
      margin-left: 10px;
    }
  }
  .img-6 {
    aspect-ratio: 0.79;
    object-fit: contain;
    object-position: center;
    width: 30px;
    overflow: hidden;
    max-width: 100%;
  }
  .div-22 {
    color: #000;
    align-self: center;
    margin: auto 0;
    font: 400 32px Noto Serif JP, sans-serif;
  }
  .div-23 {
	border-radius: 12px;
	border: 1px solid #989898;
	background-color: #ececec;
    align-self: center;
    display: flex;
    width: 1100px;
    height: 95px;
    flex-direction: column;
    margin: 14px 0 0 14px;
  }
  @media (max-width: 991px) {
    .div-23 {
      max-width: 100%;
    }
  }
  .div-24 {
    align-self: start;
    display: flex;
    align-items: start;
    justify-content: space-between;
    gap: 15px;
    margin: 10px 0 0 50px;
  }
  @media (max-width: 991px) {
    .div-24 {
      max-width: 100%;
      flex-wrap: wrap;
      justify-content: center;
    }
  }
  .div-25 {
    color: #000;
    margin-top: 10px;
    font: 400 32px Noto Serif JP, sans-serif;
  }
  .div-26 {
    color: #000;
    justify-content: center;
    /*border-radius: 8px;*/
    /*border: 1px solid #000;*/
    /*background-color: #f4f4f4;*/
    align-self: stretch;
    flex-grow: 1;
    /*padding: 12px 11px;*/
    font: 400 24px Noto Serif JP, sans-serif;
    margin-top:22px;
  }
  @media (max-width: 991px) {
    .div-26 {
      padding-right: 4px;
    }
  }
  .div-27 {
    color: #000;
    align-self: center;
    flex-grow: 1;
    flex-basis: auto;
    margin: auto 0;
    font: 400 32px Noto Serif JP, sans-serif;
  }
  .div-28 {
    color: #000;
    margin: 20px 0 0 49px;
    font: 400 32px Noto Serif JP, sans-serif;
  }
  @media (max-width: 991px) {
    .div-28 {
      margin-left: 10px;
    }
  }
  .div-29 {
    /*color: #818181;
    max-width: 501px;
    align-items: start;
    border-radius: 12px;
    border: 1px solid #000;
    align-self: center;
    width: 1288px;*/
    justify-content: center;
    /*margin: 17px 0 0 14px;
    padding: 33px 20px;*/
    font: 400 32px Noto Serif JP, sans-serif;
  }
  @media (max-width: 991px) {
    .div-29 {
      max-width: 100%;
    }
  }
  .div-30 {
    align-self: start;
    display: flex;
    justify-content: space-between;
    gap: 20px;
    margin: 14px 0 0 45px;
  }
  @media (max-width: 991px) {
    .div-30 {
      max-width: 100%;
      flex-wrap: wrap;
    }
  }
  .img-7 {
    aspect-ratio: 0.79;
    object-fit: contain;
    object-position: center;
    width: 30px;
    overflow: hidden;
    max-width: 100%;
  }
  .div-31 {
    color: #000;
    align-self: start;
    margin-top: 6px;
    flex-grow: 1;
    flex-basis: auto;
    font: 400 32px Noto Serif JP, sans-serif;
  }
  @media (max-width: 991px) {
    .div-31 {
      max-width: 100%;
    }
  }
  .div-32 {
    justify-content: center;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    border: 4px solid #000;
    background-color: #9e9eae;
    align-self: center;
    margin-top: 27px;
    width: 100%;
    max-width: 1100px;
    align-items: center;
    padding: 20px;
    font: 700 40px Noto Serif JP, sans-serif;
    margin-bottom:27px;
    margin-left:100px;
  }
  @media (max-width: 991px) {
    .div-32 {
    max-width: 100%;
	align:center;
    }
  }
  .div-33 {
    justify-content: center;
    color: #fff;
    text-align: center;
    text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
    max-width: 557px;
    background-color: #e5d7b4;
    margin-top: 107px;
    width: 100%;
    align-items: center;
    padding: 130px 20px 108px 45px;
    font: 400 64px Yeseva One, sans-serif;

  }
  @media (max-width: 991px) {
    .div-33 {
      max-width: 100%;
      font-size: 40px;
      margin-top: 40px;
      padding: 40px 0;
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
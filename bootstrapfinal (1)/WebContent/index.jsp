<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<%@ include file = "include/header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Index 페이지에 포함되는 Header 페이지를 작성하는 곳 -->

<head>

<title>header.html</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Pen+Script');
	* {
	/*	font-family: 'Hanna', sans-serif;
		font-family: 'Nanum Brush Script', serif; */
		font-family: 'Nanum Pen Script', cursive;
	}


	body,ul {
		margin: 0px;
		padding: 0px;
	
	}
	ul {
		list-style-type: none;
	}
	a {
		text-decpration: none;
	}
	 #header_wrap {
		box-sizing: border-box;
	}
	
	
	.main_visual {
		position: relative;
		display: inline-block;
		float: left;
		width: 100%;
		overflow: hidden;
		margin-bottom: 8px;
		border-top: 1px solid #ddd;
	}
	.swiper-container2 {
		margin: 0 auto;
		position: relative;
		overflow: hidden;
		z-index: 1;
	}
	.sub_contents {
		width: 966px;
		margin: 0 auto;
		margin-top: 45px;
	}
	.sub_title_bg {
		width: 966px;
		margin-bottom: 25px;
	} 
	img {
		border:none;
		vertical-align: top;
	}
	 .bnt {
		color: white;
		border: 1px solid black;
		display: inline-block;
		text-align: center;
		margin: 0;
		padding: 5px 0;
		background-color: black;
		opacity: 0.5;
		cursor: pointer;
		font-weight: bold;		
		margin-bottom: 3px;
	}
	.proatop {
		border-top: 2px solid #7d7d7d;
		border-bottom: 4px double #dadada;
		position: relative;
	}
	.proatop h2 {
		height: 42px;
		line-height: 42px;
		text-align: center;
	}
	h2 {
		display: block;
		font-size: 1.5em;
		margin-block-start: 0.83em;
	}
	.violet {
		color: #bb1653;
		font-weight: 900;
	} 
	#wrapper {
		width: 100%;
		height: 100%;
	}
	.left_menu {
		width: 198px;
		border: 1px solid #cccccc;
		float: left;
		padding-bottom:20px;
		margin-top: 45px;
	}
	.left_location {
		display: block;
		padding: 25px 0 20px 17px;
		font-size: 22px;
		font-weight: bold;
		border-bottom: 1px dotted #ccc;
		margin-bottom: 10px;
	}
	.left_menu .show {
		padding: 10px 10px 10px 14px;
	}
	.caption {
		font-weight: 700;
		font-size: 14px;
		margin-bottom: 10px;
	}
	.inner_box_wrap {
		border-bottom: 1px dotted #ccc;
		padding-bottom: 10px;
	}
	.inner_box {
		overflow-x: hidden;
	}
	.left_menu .show ul {
		display: block;
	}
	.inner_box ul li {
		line-height: 17px;
	}
	.inner_box ul li input {
		vertical-align: middle;
	}
	.blackBtn {
		cursor: pointer;
		border: 0;
		padding: 5px 20px;
		color: white;
		background: #000;
		margin-top: 10px;
	}
 	.prolistA{
		width: 960px;
		overflow: hidden;
		margin-left: 10px;
	} 
	.caroufredsel_wrapper {
		display: block;
		text-align: start;
		float: none;
		position: relative;
		top: auto;
		right: auto;
		bottom: auto;
		left: auto;
		z-index: auto;
		width: 944px;
		height: 284px;
		margin: 0px;
		overflow: hidden;
	}
	 #foo2 {
		text-align: left;
		float: none;
		position: absolute;
		top: 0px;
		right: auto;
		left: 0px;
		bottom: auto;
		margin: 0px;
		width: 14274px;
		height: 284px;
	}  
	.list {
		width: auto;
		margin: 0 18px;
	} 
	.prolistA ul li {
		float: left;
	}
	.prolistA .proitem {
		position: relative;
		width: 180px;
		padding: 10px;
	} 
 	.main_pro {
		width: 178px;
		height: 178px;
	}
	 
	.card{
		display: inline-block;
	}
	.card_img img {
		width:178px;
		height: 178px;
	}
		   	#footer {
   		position: relative;
   		clear: both;
   		margin: 60px 0 0 0;
   		padding: 30px 0 0;
   		display: inline-block;
   		width: 100%;
   		background: #8b8687;
   	}
   	.layout-footer {
   		position: relative;
   	}
   	.utilmenu {
   		overflow: hidden;
   		width: 1040px;
   		margin: 0 auto;
   		display: block;
   	}
   	.utilmenu li.phone {
   		font-size: 23px;
   		line-height: 19px;
   		color: #F90;
   		margin: 0 0 10px;
   	}
   	.utilmenu h4 {
   		font-weight: normal;
   		padding: 17px;
   		font-size: 15px;
   		color: #fff;
   	}
   	.utilmenu ul {
   		height: 110px;
   	}
   	.utilmenu li {
   		margin: 0 0 3px 0;
   		font-size: 17px;
   		line-height: 20px;
   		padding: 0 15px;
   		color: #aaa;
   		font-family: dotum;
   	}
   	.utilmenu li a {
   		font-size: 17px;
   		color: #aaa;
   		text-decoration: none;
   	}
  	#address {
  		width: 1040px;
  		margin: 0 auto;
  		text-align: center;
  	}
  	.info_ad {
  		line-height: 17px;
  		padding:  0;
  		font: 12px;
  		color: #252c41;
  	}
  	.util_unit {
  		float: left;
  		width: 240px;
  		display: inline-block;
  		margin: 10px 0 35px 20px;
  		font-size: 17px;
  		text-align: left;
  		border-radius: 5px; 
  	}  .carousel-inner img {
        width:966px; 
        height:429px; 
        margin-bottom: -5px
  }.carousel-indicators {
  	bottom: 40px;
  }
  	
	
</style>


</head>
<body>
	<div id="wrapper">
	

<%--   	 <c:forEach items="${bestlist}" var="bestDto">  
		<div class ="card">
			<div class="card_img">
				<img src="img/${bestDto.p_img}">
			</div>
			<div class="card_title">
				<span>${bestDto.p_name}</span>
			</div>
			<div class="card_content">
				<span>병상</span>
				<span>뵹샤ㅏㅇ</span>
				<span>가격: ${bestDto.p_price}</span>
			</div>
		</div>
	 	 </c:forEach>   --%>
	 <div class="left_menu">
	 	<span class="left_location">간편메뉴</span>
	 	<div class="left_detail_box show">
	 		<p class="caption" onclick="">성인축구화</p>
	 	<div class="inner_box_wrap">
	 		<div class="inner_box" style="height:auto;">
	 			<ul>
	 				<li>
	 					<input type="checkbox" class="terms1" style="vertical-align: middle;"
	 					value="축구화">
	 					나이키
	 				</li>
	 				<li>	
	 					<input type="checkbox" class="terms1" style="vertical-align: middle;"
	 					value="축구화">
	 					푸마
	 				</li>
	 				<li>
	 					<input type="checkbox" class="terms1" style="vertical-align: middle;"
	 					value="축구화">
	 					미즈노
	 				</li>
	 				<li>
	 					<input type="checkbox" class="terms1" style="vertical-align: middle;"
	 					value="축구화">
	 					뉴발란스
	 				</li>
	 				<li>
	 					<input type="checkbox" class="terms1" style="vertical-align: middle;"
	 					value="축구화">
	 					엄브로
	 				</li>
	 				<li>
	 					<input type="checkbox" class="terms1" style="vertical-align: middle;"
	 					value="축구화">
	 					르꼬끄
	 				</li>
	 			</ul>
	 	</div>
	 	</div>	
	 </div>
	 	<div class="left_detail_box show">
	 		<p class="caption" onclick="">풋살화</p>
	 		<div class="inner_box" style="height:auto;">
	 			<ul>
	 				<li>
	 					<input type="checkbox" class="terms3" style="vartical-align:middle;"
	 					value="풋살화">
	 					나이키
	 				</li>
	 				<li>
	 					<input type="checkbox" class="terms3" style="vartical-align:middle;"
	 					value="풋살화">
	 					푸마
	 				</li>
	 				<li>
	 					<input type="checkbox" class="terms3" style="vartical-align:middle;"
	 					value="풋살화">
	 					미즈노
	 				</li>
	 				<li>
	 					<input type="checkbox" class="terms3" style="vartical-align:middle;"
	 					value="풋살화">
	 					뉴발란스
	 				</li>
	 				<li>
	 					<input type="checkbox" class="terms3" style="vartical-align:middle;"
	 					value="풋살화">
	 					엠브로
	 				</li>
	 				<li>
	 					<input type="checkbox" class="terms3" style="vartical-align:middle;"
	 					value="풋살화">
	 					르꼬끄
	 				</li>
	 			</ul>
	 	</div>
	 </div>
	 <div class="left_detail_box show">
	 	<p class="caption" onclick="">용도</p>
	 	<div class="inner_box_wrap">
	 		<div class="inner_box" style="height:auto;">
	 			<ul>
	 				<li>
	 					<input type="checkbox" name="prouse[]" class="terms5" value="use01">
	 					천연잔디(FG)
	 				</li>
	 				<li>
	 					<input type="checkbox" name="prouse[]" class="terms5" value="use01">
	 					부드러운 천연잔디(SG)
	 				</li>
	 				<li>
	 					<input type="checkbox" name="prouse[]" class="terms5" value="use01">
	 					인조잔디(AG)
	 				</li>
	 				<li>
	 					<input type="checkbox" name="prouse[]" class="terms5" value="use01">
	 					풋살화(TF)
	 				</li>
	 				<li>
	 					<input type="checkbox" name="prouse[]" class="terms5" value="use01">
	 					맨땅용(HG)
	 				</li>
	 				<li>
	 					<input type="checkbox" name="prouse[]" class="terms5" value="use01">
	 					실내구장(IN)
	 				</li>
	 				<li>
	 					<input type="checkbox" name="prouse[]" class="terms5" value="use01">
	 					모든구장(MD)
	 				</li>	
	 			</ul>
	 		</div>
	 	</div>
	 </div>
	 <div class="left_detail_box show">
	 	<p class="caption" onclick="">사이즈</p>
	 		<div class="inner_box_wrap">
	 			<div class="inner_box proscont03" style="height:auto;">
					<ul class="in2">
						<li>
							<input type="checkbox" name="prosize[]" value="240">
							240
						</li>
						<li>
							<input type="checkbox" name="prosize[]" value="245">
							245
						</li>
						<li>
							<input type="checkbox" name="prosize[]" value="250">
							250
						</li>
						<li>
							<input type="checkbox" name="prosize[]" value="255">
							255
						</li>
						<li>
							<input type="checkbox" name="prosize[]" value="260">
							260
						</li>
						<li>
							<input type="checkbox" name="prosize[]" value="265">
							265
						</li>
						<li>
							<input type="checkbox" name="prosize[]" value="270">
							270
						</li>
						</ul>
						<ul class="in2">
						<li>
							<input type="checkbox" name="prosize[]" value="275">
							275
						</li>
						<li>
							<input type="checkbox" name="prosize[]" value="280">
							280
						</li>
						<li>
							<input type="checkbox" name="prosize[]" value="285">
							285
						</li>
						<li>
							<input type="checkbox" name="prosize[]" value="290">
							290
						</li>
						<li>
							<input type="checkbox" name="prosize[]" value="295">
							295
						</li>
						<li>
							<input type="checkbox" name="prosize[]" value="300">
							300
						</li>
					</ul>	 			
	 			</div>
	 		</div>
	 </div>
	 <div style="width:100%; text-align:center;">
	 	<input type="button" value="검색" class="blackBtn" id="prosearchBtn">
	 	
	 </div>
	 </div>
	 <div class="sub_contents">	 
		<div class="sub_title_bg" style="height:400px;">
				<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>

  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/gwang1.jpg" alt="Los Angeles" >
    </div>
    <div class="carousel-item">
      <img src="img/sale2.jpg" alt="Chicago">
    </div>
    <div class="carousel-item">
      <img src="img/sale1.jpg" alt="New York">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>

</div>

<!-- 			<a href="">
				<img src="img/ewabi.jpg" style="width:966px; height:400px; margin-bottom: -5px;">
			</a> -->
		 	<div style="border:0 solid black; position:relative; top: -36px; margin: 0; padding:0;">
		 		<div style="width: 17.5%;" class="bnt" onclick="">
		 		전체보기
		 		</div>
		 		<div style="width: 20%;" class="bnt" onclick="">
		 		TRAINNING
		 		</div>
		 		<div style="width:20%;" class="bnt" onclick="">
		 		SHOSE
		 		</div>
		 		<div style="width:20%;" class="bnt" onclick="">
		 		BALL
		 		</div>
		 		<div style="width: 19%;" class="bnt" onclick="">
		 		UNIFORM
		 		</div>
		 	</div>
		 
	</div>
	<div id="proArea">
		<div class="proatop">
			<h2>
				<span class="violet">BEST</span>
				PRODUCT
			</h2>
		</div>
 	
 	<c:forEach items="${bestlist}" var="bestDto">
		<div class ="card">
			<div class="card_img">
				<img src="img/${bestDto.p_img}">
				
			</div>
			<div class="card_title">
				<span>${bestDto.p_name}</span>
			</div>
			<div class="card_content">
				<span></span>
				
				<%-- <span>가격: ${bestDto.p_price}</span> --%>
				<fmt:setLocale value="ko_kr"/>
				<span>가격: <fmt:formatNumber value="${bestDto.p_price}" type="currency"/></span> 
				<%-- <fmt:formatNumber value="0.25" type="percent"/></fmt:formatNumber> --%>
				
				<span>원</span>
			</div>
		</div>
		
		
	 	 </c:forEach>
		<!-- <div class="prolistA" style="margin-left:10px;">
			<div class="caroufredsel_wrapper">
				<ul id="foo2">
					<li class="list">
						<div class="proitem">
							<a href="#">
								<div>
									<img src="img/123.jpeg" class="main_pro">
								</div>
							</a>
							<div class="protext">
								팬텀 비전 엘리트 DF FG(AO3262060)
							</div>
							<div class="pricedown" style="margin-left:5px;">
							329,000원
						</div>
						</div>
				</li>
				
				
				<li class="list" style="width:auto; margin:0 18px;">
						<div class="proitem" style="position:relative;">
							<a href="#">
								<div>
									<img src="img/12345.jpg" class="main_pro">
								</div>
							</a>
							<div class="protext">
								팬텀 비전 엘리트 DF HG(AQ9289001)
							</div>
							<div class="pricedown" style="margin-left:5px;">
							199,000원
						</div>
						</div>
				 -->
				</li>
				</ul>
			</div>
		</div>
	</div>
	</div>
</div>
<!-- 			<div id="footer">
			<div class="layout-footer">
				<div class="utilmenu">
				<div class="util_unit">
					<h4>무통장입금</h4>
					<ul>
						<li>농협 352-0878-9898-11</li>
						<li>예금주: 주식회사 사커맨</li>
					</ul>
					
				</div>
				<div class="util_unit">
					<h4>고객센터</h4>
					<ul>
						<li class="phone">1541-08217</li>
						<li>
							<span>
								<strong>상담 월~금 11시~17시(12시~3시 점심)</strong>
							</span>
							<br>
							<span>
								<strong>매장 월~금 11시~18시</strong>
							</span>
							<br>
							<span>
								<strong>매장 토요일,일요일,공휴일 휴무</strong>
							</span>
						</li>
					</ul>
				</div>
				<div class="util_unit">
					<h4>쇼핑몰정보</h4>
				<ul>
					<li>
						<a href="#">이용약관</a>
					</li>
					<li>
						<a href="#">개인정보취급방침</a>
					</li>
					<li>
						<a href="#">이용가이드</a>
					</li>
				</ul>
				</div>
				<div class="util_unit">
					<h4>공지사항</h4>
						<ul>
							<li>
								<a href="#">[공지] 환불 안내</a>
							</li>
							<li>
								<a href="#">[공지] 신규 채용 안내</a>
							</li>
							<li>
								<a href="#">[공지] 신용카드 무이자 혜택안내</a>
							</li>
							<li>
								<a href="#">[공지] 9월 이벤트 안내</a>
							</li>
						</ul>
				</div>
				</div>
				<ul id="address">
				<li class="ourinfo">
					<div class="info_box">
				 <span class="info_ad">
				 	<strong>(주)사커맨</strong>
				 	/ 대표 박병상
				 </span>
				 <span class="info_ad">
				 	광주광역시 광산구 신창동(111-11 아무개빌딩 63층)
				 </span>
				 <span class="info_ad">
				 	사업자 등록번호
				 	<strong>688-12-12345</strong>
				 </span>
				 <br>
				 <span class="info_ad">
				 	대표전화
				 	<strong>1541-08217</strong>
				 </span>
				 <span class="info_ad">FAX 0101-4477-4705</span>
				 </div>
				</ul>
				</div>
				</div>
		
	 	  -->
	 	 
	 	 
	 	 
	 	 
	 	 
</body>
</html>
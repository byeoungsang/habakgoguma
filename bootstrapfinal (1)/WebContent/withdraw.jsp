<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "include/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

@import url('https://fonts.googleapis.com/css?family=Nanum+Pen+Script');
	* {
	/*	font-family: 'Hanna', sans-serif;
		font-family: 'Nanum Brush Script', serif; */
		font-family: 'Nanum Pen Script', cursive;
	}
		
	body ul {
		font-size: 17px;
		text-size-adjust: none;
		padding: 0px;
		margin: 0px;
		
		
		
	}
	
	#wrap {
		width: 100%;
		background-color: white;
	}
	#container {
		margin: 0 auto;
		max-width: 768px;
		min-width: 460px;
	}
	#content {
		width: 460px;
		margin: 0 auto;
	}
		.error_box{
		font-size: 12px;
		color: red;
		display: none;
	}
	.input_login {
		display: block;
		position: relative;
		width: 100%;
		height: 29px;
		padding-left: 25px;
		line-height: 29px;
		border: none;
		background: fff;
		font-size: 15px;
		box-sizing: border-box;
		z-index: 10;
	}
		.ps_box_int_id {
		display: block;
	    position: relative;
	    width: 100%;
	    height: 51px;
	    border: solid 1px #dadada;
	    padding: 10px 110px 10px 14px;
	    background: #fff;
	    box-sizing: border-box;
	    vertical-align: top;
	}

	.error {
		display: none;
		color: red;
	}
	    .ps_box_int_pass {
    	padding-right: 40px;
    	display: block;
	    position: relative;
	    width: 100%;
	    height: 51px;
	    border: solid 1px #dadada;
	    padding: 10px 110px 10px 14px;
	    background: #fff;
	    box-sizing: border-box;
	    vertical-align: top;
    }    .ps_box_pass_check {
    	padding-right: 40px;
    	display: block;
	    position: relative;
	    width: 100%;
	    height: 51px;
	    border: solid 1px #dadada;
	    padding: 10px 110px 10px 14px;
	    background: #fff;
	    box-sizing: border-box;
	    vertical-align: top;
    }
		#join_contents{
		width: 320px;
		margin: 30px auto;
		
		/* border: 1px solid black; */
		
	}
	#header_div img{
		display: block;
		margin: 60px auto;
		
	}
	.contents{
		display: block;
		font-size: 17px;
		font-weight: 700;
		width: 320px;
		margin: 8px 0 6px;
	}
	.div_input{
		display: block;
		width: 309px;
		height: 25px;
		padding: 7px 5px 7px 5px;
		border: 1px solid black;
		
	}
	.input_login{
		width: 310px;
		height: 23px;
		padding: 5px 10px 5px 10px;
		font-size: 18px;
		border-radius: 3px;
		border: 1px solid #EAEAEA;
	}

	.warning {
		color: red;
		font-size: 27px;
		text-align: center;
	}
	.btn_area {
   		margin: 30px 0 9px;
   	}
   	.btnjoin {
   		color: #fff;
   		background-color: #f9320c;
   		display: block;
   		width: 100%;
   		padding: 21px 0 17px;
   		font-size: 20px;
   		font-weight: 700;
   		text-align: center;
   		cursor: pointer;
   		box-sizing: border-box;
	}
	    .agree h3 {
    	margin: 50px 0 10px;
    	font-size: 12px;
    }
    .agreeArea {
    	border-top: 2px solid #333;
    	font-size: 11px;
    	line-height: 160%;
    }
    .agree2 {
    	overflow: auto;
    	height: 200px;
    	padding: 20px;
    	background: #fff;
    	border-right: 1px solid #ccc;
    	border-left:  1px solid #ccc;
    	font-size: 17px;
    }
    .agree2 p {
    	padding: 0 0 17px;
    }
    .check {
    	text-align: right;
    	border-top: 1px solid #ccc;
    	padding: 5px 0px 5px 5px;
    	font-size: 17px;
    }
    .agree_check {
    	margin: -2px 4px 1px 10px;
    	font-size: 12px;
    	color: #1b1b1b;
    	vertical-align: middle;
    }
   	.btn_area {
   		margin: 30px 0 9px;
   	}
   	   	.util_unit {
   		float: left;
   		width: 240px;
   		display: inline-block;
   		margin: 10px 0 35px 20px;
   		font-size: 12px;
   		text-align: left;
   		border-radius: 5px;
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
   		padding: 15px;
   		font-size: 15px;
   		color: #fff;
   		font-size: 17px;
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
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){



 	
	$(".input_login").blur(function(){
		var inputval = $(this).val();//input태그에 입력된 값을 가져옴
		//input 태그 값이 없으면 경고메세지 출력
		if(inputval == ""){
			$(this).parent().next().text("필수정보입니다").css("display", "block");
		}else{
			$(this).parent().next().text("필수정보입니다").css("display", "none");
		}
	});
	

		
		


	
	
	



	alert("click");
	

	
	
	/* PW유효성 검사 */
/*  	var pw = $.trim(mpw.val());
	var pw2 = $.trim(mpw2.val());
	
	var regPass=/^.*(?=.{6,20})(?=.[0-9])(?=.*[a-zA-Z]).*$/;
	
	if(pw ==""){
		mpw.focus();
		mpw.parent().next().text("필수정보 입니다.").css("display", "block");
		return false;
	}else if(!regPass.test(pw)){
		mpw.select();
		mpw.parent().next().text("8~20자 이내 영문자, 숫자, 특수문자만 입력해주세요").css("display", "block");
		return false;			
	}else if(pw2 == ""){
		mpw2.focus();
		mpw2.parent().next().text("필수정보 입니다.").css("display", "block");
		return false;		
	}else if(pw != pw2){
		mpw2.select();
		mpw2.focus();
		mpw2.parent().next().text("비밀번호가 일치하지 않습니다.").css("display", "block");
		return false;
	}  */
	



	

	/* 유효성체크 값이 유효한값 확인 끝!!! */
	
});
$(document).on("click", "#btn_commit", function(){
	alert("333");
	//유효성 체크하는 값을 받아온다.
	

	
	/* mail = $.trim(email1.val()) + "@" + $.trim(email2.val()); */
	var nowPw = $("#input_pw").val();

 

	

	if(input_pw != "") {

		$.ajax({

			url : "memberdeleteplay.bizpoll",

			type : "POST",

			dataType : "json",

			data : "id=${sessionScope.loginUser.id}&pw=" + nowPw,

			success : function(data) {

			

				if(data.message == "-1") {

			

					location.href="index.bizpoll"

				} else {

			

					$("#input_pw").parent().next().text("비밀번호가 일치하지 않음.").css("display", "block").css("color", "#0000FF");

					$("#input_pw").focus();

				}

			},

			error:function(){

				alert("System Error!!");

			}

		});

	}

});
</script>
</head>
<body>
	<div id="join_contents">
		
	<!-- 		<div id="header_div">
				<a href="http://localhost:8081/power_action/index.bizpoll">
					<img alt="logo" src="img/slim_food.png">
				</a>
			</div> -->
		
		
		<span class= "warning">탈퇴된 회원은 다시 복구 할 수 없습니다!!</span>
		<form action="MemberDeletePlay.bizpoll" method="POST" name="frm_mem" id="frm_mem">
			<label for="input_id" class=contents>아이디</label>
				<div class="div_input" id="power_id">
					<input type="text" placeholder="" id="input_id" class="input_login" value="${sessionScope.loginUser.id}" readonly="readonly">
				</div>		
					<span class="error_box" id="error_id">필수정보입니다.</span>
			<label for="input_id" class=contents>이름</label>
				<div class="div_input" id="power_id">
					<input type="text" placeholder="" id="input_id" class="input_login" value="${sessionScope.loginUser.name}" readonly="readonly">
				</div>		
			<label for="input_pw" class=contents>비밀번호</label>
				<div class="div_input" id="power_pw">
					<input type="text" placeholder="" id="input_pw" class="input_login">		
				</div>
					<span class="error_box" class="check_pw" id="error_pw">필수정보입니다.</span>
			

										<div class="agree">
						<h3>탈퇴약관 동의</h3>
					<div class="agreeArea">
						<div class="agree2">
							<p>
							 제 1조(목적)
							<br>
							이 약관은 리얼사커가 법적으로 고지하는 글입니다
							</p>
							<p>※ 탈퇴 된 회원은 다시 복구할 수 없으며 탈퇴로 인한 피해는 보상해드릴수 없습니다
							</p>
							<p>
							제 2조(정의)
							<br>
							①리얼사커란 회사가 재화 또는 용역(이하 “재화등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터등 정보통신설비를 이용하여 재화등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.
							</p>
							<p>④ ‘탈퇴회원’이라 함은 회원을 탈퇴하고 “몰”이 제공하는 서비스를 끊은 자를 말합니다.</p>
						</div>
						<p class="check">
							<span>이용약관에 동의하십니까?</span>
							<input id="agree_check" name="agree_check" class="agree_check"
							fw-msg="이용약관에 동의하세요" value="1" type="checkbox">
							<label for="agree_check">동의함</label>
						</p>
					</div>
					</div>
		<div id="commit" class="btn_area">
			<a href="#" id="btn_commit" type="buttton" class="btnjoin">회원탈퇴완료</a>
		</div>
					</form>
					</section>
					</div>
							<div id="footer">
			<div class="layout-footer">
				<div class="utilmenu">
				<div class="util_unit">
					<h4>무통장입금</h4>
					<ul>
						<li>농협 352-0878-9898-11</li>
						<li>예금주: 주식회사 리얼사커</li>
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
				
					
</body>
</html>
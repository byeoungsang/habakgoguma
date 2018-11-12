<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="include/header.jsp" %>
  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login.jsp</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Pen+Script');
	* {
	/*	font-family: 'Hanna', sans-serif;
		font-family: 'Nanum Brush Script', serif; */
		font-family: 'Nanum Pen Script', cursive;
	}




	body,ul {
		margin: 0;
		padding: 0;
	
	}
	ul {
		list-style-type: none;
	}
	a {
		text-decpration: none;
		color: #333;
	}

	.container_wrap {
		width: 1200px;
		margin: 0 auto;
		display: block;
		margin-bottom: 60px;
		padding-top: 11px;
		padding: 0;
	}
	.breadcrumb {
		height: 49px;
		line-height: 5px;
		position: absolute;
		
	}
	.logWrap {
		width: 1200px;
		margin-top: 30px;
		padding: 20px 0;
	}
	.myTit {
		border-bottom: 2px solid #bd0909;
		padding-bottom: 5px;
		padding-left: 10px;
	}
	.myTtext {
		font-size: 35px;
		font-weight: bold;
		display: inline-block;
		color: #333;
		margin-bottom: 20px;
	}
	.logArea {
		background: #fdfdfd;
		border: 1px solid #ececec;
		padding: 20px;
		overflow: hidden;
	}
	.logAleft {
		float: left;
		overflow: hidden;
		width: 46%;
		margin: 10px 0 0 6%;
	}
	.logfiled {
		float: left;
		padding-left: 20px;
	}
	fieldset {
		border: 0px;
	}
	legend {
		visibility: hidden;
		overflow: hidden;
		position: absolute;
		top: 0;
		left: 0;
		width: 1px;
		height: 1px;
		font-size: 0;
		line-hieght: 0;
	}
	.fimid {
		overflow: hidden;
		width: 100%;
		margin-bottom: 3px;
	}
	.fimid dt {
		float: left;
		width: 40px;
		padding-top: 8px;
		font-weight: bold;
	}
	.logco {
		color: #696969;
		
	}
	.logco2 {
		color: #696969;
		
		
	}
	.fimid dd {
		float: left;
	}
	.loginp {
		height: 30px;
		border: 1px solid #ddd;
		text-indent: 5px;
		background: #ddd;
		width: 170px;
		font-size: 12px;
	}
	.login_btn {
		float: left;
		margin-left: 10px;
		width: 80px;
		height: 85px;
		line-height: 67px;
		background-color: #c70505;
		text-align: center;
		margin-top: 20px;
	}
	.login_btn a {
		color: #fff;
		font-weight: bold;
		line-height: 80px;
	}
	.logar_btn dd {
		float: left;
		font-weight: bold;
	}
	.logar_btn {
		overflow: hidden;
		margin-bottom: 10px;
	}
	.logar_btn dt {
		float: left;
		width: 200px;
		color: #908c8c;
		font-size: 20px;
	}
	.auto_login {
		display: inline-block;
		width: 100%;
		margin: 15px 0 0 90px;
		color: #000;
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
  	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	/* 	$("#login_btn_click2").click(function(){
			alert("hi")
		}) */
	});
	$(document).on("click", "#login_btn_click2", function(){
		var val1 = $("#login_id_input").val();
		var val2 = $("#login_pw_input").val();
	    if(val1 != "" && val2 != ""){
	        $("#frm_login").submit();
	        alert("전송")
	    } else {
	        $("#login_btn_errorbox").css("display", "block");
	        return;
	    }
		
	});
</script>
</head>
<body>

		<div class="container_wrap">
			<div class="breadcrumb">
				HOME > 로그인
			</div>
			<div class="logWrap">
				<div class="myTit">
					<div class="myTtext">
						로그인
					</div>
					</div>
					
					<div class="logArea">
						<div class="logAleft">
							<div class="logfiled">
								
									<input type="hidden" name="preurl" value="http://localhost:8081/soccerman/login.jsp">
									<input type="hidden" name="flag" id="flag">
									
					<form action="LoginPlay.bizpoll" method="POST" name="frm_login" id="frm_login">
				<p id="login_id" class="logco">
					<input type="text" placeholder="아이디  입력" id="login_id_input" class="logco" name="login_id_input">
				</p>
				<p id="login_pw" class="logco2">
					<input type="text" placeholder="비밀번호 입력" id="login_pw_input"class="logco2" name="login_pw_input">
				</p>
				
				<p id="login_btn_click1" class="login_btn">
					<a href="#" id="login_btn_click2"  style="cursor:pointer" >로그인</a>
				</p>
				<div id="login_btn_errorbox">id와 pw를 입력해달라고!!!!</div>
				</form>
								
								
							</div>
						<!-- 	<div class="login_btn" id="loginBtn">
								<a href="#" class="logok">로그인</a>
							</div> -->
						</div>
						<div class="logAright">
							<dl class="logar_btn">
								<dt style="float: left;">아직 회원이 아니세요?</dt>
							<dd>
								<span class="log_jbtn">
									<a href="http://localhost:8081/bootstrapfinal/member.jsp">회원가입</a>
								</span>
							</dd>
							</dl>
							<dl class="logar_btn">
								<dt>아이디와 비밀번호를 잊으셧나요?</dt>
							<dd>
								<span class="log_jbtn">
									<a href="#">아이디/비밀번호 찾기&nbsp;</a>
								</span>	
							</dd>	
							</dl>
							<dl class="logar_btn">
								<dt>비회원 구매 고객이신가요?</dt>
							<dd>
								<span class="log_jbtn">
									<a href="#">비회원 주문서 조회</a>
								</span>
							</dd>	
							</dl>
						</div>
						
						<div class="auto_login">
							<ul>
								<li style="display: inline-block; width: 150px;">
									<input type="checkbox" class="save_id" id="saveId">
									 아이디 저장
								</li>
							</ul>
						</div>
				</div>
				
			</div>
			</div>
			  <%@ include file="include/footer.jsp" %>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file = "include/header.jsp" %>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

	#header {
		position: relative;
		overflow: hidden;
		padding: 62px 0 59px;
		box-sizing: border-box;
		margin: 0 auto; 
		font: 14px;
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
	#header .h_logo {
    display: block;
    overflow: hidden;
    width: 320px;
    height: 80px;
    margin: 0 auto;
   
    background-position: -1px -1px;
 
    background-size: 460px auto;
	}
	.blind {
		position: absolute;
		overflow: hidden;
		clip: rect(0 0 0 0);
		margin: -1px;
		width: 1px;
		height: 1px;
	}
	.row_group {
		overflow: hidden;
		width: 100%;
	}
	.join_title {
		margin: 19px 0 8px;
		font-size: 14px;
		font-weight: 700;
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
	.ps_box .lbl {
	    left: 0;
	    padding: 0 14px;
	    width: 100%;
	    box-sizing: border-box;
	}
	.lbl {
	    display: block;
	    position: absolute;
	    top: 50%;
	    left: 14px;
	    margin-top: -9px;
	    font-size: 15px;
	    line-height: 18px;
	    color: #8e8e8e;
	    z-index: 9;
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
    }
    .step_txt {
    	display: inline-block;
    	position: absoulte;
    	top: 1px;
    	right: 38px;
    	font-size: 12px;
    }
    .ps_box_pass_check {
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
    .row_group {
    	margin-top: 20px;
    }
    .ps_box_right_space{
    	padding-right: 14px;
	   	display: block;
	    position: relative;
	    width: 100%;
	    height: 51px;
	    border: solid 1px #dadada;
	    padding: 10px 110px 10px 14px;
	    background: #fff;
	    vertical-align: top;
	    box-sizing: border-box;
    }
    .join_birthday {
    	padding: 0;
    }
    .bir_wrap {
    	display: table;
    	width: 100%;
    }
    .bir_yy {
    	display: table-cell;
    	table-layout: fixed;
    	width: 147px;
    	vertical-align: middle;
    }
    .ps_box_right_space {
    	padding: 11px 14px;
    	display: block;
    	width: 100%;
    	height: 51px;
    	border: solid 1px #dadada;
    	background: #fff;
    	box-sizing: border-box;
    	vertical-align: top;
    }
    .ps_box {
    	padding: 11px 14px;
    	display: block;
	    position: relative;
	    width: 100%;
	    height: 51px;
	    border: solid 1px #dadada;
	    padding: 10px 110px 10px 14px;
	    background: #fff;
	    box-sizing: border-box;
	    vertical-align: top
    }
    .join_birthday .ps_box {
    	padding: 11px; 14px;
    }
    .bir_mm {
    	padding-left: 10px;
    	display: table-cell;
    	table-layout: fixed;
    	width: 147px;
    	vertical-align: middle;
    }
    .sel {
    	width: 100%;
    	height: 29px;
    	font-size: 15px;
    	line-height: 18px;
    	color: #000;
    	border: none;
    	border-radius:0;
    	
    }
    option {
    	font-weight: normal;
    	display: block;
    	white-space: pre;
    	min-height: 1.2em;
    	padding: 0px 2px 1px;
    }
    .bir_dd {
    	padding-left: 10px;
    }
    .join_gender {
    	overflow:hidden;
    }
    .gender_code {
    	display: block;
    	width: 100%;
    	padding-right: 7px;
    	box-sizing: border-box;
    	position: relative;
    	height: 51px;
    	border: solid 1px #dadada;
    	padding: 10px 110px 10px 40px;
    	background: #fff;
    	vertical-align: top;
    }
    .join_email .terms_choice {
    	font-size: 12px;
    	font-weight: 400;
    }
    .terms-choice {
    	color: #8e8e8e;
    }
    .email_box {
    	padding-right: 14px;
    	box-sizing: border-box;
    	display: block;
    	position: relative;
    	width: 100%;
    	border: solid 1px #dadada;
    	padding: 10px 110px 10px 14px;
    	background: #fff;
    	vertical-align: top;
    }
    .postcode {
  		display: inline-block;
  		width: 100%;
  		padding: 10px 15px 10px 14px;
  		vertical-align: top;
  		position: relative;
  		height: 51px;
  		border: solid 1px #dadada;
  		box-sizing: border-box;
    }
    .btn_verify {
    	position: absolute;
    	top: 0;
    	right: 0;
    	width: 115px;
    	height: 51px;
    	padding: 18px 0 16px;
    	text-align: center;
    	box-sizing: border-box;
    	text-decoration: none;
    	display: block;
    	font-size: 15px;
    	cursor: pointer;
    	z-index: 10;
    }
      .btn_verify2 {
    	position: absolute;
    	top: 0;
    	right: 0;
    	width: 115px;
    	height: 51px;
    	padding: 18px 0 16px;
    	text-align: center;
    	box-sizing: border-box;
    	text-decoration: none;
    	display: block;
    	font-size: 15px;
    	cursor: pointer;
    	z-index: 10;
    	background-color: #f9320c;
    	color: #fff;
    }
    .mobile_postcode {
    	position:  relative;
    	margin-top: 10px;
    	padding: 0 0 0 0;
    	
    }
	.double {
		height: 25px;
		padding: 2px;
		width: 219px;
	}
	.phone_No {
		
		display: table-cell;
		table-layout: fixed;
		width: 147px;
		vertical-align: middle;
	}
    .no_box {
    	padding: 11px;
    	display: block;
    	position: relative;
    	width: 100%;
    	height: 51px;
    	border: solid 1px #dadada;
    	background: #fff;
    	box-sizing: border-box;
    	vertical-align: top;
    }
    .no_mid {
    	display: table-cell;
    	table-layout: fixed;
    	width: 147px;
    	vertical-align: middle;
    	padding-left: 10px;
    }
    .no_last {
	   	display: table-cell;
	    table-layout: fixed;
	    width: 147px;
	    vertical-align: middle;
	   	padding-left: 10px;
    }
    #modal_all {
    	width: 100%;
    	z-index: 3;
    	position: fixed;
    	top: 0;
    	left: 0;
    	height: 100%;
    	overflow: auto;
    	background-color: rgba(0,0,0,0.4);
    	padding-top: 0px;
    	display: none;
    	
    }
    #close_btn {
    	position: absolute;
    	right: 15px;
    	top: 15px;
    	color: black!important;
    	font-size: 25px;
    	padding: 5px;
    	display: block;
    }
    #content_layout {
    	position: relative;
    	background-color: white;
    	
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
   	.error {
   		color: red;
   		display: none;
   	}
   		.error_box{
		font-size: 12px;
		color: red;
		display: none;
	}
	
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
/* 	$("#input_id").blur(function(){
		var idval = $(this).val();
		
		input 태그 값이 없으면 경고메세지 출력
		if(idval == ""){
			$("#error_id").css("display", "block");
			//$(this).parent().css("margin-bottom", "30px"); 같은 div태그나 span태그에 묶여있을서 칸이 안 뛰어 질떄
		}else{
			$("#error_id").css("display", "none");
		} */
		
	$(".input_login").blur(function(){
		var inputval = $(this).val();//input태그에 입력된 값을 가져옴
		//input 태그 값이 없으면 경고메세지 출력
		if(inputval == ""){
			$(this).parent().next().text("필수정보입니다").css("display", "block");
		}else{
			$(this).parent().next().text("필수정보입니다").css("display", "none");
		}
	});
	
	$("#input_id").blur(function(){
		var idVal = $(this).val();
			
				/* 
				ajax db갔다
				View -> Controller -> Model -> DB
				*/
		if(idVal != ""){
			$.ajax({
				url: "idCheck.bizpoll",
				type: "POST",
				dataType: "json",
				data: "id=" + idVal,
				success: function(data){
					if(data.message == "-1"){
						$("#input_id").parent().next().text("이미 사용 중인 아이디 입니다.").css("display", "block").css("color", "#D46665");
						/* $("#input_id").select(); */						
					}else{
						$("#input_id").parent().next().text("아이디 굿").css("display", "block").css("color", "#0000FF");
						/* $("#input_id").select(); */
					}
				},
				error: function(){
					alert("system Error!!")	
				}
			});	
		}
	});
		
		
	$("#input_pw2").blur(function(){
		//비밀번호와 비밀번호 확인 값이 다르면 경고메세지 출력
		var pw1 = $("#input_pw").val();
		var pw2 = $("#input_pw2").val();
		if(pw1 !="" && pw2 !=""){
			if(pw1 == pw2){ //값이 일치하는 경우
				$(".check_pw").parent().next().css("display","none");
				}else{
				//값이 일치하지 않은 경우
				//1.비밀번호확인 메시지에 "비밀번호가 일치하지 않습니다."" 출력
				//2.비밀번호확인(input) -> focus가 가고
				//3.값을 초기화
					$(this).parent().next().text("비밀번호가 일치하지 않습니다.").css("display","block");
					$(this).select();
				/* $(this).val("");//input태그 값 초기화 
					$(this).focus();//focus가 그쪽으로 가게	 */
				}
		}
	});
	
	var emailSelect = $("#e_input3");
	var emailTarget = $("#e_input2");
	emailSelect.bind("change", null, function(){
		var host = this.value;
		if(host !="etc" && host !=""){
			emailTarget.attr("readonly", true);
			emailTarget.val(host).change();
		}else if(host == "etc"){
			emailTarget.attr("readonly", false);
			emailTarget.val("").change();
			emailTarget.focus();
		}else{
			emailTarget.attr("readonly", true);
			emailTarget.val("").change();
		}
	});
	
	
	
	/* 우편번호, 주소 클릭했을 때 다음 우편번호 API실행 */	
	$(".addrbtn").click(function(){
		$("#addr_btn").click();
	});

});

$(document).on("click", "#btn_commit", function(){
	//유효성 체크하는 값을 받아온다.
	var form = $("#frm_mem"),
	mid = $("#input_id"),
	mpw = $("#input_pw"),
	mpw2 = $("#input_pw2"),
	mname = $("#input_name"),
	zipcode = $("#sample6_postcode"),
	maddr1 = $("#sample6_address"),
	maddr2 = $("#sample6_address2"),
	/* memailid = $("#input_e"), */
	memailid = $("#e_input1");
	memailurl = $("#e_input2");
	mphone = $("#input_phone");
	
	/* mail = $.trim(email1.val()) + "@" + $.trim(email2.val()); */
	
	
	/* ID유효성 검사 */
	var id = $.trim(mid.val()); /* 앞 뒤 공백 제거 */
	var regId = /^[a-zA-Z0-9]{4,12}$/; /* 영문자와 숫자만 가능 */
	
	if(id ==""){
		mid.focus();
		mid.parent().next().css("display", "block");
		return false;
	}else if(!regId.test(id)){
		mid.focus();
		mid.parent().next().text("4~12까지의 영문자와 숫자만 입력해라").css("display", "block");
		return false;
	}
	
	
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
	
	/* name유효성 검사 */
	var name = $.trim(mname.val());
	var regname = /^[가-힣]*$/;
	if(name ==""){
		mname.focus();
		mname.parent().next().text("필수 정보 입니다.").css("display", "block");
		return false;
	}else if(!regname.test(name)){
		mname.focus();
		mname.parent().next().text("한글만 입력하세요").css("display","block");
		return false;
	}
	

	/* 우편번호 유효성 검사 */
	var zipcodeVal = $.trim(zipcode.val());
	var addr1 = $.trim(maddr1.val());
	var addr2 = $.trim(maddr2.val());
	
	if(zipcodeVal == ""){
		maddr2.focus();
		$("#address2").parent().next().text("필수 정보입니다1.").css("display", "block");
		return false;
	}else if(addr1 == ""){
		maddr2.focus();
		$("#address2").parent().next().text("필수 정보입니다2.").css("display", "block");
		return false;
	}else if(addr2 == ""){
		maddr2.focus();
		$("#address2").parent().next().text("필수 정보입니다3.").css("display", "block");
		return false;
	}
	
	/* mail유효성 체크 */
	var mailid = $.trim(memailid.val());
	var mailurl = $.trim(memailurl.val());
	var mail = mailid + "@" + mailurl;
	
	var regMail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

	if(mailid == ""){
		memailid.focus();
		memailid.parent().next().css("display", "block");
		return false;
	}else if(mailurl ==""){
		memailurl.focus();
		memailurl.parent().next().css("display", "block");
		return false;
	}else if(!regMail.test(mail)){
		memailid.select();
		memailid.parent().next().text("E-mail형식이 올바르지 않습니다.").css("display", "block");
		return false;
	}
	
	
	/* phone유효성 체크 */
	var phone = $.trim(mphone.val());

	var regphone =  /^01([016789]{1}|02|0[3-9{1}[0-9]{1})-?[0-9]{3,4}-?([0-9]{4})$/;

	if(phone == ""){
		mpone.focus();
		mphone.parent().next().text("필수 정보입니다.").css("display", "block");
		return false;
	}else if($.isNumeric(phone)==false){ /* 숫자값만 들어왔는지 체크 */
		mphone.select();
		mphone.parent().next().text("필수 정보입니다.").css("display", "block");
		return false;
	}else if(!regphone.test(phone)){
		mphone.select();
		mphone.parent().next().text("올바른 값을 입력하세요").css("display", "block");
		return false;
	}
	/* 유효성체크 값이 유효한값 확인 끝!!! */
	form.submit();
	
});

</script>
</head>
<body>
<div id="join_contents">
	<header>
<!-- 		<div id="header_div">
			<a href="http://localhost:8081/power_action/index.bizpoll">
				<img alt="logo" src="img/slim_food.png">
			</a>
		</div> -->
	</header>
	<section>
	<form action="memberplay.bizpoll" method="POST" name="frm_mem" id="frm_mem">
		<div id="wrap">
			<div id="container" role="main">
				<div id="content">
				<h2 class="blind">회원가입</h2>
			<div class="join_content">
				<div class="row_group">
		<label for="input_id" class=contents>아이디</label>
			<div class="ps_box_int_id" id="power_id">
				
				<input type="text" placeholder="아이디" id="input_id" class="input_login" name="input_id">
				<input type="button" onclick="" value="아이디 중복확인" class="btn_verify2">
			</div>		
				<span class="error_box" id="error_id">필수정보입니다.</span>
		
		<label for="input_pw" class=contents>비밀번호</label>
			<div class="ps_box_int_pass" id="power_pw">
				<input type="text" placeholder="비밀번호" id="input_pw" class="input_login"name="input_pw">		
			</div>
				<span class="error_box" class="check_pw" id="error_pw">필수정보입니다.</span>
		
		<label for="input_pw2" class=contents>비밀번호확인</label>
			<div class="ps_box_pass_check" id="power_pw2">
				<input type="text" placeholder="비밀번호 재확인" id="input_pw2"  class="input_login" name="input_pw2"> 		
			</div>
				<span class="error_box" class="check_pw" id="error_pw2">필수정보입니다.</span>
		
		<label for="input_name" class=contents>이름</label>
			<div class="ps_box_right_space" id="power_name">
				<input type="text" placeholder="이름" id="input_name" class="input_login" name="input_name">		
			</div>
				<span class="error_box" id="error_name">필수정보입니다.</span>
		
		<!-- <label for="input_bir" class=contents>생년월일</label>
			<div class="div_input2" id="power_ye">
				<input type="text" placeholder="년(4자)" id="input_ye" class="input_login2">		
			</div>
			
			<div class="div_input2" id="power_mon">
				<span id="birth">
					<select id="birthselect">
						<option>월</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
					</select>
				</span>
			</div>
			<div class="div_input2" id="power_day">
				<input type="text" placeholder="일" id="input_day" class="input_login2">		
			</div>
			<span class="error_box" id="error_bir">필수정보입니다.</span>
			 -->
						<div class="address">
							<h3 class="join_title">
							주소
							</h3>
						</div>
						<div class="mobile_postcode">
						<span class="postcode">
						<input type="text" id="sample6_postcode" placeholder="우편번호" class="input_login" name="sample6_postcode">
						<label for="postNo" class="lbl">우편번호</label>
						</span>
<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="btn_verify"><br>
<input type="text" id="sample6_address" placeholder="주소" class="double" name="sample6_address">
<input type="text" id="sample6_address2" placeholder="상세주소" class="double" name="sample6_address2">
		<span class="error_box" id="error_post">필수정보입니다.</span>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>
		
		<label for="input_e" class=contents>이메일</label>
			<div id = e_box>
				<span id="e_id">
					<input type="text" placeholder="ID입력" id="e_input1" class="double" name="e_input1">		
					<span id="">@</span>
					<input type="text" placeholder="" id="e_input2" class="double" name="e_input2">
				</span>
				<span id=url_select >
					<select id="e_input3" class="double">
						<option>naver.com</option>
						<option>gmail.com</option>
						<option>hanmail.net</option>
						<option>daum.net</option>
						<option>nate.com</option>
						<option>hotmail.com</option>
						<option>yahoo.co.kr</option>
					</select>
				</span>
			</div>
				<span class="error_box" id="error_e">필수정보입니다.</span>
		
		<label for="input_phone" class=contents>휴대폰 번호</label>
			<span class="ps_box_right_space" id="power_phone">
				<input type="text" placeholder="휴대폰번호" id="input_phone" class="input_login" name="input_phone">		
			</span>
				<span class="error_box" id="error_phone">필수정보입니다.</span>
								<div class="agree">
						<h3>이용약관 동의</h3>
					<div class="agreeArea">
						<div class="agree2">
							<p>
							 제 1조(목적)
							<br>
							이 약관은 사커맨이 운영하는 사커맨 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리?의무 및 책임사항을 규정함을 목적으로 합니다.
							</p>
							<p>※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 
							한 이 약관을 준용합니다」</p>
							<p>
							제 2조(정의)
							<br>
							①사커붐 이란 회사가 재화 또는 용역(이하 “재화등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터등 정보통신설비를 이용하여 재화등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.
							</p>
							<p>④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.</p>
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
			<a href="#" id="btn_commit" type="buttton" class="btnjoin">회원가입완료</a>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
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
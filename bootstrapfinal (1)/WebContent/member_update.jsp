<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file = "include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>slim food 회원가입</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
	body{
		margin: 0;
		padding: 0; 
		background-color: white;
		font-family: 'Nanum Gothic', sans-serif;
	}
	a{
		text-decoration: none;
	}
	header{
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
/* 	.div_input2{
		display: inline-block;
		width: 129px;
		height: 35px;
		padding: 7px 5px 7px 5px;
		border: 1px solid black;
	}
	#power_mon{
		margin-left: 12px;
		top: 15px;
	}
	#power_day{
		margin-left: 12px;
	}
	.input_login2{
		width: 90px;
		height: 23px;
		padding: 5px 10px 5px 10px;
		border: 1px solid red;
	}
	#birth{
		display: inline-block;
		right: 0px; 
	} */
	#address_box{
		border: 1px solid black;
		padding: 5px 5px;
	
	}
	#address_postcode{
		display: inline-block;
	}
/* 	#addr_btn{
		display: inline-block;
	} */
	#address{
		display: inline-block;
	}
	#address2{
		display: inline-block;
	}
	#e_box{
		border: 1px solid black;
		padding: 5px 5px;
	}
	.e_input{
		width: 70px;
	}
	#e_input3{
		width: 60px;
	}
	#commit{
		display: black;
		width: 320px;
		height: 45px;
		border: 1px solid black;
		text-align: center;
		font-size: 25px;
		margin: 20px 0 20px 0;
		padding-top: 5px;
	}
	#commit > a:hover{
		color: red;
	}
	#btn_commit{
		margin-top: 5px;
		color: black;
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
		email1 = $("#e_input1");
		email2 = $("#e_input2");
		mphone = $("#input_phone");
		
		mail = $.trim(email1.val()) + "@" + $.trim(email2.val());
		
		
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
		var pw = $.trim(mpw.val());
		var pw2 = $.trim(mpw.val());
		
		var regPass = /^.*(?=.{8,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
		
		/* if(pw ==""){
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
		}
		 */
		/* name유효성 검사 */
		var name = $.trim(mname.val());
		if(name ==""){
			mname.focus();
			mname.parent().next().text("필수 정보 입니다.").css("display", "block");
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
		var mailid = $.trim(email1.val());
		var mailurl = $.trim(email2.val());
		
		var mail = mailid + "@" + mailurl;
		var regMail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

		if(mailid == ""){
			email1.focus();
			email1.parent().next().css("display", "block");
			return false;
		}else if(mailurl ==""){
			email2.focus();
			email2.parent().next().css("display", "block");
			return false;
		}else if(!regMail.test(mail)){
			email1.select();
			email1.parent().next().text("E-mail형식이 올바르지 않습니다.").css("display", "block");
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
			<label for="input_id" class=contents>아이디</label>
				<div class="div_input" id="power_id">
					<input type="text" placeholder="" id="input_id" class="input_login" value="${sessionScope.loginUser.id}" readonly="readonly">
				</div>		
					<span class="error_box" id="error_id">필수정보입니다.</span>
			
			<label for="input_pw" class=contents>비밀번호</label>
				<div class="div_input" id="power_pw">
					<input type="text" placeholder="" id="input_pw" class="input_login">		
				</div>
					<span class="error_box" class="check_pw" id="error_pw">필수정보입니다.</span>
			
			<label for="input_pw2" class=contents>비밀번호확인</label>
				<div class="div_input" id="power_pw2">
					<input type="text" placeholder="" id="input_pw2"  class="input_login">		
				</div>
					<span class="error_box" class="check_pw" id="error_pw2">필수정보입니다.</span>
			
			<label for="input_name" class=contents>이름</label>
				<div class="div_input" id="power_name">
					<input type="text" placeholder="" id="input_name" class="input_login" ${sessionScope.loginUser.name}>		
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
			<label for="input_api" class=contents>주소</label>
			<div id="address_box">
				<div id="address_postcode" class="addrbtn">
					<input type="text" class="input_api" id="sample6_postcode" placeholder="우편번호" readonly="readonly">
				</div>
				
					<input type="button" class="input_api" id="addr_btn" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>

				<div id="address" class="addrbtn">
					<input type="text" class="input_api" id="sample6_address" placeholder="주소" readonly="readonly">
				</div>
				
				<div id="address2">
					<input type="text" class="input_api" id="sample6_address2" placeholder="상세주소">
				</div>
			</div>
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
						<input type="text" placeholder="ID입력" id="e_input1" class="e_input">		
						<span id="">@</span>
						<input type="text" placeholder="" id="e_input2" class="e_input">
					</span>
					<span id=url_select>
						<select id="e_input3">
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
				<span class="div_input" id="power_phone">
					<input type="text" placeholder="" id="input_phone" class="input_login">		
				</span>
					<span class="error_box" id="error_phone">필수정보입니다.</span>
			<div id="commit">
				<a href="#" id="btn_commit">회원수정완료</a>
			</div>
		</form>
		</section>
	</div>
	</body>
	</html>
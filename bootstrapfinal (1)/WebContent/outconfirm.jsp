<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
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
</head>
<body>
	<div id="join_contents">
		
	<!-- 		<div id="header_div">
				<a href="http://localhost:8081/power_action/index.bizpoll">
					<img alt="logo" src="img/slim_food.png">
				</a>
			</div> -->
		
		<section>
		<span class= "warning"></span>
		<form action=".bizpoll" method="POST" name="frm_mem" id="frm_mem">
			<label for="input_id" class=contents>아이디</label>
				<div class="div_input" id="power_id">
					<input type="text" placeholder="" id="input_id" class="input_login" value="${sessionScope.loginUser.id}" readonly="readonly">
				</div>		
					<span class="error_box" id="error_id">필수정보입니다.</span>
	</form>
	</section>
	</div>
	
</body>
</html>
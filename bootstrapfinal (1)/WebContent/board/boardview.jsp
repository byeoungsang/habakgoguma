<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ include file= "../include/header.jsp" %> 
 <%
	String Path = request.getContextPath(); // 컨텍스트 경로
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	/*@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
@import url(http://fonts.googleapis.com/earlyaccess/nanumbrushscript.css); */
@import url('https://fonts.googleapis.com/css?family=Nanum+Pen+Script');
	* {
	/*	font-family: 'Hanna', sans-serif;
		font-family: 'Nanum Brush Script', serif; */
		font-family: 'Nanum Pen Script', cursive;
	}

	body {
		margin: 0;
		padding: 0;
	}
	.content {
		margin-top: -40px;
		position: relative;
		max-width: 1080px;
		margin: 0 auto;
	}
	.sidebar-content-header {
		padding: 16px;
	}
	.sidebar-button {
		display: table;
		width: 100%;
		table-layout: fixed;
	}
	.sidebar-button_item {
		padding-left: 0;
		padding-right: 0;
		display: table-cell;
	}
	.button {
		display: block;
		padding: 11px 0 10px;
		line-height: 17px;
		font-size: 14px;
		box-sizing: border-box;
		text-align: center;
		border-color: #46cfa7;
		background-color: #46cfa7;
		color: #fff;
		border-radius: 4px;
		border: 1px solide #dddfe4;
		cursor: pointer;
	}
	.sidebar-menu {
		display: block;
		border-top: 1px solid #ebeef1;
		padding: 9px 16px 8px;
	}
	.sidebar-menu_list{
		padding-bottom: 8px;
		line-height: 15px;
		font-size: 12px;
		color: #7b858e;
	}
	.sidebar-menu_item {
		color: #1e2022;
		border-radius: 4px;
		line-height: 17px;
		font-size: 14px;
	}
	.sidebar-menu_item--active {
		border-radius: 4px;
		background: #f8f9fa;
		color: #16ae81;
	}
	.sidebar {
		display:block;
		width: 257px;
		float: left;
		z-index: 1000;
		will-change: min-height;
		position: absolute; 
		top: 0;
		bottom: 0;
		right: 0;
		left: 0;
		margin-top: 100px;
		
	}
	.sidebar-content-header {
		padding: 16px;
		box-shadow: 0 1px 3px 0 rgba(0,0,0,.15);
	}
	.sidebar-content {
		box-shadow: 0 1px 3px 0 rgba(0,0,0,.15);
	}
	.sidebar-menu_title {
		padding-bottom: 8px;
		line-height: 15px;
		font-size: 12px;
		color: #7b858e;
	}
	ul {
		list-style: none;
	}
	.sidebar-menu_item a{
		padding: 8px 12px 7px;
		
	}
	li > a {
		display: block;
	}
	a {
		text-decoration: none;
		color: inherit;
		cursor: pointer;
	}
	#content2 {
		float:right;
		box-sizing: border-box;
		width: 806px;
		box-shadow: 0 1px 3px 0 rgba(0,0,0,.15);
	}

	.article-header {
		padding-left: 24px;
		padding-right: 24px;
	}
	..article-meta {
		margin-top: 9px;
		line-height: 17px;
		font-size: 14px;
		color: #7b858e;
	}
/* 	.article-write_title {
		color: #le2022;
		line-height: 21px;
		font-weight: 700;
		font-size: 18px;
	}
	.article-write-input-select {
		margin-top: 24px;
	}
	.article-write-label{
		display: block;
		position: relative;
	}
	.article-write_label {
		position: absolute;
		left: 0;
		top: 0;
		width: 1px;
		height: 1px;
		visibility: hidden;
	}
	.article-write_select {
		position: relative;
		border: 1px solid #dddfe4;
		border-radius:  4px;
		padding: 10px 38px 9px 15px;
		line-height: 19px;
		font-size: 16px;
		color: #1e2022;
		
	} */
	option {display: block;
		font-weight: normal;
	}
/* 	.article-write-input {
		margin-top: 16px;
	}
	.article-write_text {
		display: block;
		width: 100%;
		background-color: #fff;
		border: 1px solid #dddfe4;
		padding: 10px 16px 9px;
		font-size: 16px;
		line-height: 19px;
		color: #1e2022;
		box-sizing: border-box;
	}
	.article-write-input-link {
		margin-top: 8px;
	}
	.article-write-label {
		display: block;
		position: relative;
	}
	.article_write_label {
		/* position: absolute; */
		left: 0;
		top: 0;
		/* width: 1px;
		height: 1px; */
		/* visibility: hidden; */
	}
	.article-write_text {
		padding-left: 48px;
		background: #f8f9fa;
		display: block;
		width: 100%;
		border: 1px solid #dddfe4;
		padding: 10px 16px 9px;
		line-height: 19px;
		font-size: 16px;
		color: #1e2022;
		box-sizing: border-box;
	}
	.article-write-label:before {
		position: absolute;
		content: "";
		background-size: 24px;
		width: 24px;
		height: 24px;
		z-index: 1;
		top: 8px;
		left: 16px;
		/* background: url(../img/clip2.jpg);  */
	}
	.article-write-content {
		margin-top: 16px;
	}
	
	#board_writebox {
		height: 400px;
		padding-top: 5px;
	}
	#content_input {
		height: 400px;
		width: 100%;
		font-size: 24px;
	}
	.article-write-button {
		left: 0;
		top: 0;
		width: 100%;
		
	}
	.article-write_button-cancle{
		margin-left: 0;
		line-height: 19px;
		font-size: 16px;
		color: #7b858e;
		border-radius: 4px;
		background-color: #fff;
		border: 1px solid #dddfe4;
		width: 154px;
		height: 48px;
		margin-top: 16px;
	}
	.article-write_button-submit{
		margin-right: 0;
		float: right;
		margin-top: 16px;
		color: #fff;
		background-color: #46cfa7;
		width: 154px;
		height: 48px;
		line-height: 19px;
		font-size: 16px;
		border: 1px solid #dddfe4;
		border-radius: 4px;
	}
	button {
		cursor: pointer;
	}

	#content_input {
		height: 350px;
		width: 100%;
	} */
		#modal_box{
		text-align: center;
		border: 1px solid black;
		border-radius: 15px;
		height: 100px;
		width: 400px;
		/* display: none; */
		
	}
	#modal_head{
		font-size: 20px;
		margin: 18px 15px;
	}
	#modal_btn_box{
	
	}
	.modal_btn{
		font-size: 22px;
		margin: 3px 5px;
	}
	.warning_board {
		width: 100px;
		height: 100px;
				display: block;
		padding: 11px 0 10px;
		line-height: 17px;
		font-size: 14px;
		box-sizing: border-box;
		text-align: center;


		color: #fff;
		border-radius: 4px;
		border: 1px solide #dddfe4;
		cursor: pointer;
	}
		.article_title {
		line-height: 36px;
		font-size: 24px;
		color: #1e2022;
		
	}
	/* .error {
		font-size: 12px;
		color: red;
		display: none;
	}
	
	.article-write_title {
		float: right;
	}

	.article-content {
		padding-left: 24px;
		padding-right: 24px;
		width: 100%;
		box-sizing: border-box;
		padding: 24px 16px;
		font-size: 16px;
		color: #1e2022;
		box-shadow: 0 1px 3px 0 rgba(0,0,0,.15);
		
	} */
	.article {
		background: #fff;
		box-shadow: 0 1px 3px 0 rgba(0,0,0,.15);
	}
	.article-meta-list {
		margin-top: 0;
		float: left;
	}
	.artilce-meta_item-name {
		margin-left: 0;
		padding-left: 0;
		display: inline-block;
		vertical-align: middle;
		position:relative;
	}
	.warning_login {
		padding: 16px;
		box-shadow: 0 1px 3px 0 rgba(0,0,0,.15);
		width: 210px;
		border: 1px solid black;
		background-color: #D4DFE6;
		position: absolute;
		padding: 100px;
		z-index: 1;
		margin: 50px;
	}
	.article-write_title {
		float: right;
		margin-top: 0;
	}
	.article-meta_item {
		margin-left: 0;
		padding-left: 0;
		display: inline-block;
		vertical-align: middle;
		position:relative;		
	}
	.article-content-wrap {
		padding-left: 24px;
		padding-right: 24px;
		width: 100%;
		box-sizing: border-box;
		line-height: 24px;
		font-size: 16px;
		color: 1e2022;
		
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	/* modal창 켜고 끄기 */
		$("#modal_box").click(function(){
		$("#modal_box").css("display","none");

	});
		$("#warning_board").click(function(){
			
			$("#modal_box").css("display","block");
	
	});
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
<div class="content">
		<div class="sidebar">
			<div class="sidebar-content-header">
				<div class="sidebar-button">
					<div class="sidebar-button_item">
						<a href="../login.bizpoll" class="button button--green">로그인</a>
					</div>
				</div>
			</div>
			<div class="sidebar-content">
				<div class="sidebar-menu">
					<div class="sidebar-menu_title">홈</div>
					<ul class="sidebar-menu_list">
						<li class="sidebar-menu_item sidebar-menu_item--active">
							<a href="#">
								전체
							</a>
					</ul>
				</div>
				<div class="sidebar-menu">
					<div class="sidebar-menu_title">정보</div>
					<ul class="sidebar-menu_list">
						<li class="sidebar-menu_item">
							<a href="#">
								RealSoccer 기획
							</a>
						</li>
						<li class="sidebar-menu_item">
							<a href="#">
								공지사항
							</a>	
						</li>
						<li class="sidebar-menu_item">
							<a href="#">
								이벤트
							</a>	
						</li>	
					</ul>
				</div>
				<div class="sidebar-menu">
					<div class="sidebar-menu_title">커뮤니티</div>
					<ul class="sidebar-menu_list">
						<li class="sidebar-menu_item">
							<a href="#">
								자유게시판
							</a>
						</li>
						<li class="sidebar-menu_item">
							<a href="#">
								축구게시판
							</a>
						</li>
						<li class="sidebar-menu_item">
							<a href="#">
								중고
							</a>
						</li>
						<li class="sidebar-menu_item">
							<a href="#">
								축구화 추천
							</a>
						</li>
						<li class="sidebar-menu_item">
							<a href="#">
								건의 사항
							</a>
						</li>
	
					</ul>
				</div>
			</div>
		</div>
		
		<div id="content2">
			<div id="view">
				<div class="article">
		
			<div class="article-header">
				<div class="article_title">${boardview.title}
				<div class="artilce-meta">
					<div class="article-meta-list">
						<div class="artilce-meta_item-name">
							${sessionScope.loginUser.id}
						</div>
			

					</div>
				</div>
				<div  class="article-write_title">
					<div class="article-meta_item">
						<span>게시글 ${boardview.bno}번</span>
					</div>
					<div class="article-meta_item">
						<span>조회수 ${boardview.viewcnt}회</span>
					</div>
				</div>
				</div>
				</div>
				</div>
							</div>
	
</div>
				
				
		<c:choose>
		<c:when test="${empty sessionScope.loginUser}">
														<div class="warning_login">
			<span class="warning_write">게시판을 사용하시려면 로그인을 먼저 하시게나</span>
				<form action="LoginPlay2.bizpoll" method="POST" name="frm_login" id="frm_login">
				<p id="login_id" class="logco">
					<input type="text" placeholder="아이디  입력" id="login_id_input" class="logco" name="login_id_input">
				</p>
				<p id="login_pw" class="logco2">
					<input type="text" placeholder="비밀번호 입력" id="login_pw_input"class="logco2" name="login_pw_input">
				</p>
				
				<p id="login_btn_click1" class="login_btn">
					<a href="#" id="login_btn_click2"  style="cursor:pointer" >로그인</a>
				</p>
				<div class="error">id와 pw를 입력해달라고!!!!</div>
				</form>
					</div>
						</c:when>
		<c:otherwise>
		<div></div>		
		</c:otherwise>
	</c:choose> 
				<div id="article-content-wrap">
				<div class="article-content">					
			${boardview.content}
			</div>


<%-- <div>${boardview.filename}(${boardview.filesize})</div> --%>
	<th>첨부파일</th>
	<a href="download.bizpoll?file=${boardview.filename}">${boardview.filename}
	(<fmt:formatNumber pattern="0.0" value="${boardview.filesize/1024}"/>byte)</a>
	


<div>
	<c:choose>
		 <c:when test="${empty sessionScope.loginUser}">
	
		</c:when> 
		<c:otherwise>
		<div>로그인됨</div>		
		</c:otherwise>
	</c:choose>
			<c:if test="${sessionScope.loginUser.id == boardview.writer }">
		<button type="submit" class="reply_btn btn-warning btn-primary">수정</button>
		<button type="submit" class="reply-btn btn-danger btn-primary">삭제</button>
		</c:if>	
					</div>
			
			
			</div>
			</div>
</body>
</html>
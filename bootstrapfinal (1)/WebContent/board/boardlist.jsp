<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file= "../include/header.jsp" %> 
<%
	String Path = request.getContextPath(); // 컨텍스트 경로
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	.sub-header-info {
		padding-top: 18px;
		padding-bottom: 17px;
	}
	.sub-header {
		position: relative;
		background-color: #fff;
		box-shadow: 0 1px 3px 0 rgba(0,0,0,.15);
	}
	.sub-header_title {
		padding-left: 16px;
		line-height: 21px;
		font-size: 18px;
		color: #1e2022;
		font-weight: 700;
	}
	.sub-header-button {
		position: absolute;
		top: 0;
		right: 0;
		margin-top: 16px;
		margin-right: 16px;
	}
	.sub-header-button_item--search {
		display: none;
	}
	.sub-header-button_item--search>.subheader-button {
		display: block;
		width: 24px;
		height: 24px;
		background-size: 100%;
		
	}
	.sub-header-button_item {
		display: inline-block;
		margin-left: 16px;
		vertical-align: top;
	}
	#content2 {
		float: right;
		box-sizing: border-box;
		width: 806px;
	}
	div {
		margin: 0;
		padding: 0;
		border: 0;
		vertical-align: baseline;
	}
	.sub-link {
		overflow-x: auto;
		overflow-y: hidden;
		max-height: 48px;
	}
	.sub-link_list {
		padding: 0 16px;
		white-space: nowrap;
	}
	.sub-link_item {
		display: inline-block;
		line-height: 17px;
		font-size: 14px;
		color: #7b858e;
	}
	.sub-link_item a{
		display: block;
		padding: 10px 2px 14px;
	}
	.sub-link_item img {
		margin-right: 4px;
		vertical-align: miidle;
	}
	a span { vertical-align: middle; 
	}
	.sub-header-search {
		display: block;
		position: absolute;
		right: 0;
		bottom: 0;
		margin-right: 6px;
		margin-bottom: 6px;
	}
	.sub-header-search_select {
		float: left;
		width: 122px;
		padding: 9px 0 8px 15px;
		box-sizing: border-box;
		border: 1px solid #ebeef1;
		border-radius: 4px 0 0 4px;
		line-height: 17px;
		font-size: 14px;
		color: #98a0a7;
		
	}
	.sub-header-search_input {
		float: left;
		border: none;
		width: 200px;
		box-sizing: border-box;
		padding: 10px 32px 9px 16px;
		border-top-right-radius: 4px;
		border-bottom-right-radius: 4px;
		background-color: #ebeef1;
		line-height: 17px;
		font-size: 14px;
	}
	.sub-header-search_button {
		float: left;
		position: absolute;
		top: 0;
		right: 0;
		margin-top: 6px;
		margin-right: 8px;
	}
	.article-list {
		background: #f8f9fa;
		margin-top: 8px;
		line-height: 60px;
		font-size: 14px;
		color: #7b858e;
		box-shadow: 0 1px 3px 0 rgba(0,0,0,.15);
		display: block;
	}
	.article-list2 {
		margin-top: 0;
		border-top: 1px solid #ebeef1;
		background: #f8f9fa;
		margin-top: 8px;
		line-height: 60px;
		font-size: 14px;
		color: #7b858e;
		box-shadow: 0 1px 3px 0 rgba(0,0,0,.15);
	}
	.article-list-item {
		border-top: none;
		position: relative;
		display: table;
		teble-layout: fixed;
		width: 100%;
		box-sizing: border-box;
		background-color: #fff;
		padding: 8px 0;
	}
	.article-list-item_vote {
		width: 72px;
		vertical-align: middle;
		display: table-cell;
		text-align: center;
	}table {
		border-top: 1px solid #ebeef1;
		text-align :center;
		width: 100%;
		font-size: 32px;
		
	}
	
/* 	.cont {
		line-height: 20px;
		font-size: 14px;
		color: #1e2022;
		vertical-align: middle;
		
	} */
	#tr_id > td {
		border-bottom: 1px solid #eee;
	}
	.new_time {
		
	}
	.menuimg {
		width: 20px;
		height: 20px;
	}
	.menuimg > img {
		width: 100%;
		height: 100%;
	}
	#pilsu {
		width: 100px;
		height: 100px;
		box-sizing: border-box;
	}
	#sub-menu{
		width: 300px;
		height: 150px;
	}
	.pagination > li {
		display: inline-block;
		padding: 25px;
		line-height: 0px;
		padding-right: 40px;
	}
	.pagination {
		box-shadow: 0 1px 3px 0 rgba(0,0,0,.15);
		font-size: 25px;
		height: 50px;
	}
	
	
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="<%=path %>/smarteditor/js/service/HuskyEZcreator.js" charset="utf-8"></script>
<script type="text/javascript">
$(document).ready(function(){
	/* 	$("#login_btn_click2").click(function(){
			alert("hi")
		}) */

	$(document).on("click", "#p", function(){
		var flag= $("#target").val();
		
		var keyword = $("#q").val();
		
		location.href="boardSearch.bizpoll?flag="+flag+"&keyword="+keyword;
		
		
	});
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
		<div class="sub-header">
			<div class="sub-header-info">
				<h2 class="sub-header_title">
					<a href="#">전체</a>
				</h2>
				<ul class="sub-header-button">
					<!-- <li class="sub-header-button_item">
						<button id="search-toggle-button" class="subheader-button">검색하기</button>
						<img src="img/search.png" alt="검색하기" width="24">
					</li> -->
					<li class="sub-header-button_item">
						<a href="<%=path%>/boardInsert.bizpoll">
							<img src="img/write.png" alt="글쓰기" width="24">
							<span>글쓰기</span>
						</a>
					</li>	
				</ul>
			</div>
			<div class="sub-link" id="sub-menu">
<!-- 				<div id="pilsu">
					<ul class="sub-link_list">
						<li class="sub-link_item sub-link_item--active">
							<a href="#">
								<div class="menuimg">
								<img src="img/fire.png" width="24" ></div>
									<span>인기</span>
							</a>
						</li>
						<li class="sub-link_item">
							<a href="#">
							<div class="menuimg">
								<img src="img/wow.jpg" width="24" ></div>
									<span>최신</span>
							</a>	
						</li>	
						<li class="sub-link_item">
							<a href="#">
							<div class="menuimg">
								<img src="img/up.jpeg" width="24" ></div>
									<span>조회</span>
							</a>
						</li>	
					</ul>
				</div> -->
				<div class="sub-header-search">
						<!-- <form action="boardSearch.bizpoll" method="POST" name="frm_login" id="frm_login"> -->
						<label>
							<select id="target" name="target" class="sub-header-search_select">
								<option value="1">제목</option>
								<option value="2">내용</option>
								<option value="3">제목+내용</option>
								<option value="4">작성자</option>
							</select>
						</label>
						<input type="text" name="q" id="q" class="sub-header-search_input" placeholder="검색">
						<button class="sub-header-search_button" id="p">
							<img src="img/searchbar.png" width="24" alt="검색">
						</button>
						
						
				</div>
				</div>
				</div>
				
				
			<section class="article-list">
				<article class="article-list-item">
			<table>
				<tr>
					<th>No.</th><th>제목</th><th>작성자</th><th>작성일</th><th>추천수</th><th>조회수</th><th>첨부파일</th>
				</tr>
				<c:forEach items="${boardList }" var="bDto">
				<fmt:formatDate value="${ today}" pattern="yyyy-MM-dd" var="today2"/>
				<fmt:formatDate value="${bDto.regdate }" pattern="yyyy-MM-dd" var="regdate2"/>
				<tr id="tr_id">
					<td id="no" class="no">${bDto.bno }</td>
					<td id="cont" class="cont">
					<a href="boardViewcnt.bizpoll?bno=${bDto.bno}" class="table_a">
								${bDto.title}
							</a>
					
					<c:if test="${today2 == regdate2 }">
						<span class="new_time"></span>
						<img src="img/new.jpeg" width="48" alt="#">
					</c:if>
					
					
					
					</td>
					<td id="name" class="name">${bDto.writer }</td>
					<td id="date" class="date">
					
					
					<c:choose>
						<c:when test="${today2 == regdate2 }">
							<fmt:formatDate pattern="HH:mm:ss" value="${bDto.regdate }"/>
						</c:when>
						<c:otherwise>
							<fmt:formatDate pattern="yyyy-MM-dd" value="${bDto.regdate }"/>
						</c:otherwise>
					</c:choose>
					
					</td>
					<td id="goodcnt">${bDto.goodcnt }</td>
					<td id="click">${bDto.viewcnt }</td>
					<td id="text_center">
						<c:if test="${bDto.filesize > 0 }">
							<i class="fa fa-floppy-o"></i>
						</c:if>
					</td>
				</tr>
			</c:forEach>
				
			</table>
			</article>
			</section>


						<ul class="pagination">
			<c:if test="${pageMaker.prev }">
				<li><a href="boardList.bizpoll?page=${pageMaker.startPage -1 }">&laquo;</a>
				</li>
			</c:if>
			
	
			

			<c:forEach begin="${pageMaker.startPage}"

				end="${pageMaker.endPage}" var="idx">

				<li

					<c:out value="${pageMaker.criDto.page == idx? 'class=active':''}"/>>

					<a href="boardList.bizpoll?page=${idx}&flag=${flag}&keyword=${keyword}">${idx}</a>

				</li>

			</c:forEach>

			

			<c:if test="${pageMaker.next}">

				<li>

					<a href="boardList.bizpoll?page=${pageMaker.endPage + 1}">&raquo;</a>

				</li>

			</c:if>

		</ul>
<%-- 			<section class="article-list">
			</section>
			<section class="article-list2">
				
				<c:forEach items="${boardList }" var="bDto">
<				<div class="article-list-item">
				<div class="article-list-item_vote">
					<img src="#" alt>
					<span>${bDto.bno}</span>
				</div>
			</div> 
			
				<tr>
					<td class="text_center">${bDto.bno }</td>
					<td><a href="boardviewcnt.bizpoll?bno=${bDto.title }"></a>
					
				
					${bDto.title }
			</c:forEach>
			</section> 
		
	
			</div>
			</div>
</body>
	<%-- <c:foreach items="${boardList }" var="bDto"> --%>
<%-- 	<tr>
	
	</tr>
	</c:foreach>
	 --%>
	
				</div>
			</div>
</html>
<%-- <%@ include file="include/footer.jsp" %> --%>
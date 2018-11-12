<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="3; url=index.bizpoll">
<title>Insert title here</title>
<style type="text/css">

</style>
<script type="text/javascript">
	var cnt=5;
	function countdown(){
		if(cnt == 0){
			clearInterval(s);
			location.href="index.bizpoll";
		}
		document.getElementById("rCnt").innerHTML=cnt;
		cnt--;
	}
	var	s = setInterval(countdown, 1000); //1초 단위로 countdown()

</script>
</head>
<body>
	<div id="join_ok">
		<div class="welcome_text text1">가입해주셔서 감사합니다.</div>
		<div class="welcome_text text2">
			<span id="rCnt">5</span>
			초후에 메인페이지로 이동
		</div>		
		
		
		<!-- 카운트 다운 활용하는 방법 
		1.
		2.
		-->
		
	</div>
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 1. 사용자 정보를 가져온다. 세션 정보를 가져온다 -->
<%
boolean flag = (Boolean)request.getAttribute("flag");
if (flag == true) {
%>
<!-- 화면설계 -->
<html>
<head>
	<title>회원탈퇴</title>
</head>
<meta http-equiv="Refresh" content="3;url=login.do">
<body>
	<main>
		<font size="5" face="바탕체"> 회원정보가 삭제되었습니다<br></br> 안녕히 가세요 ! ㅠ.ㅠ<br></br>
			3초후에 로그인 페이지로 이동합니다
		</font>
	</main>
<%
}else {
%>
	<script>
		alert("비밀번호가 맞지 않습니다");
		history.go(-1);
	</script>
<%
}
%>
</body>
</html>
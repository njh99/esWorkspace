<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 1. 사용자 정보를 가져온다. 세션 정보를 가져온다 -->
<!-- CURD -->
<!-- 화면설계 -->
<%
response.sendRedirect("login.jsp");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>logout</title>
</head>
<body>
	<h3> 성공적으로 로그아웃 되었습니다.<br> 
	<a href="login.do">로그인 페이지로 이동</a>
	</h3>
</body>
</html>
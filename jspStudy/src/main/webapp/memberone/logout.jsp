<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 1. 사용자 정보를 가져온다. 세션 정보를 가져온다 -->
<%
session.invalidate();
%><!-- 섹션 해제 -->
<!-- CURD -->
<!-- 화면설계 -->
<%
response.sendRedirect("login.jsp");
%>
<!-- <!DOCTYPE html>
<html>
<head>
<title>Logout</title>
</head>
<body>
	<font size="4">성공적으로 로그아웃 되었습니다.<br></br>
	<a href="login.jsp">로그인 페이지로 이동</a>
	</font>
</body>
</html> -->
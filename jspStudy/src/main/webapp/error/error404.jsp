<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage="true"%>
<%
response.setStatus(HttpServletResponse.SC_OK);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404예외발생</title>
</head>
<body>
	<h1>요청처리 과정에서 예외가 발생되지 않고 잘 처리 되었습니다.</h1>
	<h1>요청한 페이지가 존재하지 않습니다.</h1>
</body>
</html>
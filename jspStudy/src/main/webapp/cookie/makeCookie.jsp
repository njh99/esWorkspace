<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Cookie cookie = new Cookie("name",URLEncoder.encode("나종호", "UTF-8"));
	response.addCookie(cookie);
	
	
%>
<!DOCTYPE html>
 <html>
 <head><title>쿠키생성</title></head>
 <body>
 <%= cookie.getName() %> 쿠키의 값 = "<%= cookie.getValue() %>"
 </body>
 </html>
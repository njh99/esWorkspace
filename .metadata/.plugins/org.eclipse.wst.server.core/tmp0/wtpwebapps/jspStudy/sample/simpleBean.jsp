<%@page import="co.kh.dev352.SimpleVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 사용자 정보가져온다 -->
<%
request.setCharacterEncoding("UTF-8");
/* String message1 = request.getParameter("message1");
String message2 = request.getParameter("message2");
SimpleVO svo = new SimpleVO(message1, message2); */
%>
<jsp:useBean id="simpleVO" class="co.kh.dev352.SimpleVO"/>
<jsp:setProperty name ="simpleVO" property="*"/>
<!DOCTYPE html>
<html>
<body>
	<h1>간단한 빈즈 프로그램 결과</h1>
	<hr color="red"></hr>
	<br></br>
	<h3>메세지1 :<jsp:getProperty name="simpleVO" property="message1"/></h3>
	<h3>메세지2 :<jsp:getProperty name="simpleVO" property="message2"/></h3>
	
</body>
</html>
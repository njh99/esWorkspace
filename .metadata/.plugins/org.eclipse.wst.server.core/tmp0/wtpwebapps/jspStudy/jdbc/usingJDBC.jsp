<%@page import="java.util.ArrayList"%>
<%@page import="co.kh.dev.memberone.model.StudentDAO"%>
<%@page import="co.kh.dev.tempmember.model.TempMemberVO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 1. 사용자정보를 가져온다  -->
<!-- 2. CURD -->
<%
StudentDAO tmdao = new StudentDAO();
/* ArrayList<TempMemberVO> templist = ; // DB에서 사용자 목록 가져오기 */
int counter = 0;
%>
<!-- 3. 화면설계(자바코드(x) -> jsp service 진행) -->
<!DOCTYPE html>
<html>
<head>
<title>JSP에서 데이터베이스 연동</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
	<h2>JSP 스크립틀릿에서 데이터베이스 연동 예제입니다....</h2>
	<br></br>
	<h3>회원정보</h3>
	<table bordercolor="oceanblue" border="1">
		<tr>
			<td><strong>ID</strong></td>
			<td><strong>PASSWD</strong></td>
			<td><strong>NAME</strong></td>
			<td><strong>MEM_NUM1</strong></td>
			<td><strong>MEM_NUM2</strong></td>
			<td><strong>E_MAIL</strong></td>
			<td><strong>PHONE</strong></td>
			<td><strong>ZIPCODE</strong></td>
			<td><strong>ADDRESS</strong></td>
			<td><strong>JOB</strong></td>
		</tr>
<%
     
       
 
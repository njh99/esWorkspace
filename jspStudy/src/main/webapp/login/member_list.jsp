<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="co.kh.dev352.login.model.LoginDAO"%>
<%@ page import="co.kh.dev352.login.model.LoginVO"%>
<%
// 로그인 정보 리스트 가져오기
LoginDAO ldao = new LoginDAO();
ArrayList<LoginVO> list = ldao.listLogin(); // DB에서 사용자 목록 가져오기
%>

<html>
<head>
<title>가입자 리스트</title>
<style>
th, td {
	text-align: center;
}
</style>
</head>
<body>
	<%
	response.setContentType("text/html;charset=UTF-8");
	ldao = new LoginDAO();
	list = ldao.listLogin();
	out.println("<html>");
	out.println("<head><title>가입자 리스트</title></head>");
	out.println("<body>");
	for (int i = 0; i < list.size(); i++) {
		String id = list.get(i).getId();
		String pass = list.get(i).getPass();
		String name = list.get(i).getName();
		out.println("<table align=center width=500 border=1>");
		out.println("<tr>");
		out.println("<th width=100>아이디</th>");
		out.println("<td width=100 align=center>" + id + "</td>");
		out.println("<th width=100>비밀번호</th>");
		out.println("<td width=100 align=center>" + pass + "</td>");
		out.println("<th width=100>이름</th>");
		out.println("<td width=100 align=center>" + name + "</td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("<p>");
	}
	out.println(
			"<p align=center><input type='button' onclick = \"location.href = 'login_main.jsp' \" value='이전화면으로'></p>");
	out.println("</body>");
	out.println("</html>");
	%>
</body>
</html>
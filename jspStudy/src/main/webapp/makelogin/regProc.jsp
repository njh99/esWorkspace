<%@page import="co.kh.dev.makelogin.model.MakeLoginDAO"%>

<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 1. 사용자정보를 가져온다 -->
<!-- 2. CURD -->
<% request.setCharacterEncoding("utf-8");
MakeLoginDAO mdao = new MakeLoginDAO();
 %>
 <jsp:useBean id="mvo" class="co.kh.dev.makelogin.model.MakeLoginVO" />
 <jsp:setProperty name="mvo" property="*" />
 <% 
boolean flag = mdao.insertDB(mvo);
 %>
<!DOCTYPE html>
<!-- 3. 화면설계 -->
<html>
 <head>
 <title>회원가입 확인</title></head>
 <link href="style.css" rel="stylesheet" type="text/css">
 <body bgcolor="#FFFFCC">
 <br></br>
 <main>
 <%
 if(flag){
  out.println("<b>회원가입을 축하 드립니다.</b><br/>");
  out.println("<a href=login.jsp>로그인</a>");
 }else{
  out.println("<b>다시 입력하여 주십시오.</b><br/>");
  out.println("<a href=regForm.jsp>다시 가입</a>");
 }
 %>
 </main>
 </body>
 </html>
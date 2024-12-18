<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 1. 사용자 정보를 가져온다. 세션 정보를 가져온다 -->

<%
request.setCharacterEncoding("UTF-8"); 

%>
 <jsp:useBean id="sdao" class="co.kh.dev.memberone.model.StudentDAO"/>
 <jsp:useBean id="svo" class="co.kh.dev.memberone.model.StudentVO">
     <jsp:setProperty name="svo" property="*"/>
 </jsp:useBean>
 <!-- CURD -->
 <%
 String id = (String)session.getAttribute("id");
 svo.setId(id);
 boolean flag = sdao.updateDB(svo);
 %>
<!-- 화면설계 -->
 <html>
 <head><title>Update Process</title></head>
 <meta http-equiv="Refresh" content="3;url=login.jsp">
 <link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="script.js"></script>
 <body>
 	<main>
<%
	if(flag == true){
		session.setAttribute("pass",svo.getPass());
%>
		<!--  -->
 		<p>
 			입력하신 내용대로 <b>회원정보가 수정 되었습니다.</b><br></br>
 			3초후에 Logon Page로 이동합니다
 		</p>
<% 
	}else{
%>
		<!-- //수정이 잘못 되었다는 html 코드가 오면 됨. -->
 		<p>
 			입력하신 내용대로 <b>회원정보가 수정 되었습니다.</b><br></br>
 			3초후에 Logon Page로 이동합니다
 		</p>
		
<%
	}
%>
 </main>
 </body>
 </html>
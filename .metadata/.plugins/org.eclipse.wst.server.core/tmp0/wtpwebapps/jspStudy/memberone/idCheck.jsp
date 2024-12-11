<%@page import="co.kh.dev.memberone.model.StudentVO"%>
<%@page import="co.kh.dev.memberone.model.StudentDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 1. 사용자정보를 가져온다 -->
<!-- 2. CURD -->
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");

StudentVO svo = new StudentVO();
svo.setId(id);
StudentDAO sdao = new StudentDAO();
boolean flag = sdao.selectIdCheck(svo);
%>
<!DOCTYPE html>
<html>
<head>
<title>ID중복체크</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<body>
	<br>
	<main>
		<%
		if (flag == true) {
			out.println(id + "는 이미 존재한는 ID입니다.<br></br>");
		} else {
			out.println(id + "는 사용 가능 합니다.<br></br>");
		}
		%>
		<button onClick="javascript:self.close()">닫기</button>
	</main>
</body>
</html>
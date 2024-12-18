<%@ page contentType="text/html; charset=UTF-8"%>
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
		String id = (String)request.getAttribute("id");
		boolean check = (boolean)request.getAttribute("check");
		System.out.println("idCheck.jsp check ="+check);
		if (check == true) {
			out.println(id + "는 이미 존재한는 ID입니다.<br></br>");
		} else {
			out.println(id + "는 사용 가능 합니다.<br></br>");
		}
		%>
		<button onClick="javascript:self.close()">닫기</button>
	</main>
</body>
</html>
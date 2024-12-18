<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="co.kh.dev352.login.model.LoginDAO"%>
<%@ page import="co.kh.dev352.login.model.LoginVO"%>
<!-- 1. 사용자정보를 가져온다  -->

<%
// 1.1 전송된 값을 UTF-8로 설정하기
request.setCharacterEncoding("UTF-8");

// 1.2 사용자 입력 받은 정보
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String name = request.getParameter("name");

boolean successFlag = false;
%>
<!-- 2. CURD -->
<%
// 2. 로그인 정보 객체 생성 및 DB에 저장
LoginDAO ldao = new LoginDAO();
LoginVO lvo = new LoginVO(id, pass, name);
successFlag = ldao.newLogin(lvo);
String message =(successFlag == true)?("가입 성공했습니다."):("가입 실패했습니다.");
%>
<!-- 3. 화면설계(자바코드(x) -> jsp service 진행) -->

	<html>
	<head>
	<script>
	window.onload = function() {
	    alert('<%= message %>');
	    window.location.href = 'login_main.jsp';
	};
	</script>
	</head>
	<body>
	</body>
	</html>

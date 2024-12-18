<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="co.kh.dev352.login.model.LoginDAO"%>
<%@ page import="co.kh.dev352.login.model.LoginVO"%>
<!-- 1. 사용자정보를 가져온다  -->
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String pass = request.getParameter("pass");
%>
<!-- 2. CURD -->
<!-- 3. 화면설계(자바코드(x) -> jsp service 진행) -->

<%
boolean successFlag = false;

if (id != null && pass != null) {
	// 1. LoginVO 객체 생성
	LoginVO lvo = new LoginVO(id, pass);
	LoginDAO ld = new LoginDAO();

	// 2. selectLogin 메서드를 호출하여 로그인 정보 확인
	LoginVO rlvo = ld.selectLogin(lvo);
	successFlag = rlvo.isSuccessFlag();

	// 3. 로그인 성공 시 세션을 생성하여 사용자 정보 저장
	if (successFlag) {
		session.setAttribute("id", id);
		session.setAttribute("pass", pass);
		session.setAttribute("name", rlvo.getName());
		response.sendRedirect("login_main.jsp");
	} else {
%>
<script>
	alert('로그인 실패했습니다.');
	window.location.href = 'login_main.jsp';
</script>
<%
}	// 3. 로그인 성공 시 세션을 생성하여 사용자 정보 저장 end
}else{
	%>
	<script>
		alert('아이디와 패스워드가 입력에러입니다.');
		window.location.href = 'login_main.jsp';
</script>
<% 
}	//아이디와 패스워드 end
%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="co.kh.dev352.login.model.LoginDAO"%>
<%@ page import="co.kh.dev352.login.model.LoginVO"%>
<!-- 1. 사용자정보를 가져온다  -->
<!-- 2. CURD -->
<!-- 3. 화면설계(자바코드(x) -> jsp service 진행) -->
<html>
<head>
<title>회원 탈퇴</title>
<style>
#my_table {
	margin: 0 auto;
	border-collapse: collapse;
}
</style>
</head>
<body>

	<%
	if (session != null) {
		String id = (String) session.getAttribute("id");
		LoginDAO ldao = new LoginDAO();
		LoginVO lvo = new LoginVO(id);
		boolean successFlag = ldao.deleteLogin(lvo);

		if (successFlag) {
			// 탈퇴 성공
			session.invalidate(); // 세션 무효화
	%>
	<script>
		alert('탈퇴 성공했습니다.');
		window.location.href = 'login_main.jsp'; // 리다이렉트
	</script>
	<%
	} else {
	// 탈퇴 실패
	%>
	<script>
		alert('세상에 탈퇴실패가 가능했나요.');
		window.location.href = 'login_main.jsp'; // 리다이렉트
	</script>
	<%
	}
	} else {
	// 세션이 없다면 로그인 페이지로 이동
	%>
	<script>
		alert('로그인 세션이 만료되었습니다. 다시 로그인해주세요.');
		window.location.href = 'login_main.jsp'; // 리다이렉트
	</script>
	<%
	}
	%>

</body>
</html>
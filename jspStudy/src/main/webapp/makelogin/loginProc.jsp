<%@page import="co.kh.dev.makelogin.model.MakeLoginVO"%>
<%@page import="co.kh.dev.makelogin.model.MakeLoginDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String pass1 = request.getParameter("pass1");
MakeLoginDAO mdao = new MakeLoginDAO();
MakeLoginVO mvo = new MakeLoginVO();
mvo.setId(id);
mvo.setPass1(pass1);
int check = mdao.selectLoginCheck(mvo);
%>
<%
if (check == 1) {//로그인 성공
	session.setAttribute("id", id);
	session.setAttribute("pass1", pass1);
	response.sendRedirect("mainhomepage.jsp");
} else if (check == 0) {//아이디는 있는데 비밀번호 오류
%>
<script>
//이전화면으로 가게한다.
	alert("비밀번호가 틀렸습니다");
	history.go(-1);
</script>
<%
} else {//아이디 자체가 존재하지 않는 경우
%>
<script>
	alert("아이디가 존재하지 않습니다");
	history.go(-1);
</script>
<%
}
%>
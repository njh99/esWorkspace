<%@page import="co.kh.dev.memberone.model.StudentVO"%>
<%@page import="co.kh.dev.memberone.model.StudentDAO"%>
<%@ page contentType="text/html; charset=euc-kr" %>
<%
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");
%>
<%
StudentDAO sdao = new StudentDAO();
StudentVO svo = new StudentVO();
svo.setId(id);
svo.setPass(passwd);
int check = sdao.selectLoginCheck(svo);
if (check == 1) {
	session.setAttribute("memId", id);
	response.sendRedirect("sessionLogInConfirm.jsp");
} else if (check == 0) {
%>

<script>
	alert("��й�ȣ�� ���� �ʽ��ϴ�.");
	history.go(-1);
</script>
<%
} else {
%>
<script>
	alert("���̵� ���� �ʽ��ϴ�..");
	history.go(-1);
</script>
<%
}
%>
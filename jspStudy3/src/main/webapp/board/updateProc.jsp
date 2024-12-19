<%@ page contentType="text/html; charset=UTF-8"%>

<%
String pageNum = (String)request.getAttribute("pageNum");
boolean flag = (Boolean)request.getAttribute("flag");
//1: 성공, 2. 패스워드문제, 3 수정문제 
if (flag == true) {
%>
<meta http-equiv="Refresh" content="0;url=list.jsp?pageNum=<%=pageNum%>">
<%
} else  {
%>
<script language="JavaScript">
	alert("비밀번호가 맞지 않습니다");
	history.go(-1);
</script>
<%
}
%>

<%@ page contentType="text/html; charset=UTF-8"%>
 <!--top 영역  -->
<%@ include file="./top.jsp"%>
<%
//지역변수
String name = "NJH";
%>
<!--바디영역  -->
<h2>body 영역입니다.</h2>
<form method="post" action="/jspStudy/memberInsert">
	<table align="center" width="500" border="1">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" id="id"><span></span></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pw" id="pw"><span></span></td>
		</tr>
		<tr>
			<td>비밀번호확인</td>
			<td><input type="password" name="pwd" id="pwd"><span></span></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" id="name"><span></span></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input type="date" name="birthday" id="birthday"><span></span></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="email" name="mail" id="mail"><span></span></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="저장">&nbsp;&nbsp;
				<input type="reset" value="취소"></td>
		</tr>
	</table>
</form>
<!--푸터영역  -->
<%@ include file="./bottom.jsp"%>
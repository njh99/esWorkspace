<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원탈퇴</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="script.js"></script>
<!-- 내부 자바 스크립트 -->
<script language="javascript">
	function begin() {
		document.myForm.pass.focus();
	}
	function checkPass() {
		if (!document.myForm.pass.value) {
			alert("비밀번호를 입력하지 않았습니다");
			document.myForm.pass.focus();
			return false;
		}
	}
</script>
</head>
<body onload="begin()">
<main>
	<form name="myForm" method="post" action="deleteProc.jsp" onsubmit="return checkPass()">
		<table width="260" border="1" align="center">
			<tr>
				<td colspan="2" align="center"><b>회원 탈퇴</b></td>
			</tr>
			<tr>
				<td width="150">
					<b>비밀번호입력</b></td>
				<td width="110">
					<input type="password" name="pass" size="15"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit"value="회원탈퇴">
					<input type="button" value="취  소" onclick="javascript:window.location='login.jsp'"></td>
			</tr>
		</table>
	</form>
	</main>
</body>
</html>
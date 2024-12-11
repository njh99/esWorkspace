<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
<link href="style.css" rel="stylesheet" type="text/css" />
 <script language="javascript" src="loginscript.js"></script>
</head>
<body onload="onLoad()">
<main>
	<form method="post" action="regProc.jsp" class="regForm">
		<table border="1">
			<tr>
				<td colspan="2" align="center">회원 가입 입력</td>
			</tr>
			<tr>
				<td align="center">아이디 :</td>
				<td><input type="text" id="id" /> 
				<input type="button" value="중복확인" onClick="idCheck()" /><span></span></td>
			</tr>
			<tr>
				<td align="center">패스워드 :</td>
				<td><input type="password" id="pwd" /><br><span></span></td>
			</tr>
			<tr>
				<td align="center">패스워드 확인:</td>
				<td><input type="password" id="pwd2" /><span></span></td>
			</tr>
			<tr>
				<td align="center">이름 :</td>
				<td><input type="text" id="name" /><span></span></td>
			</tr>
			<tr>
				<td align="center">전화번호 :</td>
				<td><select id="phone1">
						<option value="010">010</option>
				</select> - <input type="text" id="phone2" size="5" /> - <input
					type="text" id="phone3" size="5" /></td>
			</tr>
			<tr>
				<td align="center">이메일 :</td>
				<td><input type="text" id="email" /></td>
			</tr>
			<tr>
				<td align="center">생년월일</td>
				<td><input type="date" id="birthday" id="birthday"></td>
			</tr>
			<tr>
				<td align="center">우편번호 :</td>
				<td><input type="text" id="zipcode" /> 
				<input type="button" value="찾기" onClick="zipCheck()" /></td>
			</tr>
			<tr>
				<td align="center">주소 :</td>
				<td><input type="text" id="address1" size="50" /></td>
			</tr>
			<tr>
				<td align="center">상세주소 :</td>
				<td><input type="text" id="address2" size="30" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="회원가입" onClick= "" />&nbsp;&nbsp;
				<input type="reset" value="다시입력" /></td>
			</tr>
		</table>
	</form>
	</main>
</body>
</html>
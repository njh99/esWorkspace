<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="loginscript.js"></script>
<script src="https://kit.fontawesome.com/6498553759.js" async
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Jua&family=Kablammo&display=swap"
	rel="stylesheet">
<style type="text/css">
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	font-family: "Jua", sans-serif;
	font-weight: 400;
	font-style: normal;
}

a {
	text-decoration: none;
	color: rgb(0, 0, 0);
}

header>nav {
	height: 150px;
	width: 100%;
	margin: 0 auto;
	padding: 5px;
	background-color: white;
	display: flex;
	flex-direction: row;
	flex-wrap: nowrap;
	justify-content: space-between;
	align-items: center;
	font-size: 15px;
}

div.nav_futlogo {
	display: flex;
	flex-direction: row;
	justify-content: flex-start;
	align-items: center;
	font-size: 15px;
}

nav>ul {
	display: flex;
	flex-direction: row;
	flex-wrap: nowrap;
	justify-content: space-around;
	align-items: center;
}

div.nav_futlogo i {
	color: rgb(0, 0, 0);
	font-size: 32px;
	margin: 5px;
}
.bun{
width: 70px;
height: 50px;
}
.epl{
width: 50px;
height: 50px;
}
.sea{
width: 50px;
height: 50px;
}
.la{
width: 50px;
height: 50px;
}
div.nav_futlogo a:hover {
	color: blue;
}

ul.nav_menu {
	list-style-type: none;
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	font-size: 24px;
}

ul.nav_menu li {
	padding: 10px 40px;
	font-size: 10px;
}

ul.nav_menu li a i {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

ul.nav_menu li a:hover {
	color: blue;
}

ul.nav_icon {
	list-style-type: none;
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
}

ul.nav_icon a {
	font-size: 12px;
	padding: 10px;
}

ul.nav_icon a:hover {
	color: blue;
}

i {
	font-size: 35px;
}

.dropdown {
	position: relative;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: white;
	min-width: 150px;
	z-index: 1;
}

div.dropdown-content a {
	display: block;
	padding: 14px 16px;
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>
</head>
<body onload="onLoad()">
	<header>
		<nav>
			<div class="nav_futlogo">
				<a href="#"><i class="fa-solid fa-futbol"></i></a> <a href="#">메인메뉴</a>
			</div>
			<div>
				<ul class="nav_menu">
					<li><a href="#"><img src="./media/LaLiga_EA_Sports_2023_Vertical_Logo.svg.png"alt="laliga" class="la"><br><span>LALIGA</span></a></li>
					<li><a href="#"><img src="./media/pl-main-logo.png"alt="laliga" class="epl"></i><br><span>EPL</span></i></a></li>
					<li><a href="#"><img src="./media/bundesliga-logo.png"alt="laliga" class="bun"><br><span>BUNDES</span></a></li>
					<li><a href="#"><img src="./media/Serie_A_logo_2022.svg.png"alt="laliga" class="sea"></i><br><span>SERIE</span></a></li>
				</ul>
			</div>


			<ul class="nav_icon">
				<li><a href="#"><i class="fa-regular fa-comment"></i></a></li>
				<li><a href="#"><i class="fa-solid fa-question"></i></a></li>
				<li><a href="#"><i class="fa-solid fa-bars"></i></a></li>
			</ul>
		</nav>

	</header>
	<main>
		<form method="post" action="regProc.jsp" class="regForm">
			<table border="1">
				<tr>
					<td colspan="2" align="center">회원 가입 입력</td>
				</tr>
				<tr>
					<td align="center">아이디 :</td>
					<td><input type="text" id="id" /> <input type="button"
						value="중복확인" onClick="idCheck()" /><span></span></td>
				</tr>
				<tr>
					<td align="center">패스워드 :</td>
					<td><input type="password" id="pwd" /><br> <span></span></td>
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
					</select> - <input type="text" id="phone2" size="5" /> - <input type="text"
						id="phone3" size="5" /></td>
				</tr>
				<tr>
					<td align="center">이메일 :</td>
					<td><input type="email" id="email" /></td>
				</tr>
				<tr>
					<td align="center">생년월일</td>
					<td><input type="date" id="birthday" id="birthday"></td>
				</tr>
				<tr>
					<td align="center">우편번호 :</td>
					<td><input type="text" id="zipcode" /> <input type="button"
						value="찾기" onClick="zipCheck()" /></td>
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
					<td colspan="2" align="center"><input type="submit"
						value="회원가입" onClick="" />&nbsp;&nbsp; <input type="reset"
						value="다시입력" /></td>
				</tr>
			</table>
		</form>
	</main>
</body>
</html>
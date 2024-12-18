<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" href="regform.css" />
<script src="regForm.js"></script>
<script src="https://kit.fontawesome.com/6498553759.js"
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Jua&family=Kablammo&display=swap"
	rel="stylesheet">
<style type="text/css">
main {
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>
<script type="text/javascript">
//아이디 체크
function idCheck(id) {
	let value = document.regForm.id.value;
	if (value === "") {
		alert("아이디를 입력해 주세요.");
		document.regForm.id.focus();
	} else {

		url = "idCheck.jsp?id=" + value;
		window.open(url, "post", "width=500,height=350");
	}


}

//주소체크
function zipCheck() {
	url = "zipCheck.jsp?check=y";
	window.open(url, "post", "toolbar=no ,width=500 ,height=300 ,directories = no, status = yes, scrollbars = yes, menubar = no");
}

//동 체크
function dongCheck() {
	let value = document.zipForm.dong.value;
	if (value === "") {
		alert("00동을 입력해주세요.");
		document.zipForm.dong.focus();
		return;
	}
	document.zipForm.submit();


}

//주소내영을 불러주는 윈도우창 각 요소에 저장
function sendAddress(zipcode, sido, gugun, dong, bunji) {
	var address = sido + " " + gugun + " " + dong + " " + bunji;
	opener.document.regForm.zipcode.value = zipcode;
	opener.document.regForm.address1.value = address1;
	self.close();
}

</script>
</head>
<body>
	<header>
		<nav class="nav_naver">
			<div class="dropdown1">
				<button onclick="myFunction()" class="dropbtn1">
					<i class="fa-solid fa-bars"></i>
				</button>
				<div id="myDropdown" class="dropdown-content1">
					<a href="#home">공지사항</a> <a href="#about">고객센터</a> <a
						href="#contact">게시판</a>
				</div>
			</div>
			<div class="nav_naver_font">
				<a class="naver_logo" href="#"><i
					class="fa-solid fa-basket-shopping"></i></a> <a class="sport_logo"
					href="#">CART</a> <a class="sport_logo" href="#">MYPAGE</a>
			</div>
		</nav>
		<nav class="top_menu">
			<div class="header-logo">
				<i class="fa-solid fa-futbol"></i> <a href="mainhomepage.jsp">KICK OFF</a>
			</div>
			<ul class="header-menu">
				<li class="dropdown"><a href="#" class="dropbtn"><img
						src="./media/LaLiga_EA_Sports_2023_Vertical_Logo.svg.png"
						alt="laliga" class="la"></img></a>
					<div class="dropdown-content">
						<a href="#">바르셀로나</a> <a href="#">레알 마드리드</a> <a href="#">ATM</a>
					</div></li>
				<li class="dropdown"><a href="#" class="dropbtn"><img
						src="./media/pl-main-logo.png" alt="laliga" class="epl"></img></a>
					<div class="dropdown-content">
						<a href="#">맨체스터 시티</a> <a href="#">첼시</a> <a href="#">아스날</a> <a
							href="#">맨체스터 유나이티드</a> <a href="#">토트넘</a>
					</div></li>
				<li class="dropdown"><a href="#" class="dropbtn"><img
						src="./media/bundesliga-logo.png" alt="laliga" class="bun"></img></a>
					<div class="dropdown-content">
						<a href="#">바이에르 뮌헨</a> <a href="#">도르트문트</a>

					</div></li>
				<li class="dropdown"><a href="#" class="dropbtn"><img
						src="./media/Serie_A_logo_2022.svg.png" alt="laliga" class="bun"></img></a>
					<div class="dropdown-content">
						<a href="#">인테르</a> <a href="#">AC밀란</a>

					</div></li>
			</ul>

			<ul class="header-icons">
				<li><a href="login.jsp">LOGIN</a></li>
			</ul>
		</nav>
	</header>
	<!-- 헤더 부분 끝 -->
	<main>
	<form method="post" action="regProc.jsp" name="regForm">
		<!-- 네이버 회원가입 화면-->
		<!-- 레이아웃 구성 -->

		<!-- 컨테이너 레이아웃 -->
		<div>
			<!-- 가운데 레이아웃 -->
			<div>
				<!-- 로고 레이아웃 -->
				<div id="logo-container">
					
				</div>
				<!-- 컨테이너 레이아웃 -->
				<div id="container">
					<!-- 아이디 레이아웃 -->
					<div class="content">
						<div class="input-label">아이디</div>
						<div class="inline">
							<input class="input-style" type="text" name="id" />
							<input type="button" value="중복확인" onClick="idCheck()" />
						</div>
					</div>
					<br />

					<!-- 비밀번호 레이아웃 -->
					<div class="content">
						<div class="input-label">비밀번호</div>
						<div class="inline">
							<input class="input-style" type="password" name="pass1"/>
						</div>
					</div>
					<br />

					<!-- 비밀번호 확인 레이아웃 -->
					<div class="content">
						<div class="input-label">비밀번호 확인</div>
						<div class="inline">
							<input class="input-style" type="password"name="pass2" />
						</div>
					</div>
					<br />

					<!-- 이름 레이아웃-->
					<div class="content">
						<div class="input-label">이름</div>
						<div class="inline">
							<input class="input-style" type="text"name="name"/>
						</div>
					</div>
					<br />
					<!-- 이름 레이아웃-->
					<div class="content">
						<div class="input-label">전화번호</div>
						<div class="inline">
							<input class="input-style" type="text"name="phone" />
						</div>
					</div>
					<br />
				
						<div class="content">
							<div class="input-label">이메일</div>
							<div class="inline">
							<input class="input-style" type="text" name="email"/>
						</div>
					</div>
					<br />
						<div class="content">
							<div class="input-label">우편번호  <input type="button" value="찾기" onClick="zipCheck()" /></div>
							<div class="inline">
							<input class="input-style" type="text" name="zipcode"/>
						
						</div>
					</div>
					<br />
						<div class="content">
							<div class="input-label">주소</div>
							<div class="inline">
							<input class="input-style" type="text" name="address1"/>
						</div>
					</div>
					<br />
						<div class="content">
							<div class="input-label">상세주소</div>
							<div class="inline">
							<input class="input-style" type="text" name="address2"/>
						</div>
					</div>
					<br />
					<!-- 버튼 레이아웃 -->
					<div class="content">
						<div class="inline">
							<button class="join-button" onclick="inputCheck()">가입하기</button>
						</div>
					</div>
				</div>
				<br />
			</div>
		</div>
</form>
</main>
</body>

</html>



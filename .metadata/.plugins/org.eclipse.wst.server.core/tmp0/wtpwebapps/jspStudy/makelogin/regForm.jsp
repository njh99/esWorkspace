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
				<i class="fa-solid fa-futbol"></i> <a href="#">KICK OFF</a>
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
							<input class="input-style" type="text" />
						</div>
					</div>
					<br />

					<!-- 비밀번호 레이아웃 -->
					<div class="content">
						<div class="input-label">비밀번호</div>
						<div class="inline">
							<input class="input-style" type="password" />
						</div>
					</div>
					<br />

					<!-- 비밀번호 확인 레이아웃 -->
					<div class="content">
						<div class="input-label">비밀번호 확인</div>
						<div class="inline">
							<input class="input-style" type="password" />
						</div>
					</div>
					<br />

					<!-- 이름 레이아웃-->
					<div class="content">
						<div class="input-label">이름</div>
						<div class="inline">
							<input class="input-style" type="text" />
						</div>
					</div>
					<br />

					<!-- 생년월일 레이아웃-->
					<div class="content">
						<div class="input-label">생년월일</div>
						<div class="flex">
							<!-- stlye display 요소를 inline으로 적용해서 바꿔줌-->
							<div class="inline">
							<input type="date" name="birthday" id="birthday">
						</div>
						</div>
					</div>
					<br />

						<div class="content">
							<div class="input-label">이메일</div>
							<div class="inline">
							<input class="input-style" type="text" />
						</div>
					</div>
					<br />
						<div class="content">
							<div class="input-label">우편번호</div>
							<div class="inline">
							<input class="input-style" type="text" name="zipcode"/>
						<input type="button" value="찾기" onClick="zipCheck()" />
						</div>
					</div>
					<br />
						<div class="content">
							<div class="input-label">주소</div>
							<div class="inline">
							<input class="input-style" type="text" />
						</div>
					</div>
					<br />
						<div class="content">
							<div class="input-label">상세주소</div>
							<div class="inline">
							<input class="input-style" type="text" />
						</div>
					</div>
					<br />
					<!-- 버튼 레이아웃 -->
					<div class="content">
						<div class="inline">
							<button class="join-button">가입하기</button>
						</div>
					</div>
				</div>
				<br />
			</div>
		</div>
</body>

</html>

</main>

</body>
</html>
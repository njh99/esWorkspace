<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Log in</title>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
	border: none;
}

body {
	font-size: 14px;
	font-family: 'Roboto', sans-serif;
}
main{
display: flex;
justify-content: center;
align-items: center;
}

.login-wrapper {
	width: 400px;
	height: 350px;
	padding: 40px;
	box-sizing: border-box;
}

.login-wrapper>h2 {
	font-size: 24px;
	color: #6A24FE;
	margin-bottom: 20px;
}

#login-form>input {
	width: 100%;
	height: 48px;
	padding: 0 10px;
	box-sizing: border-box;
	margin-bottom: 16px;
	border-radius: 6px;
	background-color: #F8F8F8;
}

#login-form>input::placeholder {
	color: #D2D2D2;
}

#login-form>input[type="submit"] {
	color: #fff;
	font-size: 16px;
	background-color: #6A24FE;
	margin-top: 20px;
}

#login-form>input[type="button"] {
	color: #fff;
	font-size: 16px;
	background-color: #6A24FE;
	margin-top: 20px;
}

#login-form>input[type="checkbox"] {
	display: none;
}

#login-form>label {
	color: #999999;
}

#login-form input[type="checkbox"]+label {
	cursor: pointer;
	padding-left: 26px;
	background-image: url("checkbox.png");
	background-repeat: no-repeat;
	background-size: contain;
}

#login-form input[type="checkbox"]:checked+label {
	background-image: url("checkbox-active.png");
	background-repeat: no-repeat;
	background-size: contain;
}
</style>
  <link rel="stylesheet" href="mainhomepage.css" />
    <script src="mainhomepage.js"></script>
<script src="https://kit.fontawesome.com/6498553759.js" async
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&family=Kablammo&display=swap"
	rel="stylesheet">
</head>
<body>
  <header>
  	<nav class="nav_naver">
       <div class="dropdown1">
  <button onclick="myFunction()" class="dropbtn1"><i class="fa-solid fa-bars"></i></button>
  <div id="myDropdown" class="dropdown-content1">
    <a href="#home">공지사항</a>
    <a href="#about">고객센터</a>
    <a href="#contact">게시판</a>
  </div>
</div>
      <div class="nav_naver_font">
          <a class="naver_logo" href="#"><i class="fa-solid fa-basket-shopping"></i></a>
          <a class="sport_logo" href="#">CART</a>
          <a class="sport_logo" href="#">MYPAGE</a>
      </div>
        </nav>
   <nav class="top_menu">
    <div class="header-logo">
      <i class="fa-solid fa-futbol"></i>
      <a href="#">KICK OFF</a>
    </div>
    <ul class="header-menu">
      <li class="dropdown">
        <a href="#" class="dropbtn"><img src="./media/LaLiga_EA_Sports_2023_Vertical_Logo.svg.png"alt="laliga" class="la"></img></a>
        <div class="dropdown-content">
          <a href="#">바르셀로나</a>
          <a href="#">레알 마드리드</a>
          <a href="#">ATM</a>
        </div>
      </li>
      <li class="dropdown">
        <a href="#" class="dropbtn"><img src="./media/pl-main-logo.png"alt="laliga" class="epl"></img></a>
        <div class="dropdown-content">
          <a href="#">맨체스터 시티</a>
          <a href="#">첼시</a>
          <a href="#">아스날</a>
          <a href="#">맨체스터 유나이티드</a>
          <a href="#">토트넘</a>
        </div>
      </li>
      <li class="dropdown">
        <a href="#" class="dropbtn"><img src="./media/bundesliga-logo.png"alt="laliga" class="bun"></img></a>
        <div class="dropdown-content">
          <a href="#">바이에르 뮌헨</a>
          <a href="#">도르트문트</a>

        </div>
      </li>
      <li class="dropdown">
        <a href="#" class="dropbtn"><img src="./media/Serie_A_logo_2022.svg.png"alt="laliga" class="bun"></img></a>
        <div class="dropdown-content">
          <a href="#">인테르</a>
          <a href="#">AC밀란</a>
          
        </div>
      </li>
    </ul>

    <ul class="header-icons">
      <li>
        <a href="login.jsp">LOGIN</a>
      </li>
    </ul>
	</nav>

  </header>
	<main>
	<section>
		<div class="login-wrapper">
			<form method="post" action="loginProc.jsp" id="login-form">
			<h2>Login</h2>
				<input type="text" name="id" placeholder="ID"> <input
					type="password" name="pass1" placeholder="Password">
				<label for="remember-check"> </label> <input type="submit"
					value="Login"> <input type="button" value="회원가입"
					onClick="javascript:window.location='regForm.jsp'">
			</form>
		</div>
</section>
	</main>
</body>
</html>
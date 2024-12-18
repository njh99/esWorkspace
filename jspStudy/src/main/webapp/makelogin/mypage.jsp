<%@ page contentType="text/html; charset=UTF-8"%>
<%
String id = (String) session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<script src="script.js?timestamp=<%= System.currentTimeMillis() %>"></script>
  <link rel="stylesheet" href="mainhomepage.css" />
  <script src="mainhomepage.js"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Jua&family=Kablammo&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/01ba7af47f.js" crossorigin="anonymous"></script>
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
          <a class="sport_logo" href="#">CART |</a>
          <a class="sport_logo" href="mypage.jsp">MYPAGE |</a>
          <a class="sport_logo" href="#">LOGOUT</a>
      </div>
        </nav>
   <nav class="top_menu">
    <div class="header-logo">
      <i class="fa-solid fa-futbol"></i>
      <a href="mainhomepage.jsp">KICK OFF</a>
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
        <a href="login.jsp" 
				onclick="window.open(this.href, '_blank', 'width=500, height=350'); return false;">환영합니다</a>
      </li>
    </ul>
	</nav>

  </header>
	<main>
	<table border="1" width="300">
			<tr>
				<td colspan="3" align="center"><%=id%>님 원하시는 버튼을 선택해주세요</td>
			</tr>
			<tr>
				<td align="center" width="100"><a href="modifyForm.jsp">정보수정</a></td>
				<td align="center" width="100"><a href="deleteForm.jsp">회원탈퇴</a></td>
				<td align="center" width="100"><a href="logout.jsp">로그아웃</a></td>
			</tr>
		</table>
		</main>
</body>
</html>
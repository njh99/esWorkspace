<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<%
String id = (String) session.getAttribute("id");
%>
<html lang="UTF-8">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>KICK OFF</title>
  <script src="script.js?timestamp=<%= System.currentTimeMillis() %>"></script>
  <link rel="stylesheet" href="mainhomepage.css" />
  <script src="mainhomepage.js"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Jua&family=Kablammo&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/01ba7af47f.js" crossorigin="anonymous"></script>
<style type="text/css">
main{
display: flex;
justify-content: center;
align-items: center;
}
</style>
</head>

<body>
  <!-- 헤더부분 -->
  	<%
		if (id == null) {
		%>
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
        <a href="login.jsp">LOGIN</a>
      </li>
    </ul>
	</nav>

  </header>

  <!-- ì¸ì ë¶ë¶ -->
  <section onload="carousel();">
    <div class="slideshow">
      <div class="slideshow_slides">
        <a href="#"><img src="./media/e6849145-1156-430c-be71-b082bdf50769__1600X612.jpg" alt="1" /></a>
        <a href="#"><img src="./media/002-retail-1263-retro-christmas-jumpers-shop-categorydesktop-2160x720-comp.jpg" alt="2" /></a>
        <a href="#"><img src="./media/EA018846.jpg" alt="3" /></a>
        <a href="#"><img src="./media/캡처.PNG" alt="4" /></a>
      </div>
      <div class="slideshow_nav">
        <a href="#" class="prev"><i class="fa-solid fa-circle-chevron-left"></i></a>
        <a href="#" class="next"><i class="fa-solid fa-circle-chevron-right"></i></a>
      </div>
      <div class="slideshow_indicator">
        <a href="#"><i class="fa-regular fa-circle-dot"></i></a>
        <a href="#"><i class="fa-regular fa-circle-dot"></i></a>
        <a href="#"><i class="fa-regular fa-circle-dot"></i></a>
        <a href="#"><i class="fa-regular fa-circle-dot"></i></a>
      </div>
    </div>
  </section>

  <!-- ë©ì¸ë¶ë¶ -->
  <main>

    <div><h1>Week Best</h1></div>
    <div class="best_item">
    	<a href="#"><img src="./media/다운로드1.jpg">  <span>레알마드리드 홈 유니폼<br> <del>189000원</del> 139000원</span></a>
    	<a href="#"><img src="./media/다운로드11.jpg">  <span>AT마드리드 홈 유니폼<br> <del>123000원</del> 119000원</span> </a>
    	<a href="#"><img src="./media/다운로드2.jpg">  <span>토트넘 홋스퍼 홈 유니폼<br> <del>150000원</del> 140000원</span></a>
    	<a href="#"><img src="./media/다운로드9.jpg">  <span>바이에르 뮌헨 어웨이 유니폼<br> <del>150000원</del> 141000원</span></a>
    </div>
    <div><h1>What's new</h1></div>
    <div class ="new_item">
			<a href="#"><img src="./media/다운로드5.jpg">  <span>아스날 어웨이 유니폼<br>  167000원</span></a>
			<a href="#"><img src="./media/다운로드6.jpg">  <span>맨체스터 유나이티드 어웨이 유니폼<br>  178000원</span></a>
			<a href="#"><img src="./media/다운로드7.jpg">  <span>맨체스터 시티 홈 유니폼<br>  159000원</span></a>
			<a href="#"><img src="./media/다운로드8.jpg">  <span>AC밀란 홈 유니폼<br> 136000원</span></a>
    	
    </div>
    <!-- PC ë°°ë1 -->
<div class="floBanPc1 hidden-md hidden-sm hidden-xs">
  <a href="ë§í¬ì£¼ì" target="_blank">
    <img src="./media/btn_side_phone.png" width="80px;" height="80px;">
  </a>
</div>
<!-- PC ë°°ë2 -->
<div class="floBanPc2 hidden-md hidden-sm hidden-xs">
  <a href="" target="_blank">
    <img src="./media/btn_side_cart.png" width="80px;" height="80px;">
  </a>
</div>
  </main>
  <!-- footer ë¶ë¶ -->
   <footer>
    <div class="footer-links">
      <ul>
        <li><a href="#">이용약관</a></li>
        <li><a href="#">블로그 서비스 운영정책</a></li>
        <li><a href="#">개인정보처리방침</a></li>
        <li><a href="#">책임의 한계와 법적고지</a></li>
        <li><a href="#">글 권리 보호하기</a></li>
        <li><a href="#">게시중단요청서비스</a></li>
      </ul>
    </div>
    <div class="footer-copyright">
      <span>NAVER</span> Copyright © NAVER Corp. All Rights Reserved.
    </div>
  </footer>
  	<%
		} else {
		%>
  <header>
  	<nav class="nav_naver">
       <div class="dropdown1">
  <button onclick="myFunction()" class="dropbtn1"><i class="fa-solid fa-bars"></i></button>
  <div id="myDropdown" class="dropdown-content1">
    <a href="#home">공지사항</a>
    <a href="#about">고객센터</a>
    <a href="#contact">게시판</a>
    <a href="modifyForm.jsp">개인정보수정</a>
    <a href="deleteForm.jsp" onclick="window.open(this.href, '_blank', 'width=500, height=150'); return false;">회원탈퇴</a>
  </div>
</div>
      
      <div class="nav_naver_font">
          <a class="naver_logo" href="#"><i class="fa-solid fa-basket-shopping"></i></a>
          <a class="sport_logo" href="#">CART |</a>
          <a class="sport_logo" href="logout.jsp">LOGOUT</a>
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
        <a href="logout.jsp" >환영합니다</a>
      </li>
    </ul>
	</nav>

  </header>

  <!-- ì¸ì ë¶ë¶ -->
  <section onload="carousel();">
    <div class="slideshow">
      <div class="slideshow_slides">
        <a href="#"><img src="./media/e6849145-1156-430c-be71-b082bdf50769__1600X612.jpg" alt="1" /></a>
        <a href="#"><img src="./media/002-retail-1263-retro-christmas-jumpers-shop-categorydesktop-2160x720-comp.jpg" alt="2" /></a>
        <a href="#"><img src="./media/EA018846.jpg" alt="3" /></a>
        <a href="#"><img src="./media/캡처.PNG" alt="4" /></a>
      </div>
      <div class="slideshow_nav">
        <a href="#" class="prev"><i class="fa-solid fa-circle-chevron-left"></i></a>
        <a href="#" class="next"><i class="fa-solid fa-circle-chevron-right"></i></a>
      </div>
      <div class="slideshow_indicator">
        <a href="#"><i class="fa-regular fa-circle-dot"></i></a>
        <a href="#"><i class="fa-regular fa-circle-dot"></i></a>
        <a href="#"><i class="fa-regular fa-circle-dot"></i></a>
        <a href="#"><i class="fa-regular fa-circle-dot"></i></a>
      </div>
    </div>
  </section>

  <!-- ë©ì¸ë¶ë¶ -->
  <main>

    <div><h1>Week Best</h1></div>
    <div class="best_item">
    	<a href="#"><img src="./media/다운로드1.jpg">  <span>레알마드리드 홈 유니폼<br> <del>189000원</del> 139000원</span></a>
    	<a href="#"><img src="./media/다운로드11.jpg">  <span>AT마드리드 홈 유니폼<br> <del>123000원</del> 119000원</span> </a>
    	<a href="#"><img src="./media/다운로드2.jpg">  <span>토트넘 홋스퍼 홈 유니폼<br> <del>150000원</del> 140000원</span></a>
    	<a href="#"><img src="./media/다운로드9.jpg">  <span>바이에르 뮌헨 어웨이 유니폼<br> <del>150000원</del> 141000원</span></a>
    </div>
    <div><h1>What's new</h1></div>
    <div class ="new_item">
			<a href="#"><img src="./media/다운로드5.jpg">  <span>아스날 어웨이 유니폼<br>  167000원</span></a>
			<a href="#"><img src="./media/다운로드6.jpg">  <span>맨체스터 유나이티드 어웨이 유니폼<br>  178000원</span></a>
			<a href="#"><img src="./media/다운로드7.jpg">  <span>맨체스터 시티 홈 유니폼<br>  159000원</span></a>
			<a href="#"><img src="./media/다운로드8.jpg">  <span>AC밀란 홈 유니폼<br> 136000원</span></a>
    	
    </div>
    <!-- PC ë°°ë1 -->
<div class="floBanPc1 hidden-md hidden-sm hidden-xs">
  <a href="ë§í¬ì£¼ì" target="_blank">
    <img src="./media/btn_side_phone.png" width="80px;" height="80px;">
  </a>
</div>
<!-- PC ë°°ë2 -->
<div class="floBanPc2 hidden-md hidden-sm hidden-xs">
  <a href="" target="_blank">
    <img src="./media/btn_side_cart.png" width="80px;" height="80px;">
  </a>
</div>
  </main>
  <!-- footer ë¶ë¶ -->
   <footer>
    <div class="footer-links">
      <ul>
        <li><a href="#">이용약관</a></li>
        <li><a href="#">블로그 서비스 운영정책</a></li>
        <li><a href="#">개인정보처리방침</a></li>
        <li><a href="#">책임의 한계와 법적고지</a></li>
        <li><a href="#">글 권리 보호하기</a></li>
        <li><a href="#">게시중단요청서비스</a></li>
      </ul>
    </div>
    <div class="footer-copyright">
      <span>NAVER</span> Copyright © NAVER Corp. All Rights Reserved.
    </div>
  </footer>
			<%
		}
		%>
</body>

</html>
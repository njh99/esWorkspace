<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="co.kh.dev.makelogin.model.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="productDAO" class="co.kh.dev.makelogin.model.ProductListDAO"/>
<!DOCTYPE html>
<html>
<head>
<title>유니폼 목록</title>
<script src="script.js?timestamp=<%= System.currentTimeMillis() %>"></script>
  <link rel="stylesheet" href="mainhomepage.css" />
  <script src="mainhomepage.js"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Jua&family=Kablammo&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/01ba7af47f.js" crossorigin="anonymous"></script>
</head>
<style>

div{
display: flex;
flex-direction:row;
flex-wrap: wrap;
justify-content: space-around;
padding-right: 20px;
}
.col-md-4{
display: flex;
flex-direction:column;
}
</style>
<body>
 <header>
  	<nav class="nav_naver">
       <div class="dropdown1">
  <button onclick="myFunction()" class="dropbtn1"><i class="fa-solid fa-bars"></i></button>
  <div id="myDropdown" class="dropdown-content1">
    <a href="#home">공지사항</a>
    <a href="#about">고객센터</a>
    <a href="list.jsp">게시판</a>
    <a href="modifyForm.jsp">개인정보수정</a>
    <a href="iddeleteForm.jsp" onclick="window.open(this.href, '_blank', 'width=500, height=150'); return false;">회원탈퇴</a>
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
          <a href="product.jsp?name=바르샤%20홈%20유니폼">바르셀로나</a>
          <a href="product.jsp?name=레알%20홈%20유니폼">레알 마드리드</a>
          <a href="product.jsp?name=ATM%20홈%20유니폼">ATM</a>
        </div>
      </li>
      <li class="dropdown">
        <a href="#" class="dropbtn"><img src="./media/pl-main-logo.png"alt="laliga" class="epl"></img></a>
        <div class="dropdown-content">
          <a href="product.jsp?name=맨시티%20홈%20유니폼">맨체스터 시티</a>
          <a href="product.jsp?name=첼시%20홈%20유니폼">첼시</a>
          <a href="product.jsp?name=아스날%20어웨이%20유니폼">아스날</a>
          <a href="product.jsp?name=맨유%20어웨이%20유니폼">맨체스터 유나이티드</a>
          <a href="product.jsp?name=토트넘%20홈%20유니폼">토트넘</a>
        </div>
      </li>
      <li class="dropdown">
        <a href="#" class="dropbtn"><img src="./media/bundesliga-logo.png"alt="laliga" class="bun"></img></a>
        <div class="dropdown-content">
          <a href="product.jsp?name=바이언%20어웨이%20유니폼">바이에르 뮌헨</a>
          <a href="product.jsp?name=도르트문트%20홈%20유니폼">도르트문트</a>

        </div>
      </li>
      <li class="dropdown">
        <a href="#" class="dropbtn"><img src="./media/Serie_A_logo_2022.svg.png"alt="laliga" class="bun"></img></a>
        <div class="dropdown-content">
          <a href="product.jsp?name=인테르%20홈%20유니폼">인테르</a>
          <a href="product.jsp?name=AC밀란%20홈%20유니폼">AC밀란</a>
          
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
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<%
		ArrayList<ProductVO> prolist = productDAO.getAllProduct();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for (int i=0; i < prolist.size(); i++){
					ProductVO list = prolist.get(i);
			%>
			<div class="col-md-4">
			<img src="./media/<%=list.getFilename()%>"
				style="width: 100% ">
				<h3><%=list.getName() %></h3>
				<p><%=list.getPrice() %>원</p>
				<p><%=list.getCompany() %></p>
				<p><a href="product.jsp?name=<%=list.getName()%>" role="button">상세정보</a></p>
			</div>
			<%
				}
		
			%>
		</div>
		
	</div>
</body>
</html>
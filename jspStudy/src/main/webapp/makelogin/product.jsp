<%@page import="co.kh.dev.makelogin.model.ProductVO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="productDAO" class="co.kh.dev.makelogin.model.ProductListDAO"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품상세페이지</title>
<script src="script.js?timestamp=<%= System.currentTimeMillis() %>"></script>
  <link rel="stylesheet" href="mainhomepage.css" />
  <script src="mainhomepage.js"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Jua&family=Kablammo&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/01ba7af47f.js" crossorigin="anonymous"></script>
  <script type="text/javascript">
	function addToCart(){
		if (confirm('상품을 장바구니에 추가하시겠습니까?')) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
</head>
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
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
		String name = request.getParameter("name");
		ProductVO product = productDAO.getProductbyName(name);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
			<!-- 이미지 업로드: width:100%으로 설정했지만 사이즈를 확인하면서 적당하게 변경 -->
			<img src="./media/<%=product.getFilename()%>"
				style="width: 400px; height: 200px; ">
				<h3><%=product.getName() %></h3>
				<p><b>브랜드</b> : <%=product.getCompany() %>
				<p><b>재고</b> : <%=product.getStock()%>
				<p><b>사이즈</b> : <%=product.getSize() %>
				<h4><%=product.getPrice() %>원</h4>
				<p><form name="addForm" action="./addCart.jsp?id=<%=product.getName() %>" method="post">
						<a href="addCart.jsp" class="btn btn-info" onclick="addToCart()">상품주문&raquo;</a>
						<a href="./cart.jsp" class="btn btn-warning">장바구니&raquo;</a>
						<a href="./products.jsp" class="btn btn-secondary">상품목록&raquo;</a>
			</form>
			</div>
		</div>
		<hr>
	</div>
</body>
</html>
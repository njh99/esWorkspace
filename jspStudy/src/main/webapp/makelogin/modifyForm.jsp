<%@page import="co.kh.dev.memberone.model.StudentDAO"%>
<%@page import="co.kh.dev.memberone.model.StudentVO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 1. 클라이언트가 보내준 사용자 정보를 가져온다(request). 그 이외에 정보를 가져오는 건 3가지(session,application,request)세션 정보를 가져온다 -->
<%
String id = (String) session.getAttribute("id");
String pass = (String) session.getAttribute("pass");
%>
<!-- 2. CURD -->
<%
StudentVO svo = new StudentVO();
svo.setId(id);
StudentDAO sdao = new StudentDAO();

svo = sdao.selectOneDB(svo);
%>

<!-- 3. 화면설계 -->
<html>
<head>
<title>Update Form</title>
<script src="script.js?timestamp=<%= System.currentTimeMillis() %>"></script>
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="script.js"></script>
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
    <a href="modifyForm.jsp">개인정보수정</a>
    <a href="delete.jsp">회원탈퇴</a>
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
<main>
	<form name="regForm" method="post" action="modifyProc.jsp">
		<table border="1">
			<tr>
				<td colspan="2" align="center">회원 수정 정보 입력</td>
			</tr>
			<tr>
				<td align="right">아이디 :</td>
				<td><%=svo.getId()%></td>
			</tr>
			<tr>
				<td align="right">패스워드 :</td>
				<td>
					<input type="password" name="pass" value="<%=svo.getPass()%>" /></td>
			</tr>
			<tr>
				<td align="right">패스워드 확인:</td>
				<td>
					<input type="password" name="repass" value="<%=svo.getPass()%>" /></td>
			</tr>
			<tr>
				<td align="right">이름 :</td>
				<td><%=svo.getName()%></td>
			</tr>
			<tr>
				<td align="right">전화번호 :</td>
				<td>
					<input type="text" name="phone1" size="4"value="<%=svo.getPhone1()%>" /> - 
					<input type="text" name="phone2"size="5" value="<%=svo.getPhone2()%>" /> - 
					<input type="text"name="phone3" size="5" value="<%=svo.getPhone3()%>" /></td>
			</tr>
			<tr>
				<td align="right">이메일 :</td>
				<td><input type="text" name="email" value="<%=svo.getEmail()%>" /></td>
			</tr>
			<tr>
				<td align="right">우편번호 :</td>
				<td>
					<input type="text" name="zipcode"value="<%=svo.getZipcode()%>" /> 
					<input type="button" value="찾기" onClick="zipCheck()" /></td>
			</tr>
			<tr>
				<td align="right">주소1 :</td>
				<td>
					<input type="text" name="address1" size="50"value="<%=svo.getAddress1()%>" /></td>
			</tr>
			<tr>
				<td align="right">주소2 :</td>
				<td>
					<input type="text" name="address2" size="30"value="<%=svo.getAddress2()%>" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button"value="정보수정" onClick="updateCheck()" />&nbsp;&nbsp; 
					<input type="button" value="취소"onClick="javascript:window.location='login.jsp'" /></td>
			</tr>
		</table>
	</form>
	</main>
</body>
</html>
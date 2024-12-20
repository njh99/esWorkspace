<%@page import="co.kh.dev.boardone.model.BoardDAO"%>
<%@page import="co.kh.dev.boardone.model.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="view/color.jsp"%>
<%
 //1. 페이징기법:  페이지 사이즈: 1페이지 10개만 보여줘
 int pageSize = 10; 
 //2. 페이징기법: 페이지번호선택(기본 페이지는 1페이지)
 request.setCharacterEncoding("utf-8");
 String pageNum = request.getParameter("pageNum");
 if(pageNum == null){ pageNum = "1"; }
 //3. 현재페이지 설정, start, end 
 int currentPage = Integer.parseInt(pageNum);
 int start = (currentPage - 1)*pageSize + 1; //4page 시작보여줘:  (4-1)*10 + 1 => 31
 int end = (currentPage)*pageSize; //4page 끝번호 보여줘:  (4)*10  => 40
 
 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<%
//4. 해당된 페이지 10개를 가져온다. 
int number =0;
ArrayList<BoardVO> boardList = null;
BoardDAO bdao = BoardDAO.getInstance();
//전체글갯수
int count = bdao.selectCountDB(); 
if (count > 0) {
	//(현재페이지 내용 10개만 가져온다.)	
	boardList = bdao.selectStartEndDB(start, end);
}
//5. 만약 4페이지(31~40)를 가져왔다면 number = 40  
//수정<4>  전체갯수 100  1페이지(100~91), 2페이지 (90~81)
number = count - (currentPage -1) * pageSize ;


%>
<!DOCTYPE html>
<html>
<head>
<title>게시판</title>
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
<body bgcolor="<%=bodyback_c%>">
<header>
  	<nav class="nav_naver">
       <div class="dropdown1">
  <button onclick="myFunction()" class="dropbtn1"><i class="fa-solid fa-bars"></i></button>
  <div id="myDropdown" class="dropdown-content1">
    <a href="#home">공지사항</a>
    <a href="#about">고객센터</a>
    <a href="list.jsp">게시판</a>
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
<main>
	<b>글목록(전체 글:<%=count%>)</b>
<table width="700">
  <tr>
    <td align="right" bgcolor="<%=value_c%>">
    <a href="writeForm.jsp">글쓰기</a>
    </td>
  </tr>
</table>
<form name="frm" action="<%=request.getContextPath() %>/board/boardList.do" method="post">
<table  style="text-align:left;width:700px;border:0;">
<tr>
<td style="width:600px;"></td>
<td>
<select name="searchType">
<option value="subject">제목</option>
<option value="writer">작성자</option>
</select>
</td>
<td><input type="text" name="keyword" size="10"></td>
<td><input type="submit" name="submit" value="검색"></td>
</tr>
</table>
</form>
<%
    if (count == 0) {
%>
<table width="700" border="1" cellpadding="0" cellspacing="0">
<tr>
    <td align="center">
    게시판에 저장된 글이 없습니다.
    </td>
</table>
<%  } else {    %>

<table border="1" width="700" cellpadding="0" cellspacing="0" align="center"> 
    <tr height="30" bgcolor="<%=value_c%>"> 
      <td align="center"  width="50"  >번 호</td> 
      <td align="center"  width="250" >제   목</td> 
      <td align="center"  width="100" >작성자</td>
      <td align="center"  width="150" >작성일</td> 
      <td align="center"  width="50" >조 회</td> 
      <td align="center"  width="100" >IP</td>    
    </tr>
<%  
    for ( BoardVO article :  boardList) {
%>
   <tr height="30">
    <td align="center"  width="50" > <%= number--%></td>
    <td  width="250" >
    <!-- 수정 <5> -->
    <a href="content.jsp?num=<%=article.getNum()%>&pageNum=1">
	 <!-- 수정<6> -->
<%
			//6. depth 값에 따라서 5배수 증가를 해서 화면에 보여줘야된다.
			//depth : 1 => 길이 : 5, 2 => 10
      int wid=0; 
      if(article.getDepth()>0){
        wid=5*(article.getDepth());
%>
       <img src="images/level.gif" width="<%=wid%>" height="16">
       <img src="images/re.gif">
<%    }else{%>
       <img src="images/level.gif" width="<%=wid%>" height="16">
<%}%>
          <%=article.getSubject()%></a> 
          <% if(article.getReadcount()>=20){%>
         <img src="images/hot.gif" border="0"  height="16"><%}%> </td>
    <td align="center"  width="100"> 
       <a href="mailto:<%=article.getEmail()%>">
		<%=article.getWriter()%></a></td>
    <td align="center"  width="150">
		<%= sdf.format(article.getRegdate())%></td>
    <td align="center"  width="50"><%=article.getReadcount()%></td>
    <td align="center" width="100" ><%=article.getIp()%></td>
  </tr>
     <%}%>
<%}%>
</table>
</main>
<br>
<!-- 수정 <7> -->
<div class= "center" align="center">
<%
    if (count > 0) {
       int pageBlock = 5;
       int imsi = count % pageSize == 0 ? 0 : 1;
       int pageCount = count / pageSize + imsi;
       int startPage = (int)((currentPage-1)/pageBlock)*pageBlock + 1;
       int endPage = startPage + pageBlock - 1;
       if (endPage > pageCount) endPage = pageCount;  
       if (startPage > pageBlock) {    %>
      <a href="list.jsp?pageNum=<%=startPage-pageBlock%>">[이전]</a>
<%
      }
      for (int i = startPage ; i <= endPage ; i++) {  
    	  if(currentPage == i){
%>
    		  <a href="list.jsp?pageNum=<%= i %>">[[<%= i %>]]</a>
<%    	  }else{ %>
    		  <a href="list.jsp?pageNum=<%= i %>">[<%= i %>]</a>
<%    	  }
%>
     
<%
      }
      if (endPage < pageCount) {  %>
      <a href="list.jsp?pageNum=<%=startPage+pageBlock%>">[다음]</a>
<%
        }
    }
%>
</div>
</body>
</html>
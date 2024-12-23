<%@page import="co.kh.dev.makelogin.model.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String cartId = (String)session.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>
	<div class="jumbotron" style="padding-top: 50px; padding-bottom: 50px">
		<div class="container">
			<h2>장바구니</h2>
		</div>
	</div>
	<div class="container">
		<div class="row" style="background-color: #f7f7f7; border-radius: 20px; height: 75px;">
			<table width="100%" style="margin: 10px;">
				<tr>
					<td style="padding-left: 10px;"><input type="checkbox" id="allChk" checked>&nbsp;<b>전체</b></td>
					<td></td>
					<td align="right" style="padding-right: 35px;">
					<a href="./deleteCart.jsp?cartId=<%=cartId%>" 
					class="btn btn-danger">삭제하기</a>
					<a href="./shippingInfo.jsp?cartId=<%=cartId%>" class="btn btn-success">주문하기	</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th></th>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%				
					int sum = 0;
					ArrayList<ProductVO> cartList = (ArrayList<ProductVO>) session.getAttribute("cartlist");
					if (cartList == null)
						cartList = new ArrayList<ProductVO>();

					for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
						ProductVO book = cartList.get(i);
						int total = book.getPrice() * book.getQuantity();
						sum = sum + total;
				%>
				<tr>
					<td><input type="checkbox" class="chk" checked></td>
					<td><%=book.getName() %> - <%=book.getName() %></td>
					<td><%=book.getPrice()%></td>
					<td><%=book.getQuantity()%></td>
					<td><%=total%></td>
					<td>
					<a href="./removeCart.jsp?id=<%=book.getName()%>"
					 class="bi bi-backspace-fill">&nbsp;삭제</a></td>
				</tr>
				<%
					}
				%>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%=sum%></th>
					<th></th>
					<th></th>
				</tr>
			</table>
			<a href="./mainhomepage.jsp" class="btn btn-secondary"> &laquo; 쇼핑 계속하기</a>
		</div>
		<hr>
	</div>
	
	
    <a href="#" class="btn btn-primary py-3 fs-4 back-to-top"><i class="bi bi-arrow-up"></i></a>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    
    <!-- Cart -->
    <script src="js/cart.js"></script>
</body>
</html>
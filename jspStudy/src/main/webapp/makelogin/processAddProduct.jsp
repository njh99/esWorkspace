<%@page import="co.kh.dev.makelogin.model.ProductVO"%>
<%@page import="co.kh.dev.makelogin.model.ProductListDAO"%>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String price = request.getParameter("price");
	String company = request.getParameter("company");
	String stock = request.getParameter("stock");
	String size = request.getParameter("size");
	
	int Price;
	int Stock;
	
	if(price.isEmpty()){
		Price = 0;
	}else{
		Price = Integer.valueOf(price);
	}
	
	if(stock.isEmpty()){
		Stock = 0;
	}else{
		Stock = Integer.valueOf(stock);
	}

	ProductListDAO pao = ProductListDAO.getInstance();
	
	ProductVO newProduct = new ProductVO();
	newProduct.setName(name);
	newProduct.setPrice(Price);
	newProduct.setCompany(company);
	newProduct.setSize(size);
	newProduct.setStock(Stock);
	
	pao.addProduct(newProduct);
	response.sendRedirect("products.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
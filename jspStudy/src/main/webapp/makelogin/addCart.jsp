<%@page import="java.util.ArrayList"%>
<%@page import="co.kh.dev.makelogin.model.ProductVO"%>
<%@page import="co.kh.dev.makelogin.model.ProductListDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String name = request.getParameter("name");
	if (name == null || name.trim().equals("")) {
		response.sendRedirect("mainhomepage.jsp");
		return;
	}

	ProductListDAO dao = ProductListDAO.getInstance();

	ProductVO pvo = dao.getProductbyName(name);
	if (pvo == null) {
		response.sendRedirect("exceptionNoBookId.jsp");
	}

	ArrayList<ProductVO> goodsList = dao.getAllProduct();
	ProductVO goods = new ProductVO();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getName().equals(name)) { 			
			break;
		}
	}
	
	ArrayList<ProductVO> list = (ArrayList<ProductVO>) session.getAttribute("cartlist");
	if (list == null) { 
		list = new ArrayList<ProductVO>();
		session.setAttribute("cartlist", list);
	}

	int cnt = 0;
	ProductVO goodsQnt = new ProductVO();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getName().equals(name)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}

	if (cnt == 0) { 
		goods.setQuantity(1);
		list.add(goods);
	}

	response.sendRedirect("products.jsp?id=" + name);
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
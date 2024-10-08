<%@page import="com.app.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
    <table border="1">
		<tr>
			<th>상품번호</th>
			<th>상품이름</th>
			<th>상품가격</th>
			<th>상품재고</th>
		</tr>
	<% 
		List<ProductVO> products = (List<ProductVO>)request.getAttribute("products");
       		for(ProductVO product : products){
    %>
    
		<tr>
			<td><%=product.getId() %></td>
			<td><a href="read.product?id=<%=product.getId() %>"><%=product.getProductName() %></a></td>
			<td><%=product.getProductPrice() %></td>
			<td><%=product.getProductStock() %></td>
		</tr>
       	
    <%   	
       		} 
	%>
	
</body>
</html>
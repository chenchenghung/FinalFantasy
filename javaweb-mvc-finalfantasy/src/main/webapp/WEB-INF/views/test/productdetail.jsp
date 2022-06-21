<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品詳情頁</title>
</head>
<body>

<table>
	<tbody>
	<thead>
	
		<th>商品編號</th>
		<tr><td>${select.pid}</td></tr>

		
		<th>主圖</th>
		<tr>
		<td>${select.picmain}</td>
		</tr>
		
		<th>小圖一</th>
		<tr>
		<td>${select.picfirst}</td>
		</tr>
		
		<th>小圖二</th>
		<tr>
		<td>${select.picsecond}</td>
		</tr>
		
		<th>小圖三</th>
		<tr>
		<td>${select.picthird}</td>
		</tr>
		
		<th>小圖四</th>
		<tr>
		<td>${select.picfourth}</td>
		</tr>
		
		<th>商品名稱</th>
		<tr>
		<td>${select.productname}</td>
		</tr>
		
		<th>商品描述</th>
		<tr>
		<td>${select.productdesc}</td>
		</tr>
		
		<th>規格</th>
		<tr>
		<td>${select.spec}</td>
		</tr>
		
		<th>材質</th>
		<tr>
		<td>${select.material}</td>
		</tr>
		
		<th>單價</th>
		<tr>
		<td>${select.price}</td>
		</tr>
		
		<th>尺寸</th>
		<tr>
		<td>${select.size}</td>
		</tr>
		
		<th>重量</th>
		<tr>
		<td>${select.weight}</td>
		</tr>

		
		
	

	</thead>
	


	
	</tbody>
</table>
		<h3><a href="<c:url value="/pages/addtocart.controller/${select.pid}" />">加入購物車</a></h3>
		<h3><a href="<c:url value="/pages/products.controller" />">回商品頁</a></h3>
</body>
</html>
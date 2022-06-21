<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有的商品</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


<script type="text/javascript">
	console.log("3");
	$(function(){
		
		$('input[name="add"]').click(function () {
		    var iIndex = $(this).closest("tr").index();
		    console.log(iIndex);
		    var pid=$('tr:eq('+iIndex+') td:eq(0)').text();
		    console.log(pid);
		    $.get("${pageContext.request.contextPath}/pages/addtocart/"+pid,function(data,status){
		    	alert("Data: " + data + "nStatus: " + status);
		    	});
		    
		})
		$('input[name="detail"]').click(function () {
			var iIndex = $(this).closest("tr").index();
		    console.log(iIndex);
		    var pid=$('tr:eq('+iIndex+') td:eq(0)').text();
		    console.log(pid);
		    $(window).attr('location',"${pageContext.request.contextPath}/pages/products/detail/"+pid);
			
		    
		})
		
		
	})

</script>

</head>
<body style="text-align: center">
    <h1 >首頁商品列表</h1>
    
    <h3><a href="<c:url value="/pages/products/category/1" />">ProductsCategory1</a></h3>
	<h3><a href="<c:url value="/pages/products/category/2" />">ProductsCategory2</a></h3>
	<h3><a href="<c:url value="/pages/products/category/3" />">ProductsCategory3</a></h3>
	
	<h2><a href="<c:url value="/pages/cartlist" />">我的購物車清單</a></h2>
    <table border="1"  width="400px">
        <tr>
            <td>商品編號</td>
            <td>主圖</td>
            <td>商品名稱</td>
            <td>商品描述</td>
            <td>單價</td>
            <td>加入</td>
       
            
        </tr>
        <c:forEach var="product" items="${select}">
            <tr >
            <td id="pid">${product.pid}</td>
            <td>${product.picmain}</td>
            <td>${product.productname}</td>
            <td>${product.productdesc}</td>
            <td>${product.price}</td>
            
            <td >
                <input name="add" type="button" value="加入購物車" />
            </td>
            <td >
                <input name="detail" type="button" value="商品詳情頁" />
            </td>
        </tr>
        </c:forEach>
    </table>
</body>
</html>

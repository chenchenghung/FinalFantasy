<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


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
		    $.get("${pageContext.request.contextPath}/pages/productdetail/"+pid,function(data,status){
		    	alert("Data: " + data + "nStatus: " + status);
		    	});
		    
		})
		
		
	})

</script>


<title>Home</title>
</head>
<body>

<h3>Welcome ${user.custid}</h3>

<h3><a href="<c:url value="/secure/login.view" />">Login</a></h3>
<h3><a href="<c:url value="/pages/products" />">Products</a></h3>

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
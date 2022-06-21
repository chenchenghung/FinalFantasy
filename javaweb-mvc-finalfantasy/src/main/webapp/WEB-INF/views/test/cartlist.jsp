<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--    只要使用foreach就要导入下面的这句代码--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的購物車清單</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script type="text/javascript">
	console.log("delete");
	$(function(){
		
		$('input[name="del"]').click(function () {
		    var iIndex = $(this).closest("tr").index();
		    console.log(iIndex);
		    var pid=$('tr:eq('+iIndex+') td:eq(1)').text();
		    console.log(pid);
		    $.get("${pageContext.request.contextPath}/pages/delfromcart.controller/"+pid,function(data,status){
		    	alert("Data: " + data + "nStatus: " + status);
		    	});
		    
		})
		
		var requestURL="${pageContext.request.contextPath}/pages/neworder.controller";
		var dataJSON={};
		dataJSON["totalamount"]=3469;
		dataJSON["checkout"]={"666001":3,"666002":2,"666003":4};
		dataJSON["orders"]={"ordername":"吳雙","phone":"0923432345","code":"500","city":"台南市"
		,"address":"麻豆區埤頭里234號","totalamount":3469};
		
		
		console.log(dataJSON);
		$('input[name="checkout"]').click(function () {
			$.ajax({
			    url: requestURL,
			    data:JSON.stringify(dataJSON),
			    type:"POST",
			    dataType:"json",
			    contentType:"application/json;charset=utf-8",
			    success: function(returnData){
			        console.log(returnData);
			    },
			    error: function(xhr, ajaxOptions, thrownError){
			        console.log(xhr.status);
			        console.log(thrownError);
			    }
			});
		    
		    
		    
		    
		});
		
	})

</script>




</head>
<body style="text-align: center">
<h1>我的購物車</h1><br>
<hr>
<table border="1" width="800px">
    <tr>
        <td>選擇</td>
        <td>產品編號</td>
        <td>主圖</td>
        <td>商品名稱</td>
        <td>單價</td>
        <td>數量</td>
        <td>操作</td>
    </tr>
<%--map迭代完后都是entry--%>
    <c:forEach var="item" items="${cartList}">
    <tr>
    	<td><input type="checkbox" name="picks" value="${item.pid}"></td>
        <td>${item.pid}</td>
        <td>${item.picmain}</td>
        <td>${item.productname}</td>
        <td>${item.price}</td>
        <td>
            <input type="text" value="${item.qty}"  onblur="change() " style="width: 40px;"/>
        </td>
        <td>
        	<input name="del" type="button" value="刪除" />
        </td>
    </tr>    
    </c:forEach>
    <tr>
        <td>
            <a href="${pageContext.request.contextPath}/">清空購物車</a>
        </td>
        <td>
            <a href="${pageContext.request.contextPath}/pages/products.controller">回商品頁面</a>
        </td>
        <td>
            <input name="checkout" type="button" value="去結帳" />
        </td>
        <td colspan="2">總金額： 元</td>
    </tr>
</table>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員註冊</title>
</head>
<body>

<form action="<c:url value="/pages/register.controller" />" method="get">
<table>
	<tr>
		<td>使用者ID : </td>
		<td><input type="text" name="uid" value="${param.uid}"></td>
	</tr>
	<tr>
		<td>電話 : </td>
		<td><input type="text" name="phone" value="${param.phone}"></td>
	</tr>

	<tr>
		<td>Password : </td>
		<td><input type="text" name="password" value="${param.password}"></td>
	</tr>
	<tr>
		<td>姓 : </td>
		<td><input type="text" name="lastname" value="${param.lastname}"></td>
	</tr>
	<tr>
		<td>名 : </td>
		<td><input type="text" name="firstname" value="${param.firstname}"></td>
	</tr>
		<tr>
		<td>生日 : </td>
		<td><input type="text" name="birthday" value="${param.birthday}"></td>
	</tr>
	<tr>
		<td>暱稱 : </td>
		<td><input type="text" name="nickname" value="${param.nickname}"></td>
	</tr>
		<tr>
		<td>email : </td>
		<td><input type="text" name="email" value="${param.email}"></td>
	</tr>
		<tr>
		<td>性別 : </td>
		<td><input type="radio" name="sex" value="1">MEN
		</td>
		
		<td><input type="radio" name="sex" value="2">WOMEN</td>
		
	</tr>

	<tr>
		<td>
			<input type="submit" name="register" value="送出表單">
			
		</td>

	</tr>
</table>

</form>

</body>
</html>
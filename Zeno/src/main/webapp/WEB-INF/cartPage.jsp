<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>



	<h2>Hi, <c:out value="${thisUser.username}"></c:out></h2>
	<c:forEach items="${products}" var="item">
		<p>${item.name}</p>
		<p>${item.price} NIS</p>
		<a href="#">Delete This Item</a>
	</c:forEach>
<br>
<p>Your Total is: <c:out value="${total}"></c:out> NIS</p>
</body>
</html>
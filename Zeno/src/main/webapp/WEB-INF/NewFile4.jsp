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
	<p>
		Cart(
		<c:out value="${cartSize}" />
		)
	</p>
	<c:forEach items="${items}" var="item">
		<p>
			<c:out value="${item.name}" />
		</p>
		<p>
			<c:out value="${item.price}" />
			$
		</p>

		<c:choose>
			<c:when test="${item.quantity > 0}">
				<form action="/add/${item.id}">
				<input type = "number" name = "numOfItem">
					<input type="submit" value="Add to Cart" /> <br />
			</form>
			</c:when>
			<c:otherwise>
				<p>This item is out of stock.</p>
				<br />
			</c:otherwise>
		</c:choose>



	</c:forEach>
	<c:forEach items = "${cartInfo}" var = "item">
<p><c:out value="${item.name}"></c:out></p>
</c:forEach>

</body>
</html>
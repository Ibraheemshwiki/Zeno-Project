<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
	<h1>Register!</h1>
	<p>
		<form:errors path="user.*" />
	</p>
	<form:form method="POST" action="/registration" modelAttribute="user">
		<p>
			<form:label path="username">Username:</form:label>
			<form:input path="username" />
		</p>
		<p>
			<form:label path="email">Email:</form:label>
			<form:input path="email" />
		</p>
		<p>
			<form:label path="password">Password:</form:label>
			<form:password path="password" />
		</p>
		<p>
			<form:label path="cpassword">Password Confirmation:</form:label>
			<form:password path="cpassword" />
		</p>
		<p>
			<form:label path="phone_number">Phone Number:</form:label>
			<form:input path="phone_number" />
		</p>
		<input type="submit" value="Register!" />
	</form:form>
</body>
</html>
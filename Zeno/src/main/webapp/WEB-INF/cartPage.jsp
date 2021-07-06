<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous" />
<link href="css/templatemo-business-oriented.css" rel="stylesheet" />
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
		<div style="display: flex ; ">
	<img alt="" src="/images/logo.jpg" style="width:100px; height: 100px"> <div style=" 
    margin-top: 20px;
    margin-left: 600px;"> <h1 style="font-size:80px; font-family:fontawesome-webfont  "> ZENO</h1></div>
 	</div>

	<div class="tm-nav-container-outer">
		<form id="logoutForm" method="POST" action="/logout">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" /> <input type="submit" value="Logout!" />
		</form>
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<nav class="navbar navbar-expand-lg" id="tm-main-nav">
						<button class="navbar-toggler toggler-example" type="button"
							data-toggle="collapse" data-target="#navbar-nav"
							aria-controls="navbar-nav" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="dark-blue-text"><i class="fas fa-bars"></i></span>
						</button>
						<div class="collapse navbar-collapse tm-nav" id="navbar-nav">
							<ul class="navbar-nav ml-auto">
								<li class="nav-item active"><a class="nav-link tm-nav-link"
									href="/">Home <span class="sr-only">(current)</span></a></li>

								<li class="nav-item"><a class="nav-link tm-nav-link"
									href="/accessories">Accessories</a></li>

								<li class="nav-item"><a class="nav-link tm-nav-link"
									href="/homeaccessories">Home Accessories</a></li>

								<li class="nav-item"><a class="nav-link tm-nav-link"
									href="/makeup">Makeup & SkinCare</a></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
		<div class="tm-bg-gray tm-box">
			<div class="text-center mb-3">
				<h6> Your Cart</h6>
				<h2>
					Hi,
					<c:out value="${thisUser.username}"></c:out>
				</h2>
				<c:forEach items="${carts}" var="cart">
					<p>${cart.item.name}</p>
					<p>${cart.item.price}NIS</p>
					<p>Quantity: ${cart.quantity}</p>
					<a href="/delete/${cart.id}">Delete This Item</a>
				</c:forEach>
				<br>
				<p>
					Your Total is:
					<c:out value="${total}"></c:out>
					NIS
				</p>
			</div>
		</div>
	</div>
	<footer class="container-fluid">
		<div class="row">
			<p class="col-lg-9 col-md-8 mb-5 mb-md-0">
				Copyright &copy; 2021 <span class="tm-text-primary">AXSOS
					ACADEMY</span> - designed by <span class="tm-text-primary">ZENO
					TEAM</span>
			</p>
			<div class="col-lg-3 col-md-4 text-right">
				<a rel="nofollow" target="_blank"
					href="https://www.facebook.com/zenoramallah" class="tm-social-link">
					<i class="fab fa-facebook fa-2x tm-social-icon"></i>
				</a> <a href="https://twitter.com" class="tm-social-link"> <i
					class="fab fa-twitter fa-2x tm-social-icon"></i>
				</a> <a href="https://linkedin.com" class="tm-social-link"> <i
					class="fab fa-linkedin fa-2x tm-social-icon"></i>
				</a>
			</div>
		</div>
	</footer>

</body>
</html>
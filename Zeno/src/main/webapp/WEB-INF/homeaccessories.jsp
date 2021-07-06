<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous" />
<link href="css/templatemo-business-oriented.css" rel="stylesheet" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Accessories</title>

</head>
<body>
	<div style="display: flex;">
		<img alt="" src="/images/logo.jpg" style="width: 100px; height: 100px">
		<div style="margin-top: 20px; margin-left: 600px;">
			<h1 style="font-size: 80px; font-family: fontawesome-webfont">
				ZENO</h1>
		</div>
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
								<li class="nav-item"><a class="nav-link tm-nav-link"
									href="/">Home <span class="sr-only">(current)</span></a></li>

								<li class="nav-item"><a class="nav-link tm-nav-link"
									href="/accessories">Accessories</a></li>

								<li class="nav-item active"><a class="nav-link tm-nav-link"
									href="/homeaccessories">Home Accessories</a></li>

								<li class="nav-item"><a class="nav-link tm-nav-link"
									href="/makeup">Makeup & SkinCare</a></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<div class="tm-bg-gray tm-box">
		<div class="text-center mb-3">
			<a href="/cart">Go to Cart</a>
			<p>
				Cart(
				<c:out value="${cartSize}" />
				)
			</p>
			<div
				style="width: 90%; height: 100%; display: flex; justify-content: space-between;">
				<c:forEach items="${items}" var="item">
					<div style="width:30%; height: 45%; padding: 15px;">
						<img alt="Product image" src="/images/${item.id}.jpg"
							style="width: 100px; height: 100px">
						<p>
							<c:out value="${item.name}" />
						</p>
						<p>
							<c:out value="${item.price}" />
							NIS
						</p>

						<c:choose>
							<c:when test="${item.quantity > 0}">
								<form action="/add/${item.id}">
									<input type="number" name="quantity" value="1" /> <input
										type="submit" value="Add to Cart" /> <br />
								</form>
							</c:when>
							<c:otherwise>
								<p>This item is out of stock.</p>
								<br />
							</c:otherwise>
						</c:choose>
					</div>


				</c:forEach>
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
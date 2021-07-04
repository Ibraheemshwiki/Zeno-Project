<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
  <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous" /> 
	 <link href="css/templatemo-business-oriented.css" rel="stylesheet" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Home Accessories</h1>

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
	</div>
</body>
</html>
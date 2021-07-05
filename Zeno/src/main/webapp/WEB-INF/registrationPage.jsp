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
	
	<div class="limiter">
		<div class="container-login100">
			<p>
				<form:errors path="user.*" />
			</p>
			<div class="wrap-login100">
				<form:form class="login100-form validate-form" method="post" action="/registration" modelAttribute="user">
					<span class="login100-form-title p-b-34"> Account
						Registrations </span>
					

						<div class="wrap-input100 rs1-wrap-input100 validate-input m-b-20"
							data-validate="Type user name">
							<form:input id="first-name" class="input100" type="text"
								path="username" placeholder="User name" />
							<span class="focus-input100"></span>

						</div>
						<div class="wrap-input100 rs2-wrap-input100 validate-input m-b-20"
							data-validate="email">
							<form:input class="input100" type="email" path="email"
								placeholder="Email" />
							<span class="focus-input100"></span>
						</div>

						<div class="wrap-input100 rs2-wrap-input100 validate-input m-b-20"
							data-validate="Type password">
							<form:input class="input100" type="password" path="password"
								placeholder="Password" />
							<span class="focus-input100"></span>
						</div>
						<div class="wrap-input100 rs2-wrap-input100 validate-input m-b-20"
							data-validate="Type password">
							<form:input class="input100" type="password" path="cpassword"
								placeholder="Confirm Password" />
							<span class="focus-input100"></span>
						</div>
						<div class="wrap-input100 rs2-wrap-input100 validate-input m-b-20"
							data-validate="phone_number">
							<form:input class="input100" type="phone_number"
								path="phone_number" placeholder="Phone Number" />
							<span class="focus-input100"></span>
						</div>

						<div class="container-login100-form-btn">
							<input type="submit" class="login100-form-btn" value="Sign up"/>
						</div>
					
				</form:form>

				<div class="login100-more"
					style="background-image: url('images/main.jpg');"></div>
			</div>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch : 20,
			dropdownParent : $('#dropDownSelect1')
		});
	</script>
	<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
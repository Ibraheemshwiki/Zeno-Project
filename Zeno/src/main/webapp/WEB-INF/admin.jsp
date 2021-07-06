<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
  <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Business Oriented CSS Template</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" /> <!-- https://fonts.google.com/ -->
    <link href="/css/bootstrap.min.css" rel="stylesheet" /> <!-- https://getbootstrap.com/ -->
    <link href="/fontawesome/css/all.min.css" rel="stylesheet" /> <!-- https://fontawesome.com/ -->
    <link href="/css/templatemo-business-oriented.css" rel="stylesheet" />
</head>
<!--

TemplateMo 549 Business Oriented

https://templatemo.com/tm-549-business-oriented

-->
<body>
   
    <div class="tm-nav-container-outer">
         <form id="logoutForm" method="POST" action="/logout">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input type="submit" value="Logout!" />
	</form>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-lg" id="tm-main-nav">
                        <button class="navbar-toggler toggler-example" type="button" data-toggle="collapse" data-target="#navbar-nav" 
                            aria-controls="navbar-nav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="dark-blue-text"><i class="fas fa-bars"></i></span>
                        </button>
                        <div class="collapse navbar-collapse tm-nav" id="navbar-nav">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item active">
                                    <a class="nav-link tm-nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link tm-nav-link" href="/orders">Orders</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link tm-nav-link" href=/additem>Add Item</a>
                                </li>
                             
                            </ul>                            
                        </div>                        
                    </nav>
                </div>
            </div>
        </div>
    </div>

   
        <!-- Services -->
        <div class="row mb-7">
            <div class="col-lg-4 col-md-6">
                <div class="tm-bg-gray tm-box">
                    <div class="text-center mb-3">
                        <img alt="" src="images/zeno19.jpg" style="width:280px; border-radius: 18px">
                    </div>
                    <h4 class="tm-text-primary tm-h3 mb-5">Order</h4>
                   </div>
            </div>
             <div class="col-lg-4 col-md-6">
                <div class="tm-bg-gray tm-box">
                    <div class="text-center mb-3">
                        <img alt="" src="images/zeno19.jpg" style="width:280px; border-radius: 18px">
                    </div>
                    <h4 class="tm-text-primary tm-h3 mb-5">Order</h4>
                   </div>
            </div>
             <div class="col-lg-4 col-md-6">
                <div class="tm-bg-gray tm-box">
                    <div class="text-center mb-3">
                        <img alt="" src="images/zeno19.jpg" style="width:280px; border-radius: 18px">
                    </div>
                    <h4 class="tm-text-primary tm-h3 mb-5">Order</h4>
                   </div>
            </div>
            
        </div>
 

   

    <footer class="container-fluid">
        <div class="row">
            <p class="col-lg-9 col-md-8 mb-5 mb-md-0">
                Copyright &copy; 2021 <span class="tm-text-primary">AXSOS ACADEMY</span>
                - designed by  <span class="tm-text-primary">ZENO TEAM</span>
            </p>
            <div class="col-lg-3 col-md-4 text-right">
                <a rel="nofollow" target="_blank" href="https://www.facebook.com/zenoramallah" class="tm-social-link">
                    <i class="fab fa-facebook fa-2x tm-social-icon"></i>
                </a>
                <a href="https://twitter.com" class="tm-social-link">
                    <i class="fab fa-twitter fa-2x tm-social-icon"></i>
                </a>
                <a href="https://linkedin.com" class="tm-social-link">
                    <i class="fab fa-linkedin fa-2x tm-social-icon"></i>
                </a>
            </div>
        </div>
    </footer>

    <script src="/js/jquery-3.4.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/parallax.min.js"></script> <!-- https://pixelcog.github.io/parallax.js/ -->
    <script src="/js/tooplate-script.js"></script>
    <script>
        $(document).ready(function () {
            $('#parallax-1').parallax({ imageSrc: 'img/biz-oriented-header.jpg' });
            $('#parallax-2').parallax({ imageSrc: 'img/biz-oriented-footer.jpg' });
        });
    </script>
</body>

</html>
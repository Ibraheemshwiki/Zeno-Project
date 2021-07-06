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
    <link href="css/bootstrap.min.css" rel="stylesheet" /> <!-- https://getbootstrap.com/ -->
    <link href="fontawesome/css/all.min.css" rel="stylesheet" /> <!-- https://fontawesome.com/ -->
    <link href="css/templatemo-business-oriented.css" rel="stylesheet" />
</head>
<!--

TemplateMo 549 Business Oriented

https://templatemo.com/tm-549-business-oriented

-->
<body>
    <div id="parallax-1" class="parallax-window" data-parallax="scroll" data-image-src="images/zeno6.jpg">
        <div class="container-fluid">   
            <div class="row">
                <div class="col-12">
                  
                </div>
            </div>
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
                                    <a class="nav-link tm-nav-link" href="/accessories">Accessories</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link tm-nav-link" href=/homeaccessories>Home Accessories</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link tm-nav-link" href="/makeup">Makeup</a>
                                </li>
                            </ul>                            
                        </div>                        
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid mt-7">
        <div class="row mb-6">
            <section class="col-lg-6 mb-lg-0 mb-5">
                <div class="tm-intro">
                    <h3 class="tm-title-gray mb-4">More About ZENO</h3>
                    <hr class="mb-5 tm-hr">
                    <p class="mb-5">ZENO is a store that mixes different needs for a girl, which offers the best quality in the best prices. Moreover, ZENO deals with big well known companies such as STEVEMADDEN , ANNE KLEIN, FOX HOME , NAMAAN and JOHN RICHARD</p>
                    <img src="images/zeno9.jpg" alt="Company Background Image" class="img-fluid tm-mb-3">
                </div>
            </section>
            <section class="col-lg-6">
                <h3 class="tm-title-gray mb-4">ZENO's Vision</h3>	
                <hr class="mb-5 tm-hr">
                  <p class="mb-5">  What Zeno looks for is to open more branches to cover all the Palestinian cities. Moreover, to deal with more known brands to sell them in the best prices.</p>
                <div class="tm-strategy-box mb-5">
                    <img src="images/zeno.jpg" alt="Image" class="img-fluid tm-strategy-img">
                  
                </div>
             
              
            </section>
                </div>
        </div>
        <!-- Services -->
        <div class="row mb-7">
            <div class="col-lg-4 col-md-6">
                <div class="tm-bg-gray tm-box">
                    <div class="text-center mb-3">
                        <img alt="" src="images/zeno19.jpg" style="width:280px; border-radius: 18px">
                    </div>
                    <h4 class="tm-text-primary tm-h3 mb-5">Accessories</h4>
                    <p>Dealing with European accessories brands and buying it in a perfect prices for the costumer, is the thing that made zeno a unique accessories store in Ramallah</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="tm-bg-gray tm-box">
                    <div class="text-center mb-3">
                       <img alt="" src="images/fox.jpg" style="width:280px; border-radius: 18px">
                    </div> <br><br><br>
                    <h4 class="tm-text-primary tm-h3 mb-5">Home Accessories</h4>
                    <p>FoxHome is one of the biggest home accessories companies in the world. However, cooperation with such a company will definitly make ZENO unique. </p>
                </div>
            </div>
             <div class="col-lg-4 col-md-6">
                <div class="tm-bg-gray tm-box">
                    <div class="text-center mb-3">
                       <img alt="" src="images/flormar.jpg" style="width:280px; border-radius: 18px">
                    </div><br>
                    <h4 class="tm-text-primary tm-h3 mb-5">Makeup & SkinCare</h4>
                    <p>Flormar and Laline are two well known companies for makeup and skincare, both of them are a part of Zeno too!! which is abolutley awesome!</p>
                </div>
            </div>
           
        </div>
    </div>

    <div id="parallax-2" class="parallax-window parallax-window-2" data-parallax="scroll"
        data-image-src="images/zeno5.jpg">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="tm-overlay tm-bg-white">
                        <h4 class="tm-text-primary mb-5">Shop in a Style</h4>
                        <p class="mb-5">If you can't stop thinking about it, BUY IT !</p>
                       
                    </div>
                </div>
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

    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/parallax.min.js"></script> <!-- https://pixelcog.github.io/parallax.js/ -->
    <script src="js/tooplate-script.js"></script>
    <script>
        $(document).ready(function () {
            $('#parallax-1').parallax({ imageSrc: 'img/biz-oriented-header.jpg' });
            $('#parallax-2').parallax({ imageSrc: 'img/biz-oriented-footer.jpg' });
        });
    </script>
</body>

</html>
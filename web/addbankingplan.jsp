<%--
  Created by IntelliJ IDEA.
  User: Hamza Shah
  Date: 6/6/2018
  Time: 12:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>InvestSmart</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicons -->
    <link href="img/logo.png" rel="icon">


    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700"
          rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Libraries CSS Files -->
    <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
    <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">

    <!-- Main Stylesheet File -->
    <link href="css/style.css" rel="stylesheet">

</head>

<body id="body">

<%--<form id="insideBody">--%>
<!--==========================
Top Bar
============================-->
<section id="topbar" class="d-none d-lg-block">
    <div class="container clearfix">
        <div class="contact-info float-left">
            <i class="fa fa-envelope-o"></i> <a href="mailto:contact@example.com">HR@investsmart.com</a>
            <i class="fa fa-phone"></i> +92 3341731677
        </div>
        <div class="social-links float-right">
            <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
            <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
            <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
            <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
            <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
        </div>
    </div>
</section>

<!--==========================
Header
============================-->
<header id="header">
    <form method="post" id="form1">
    <div class="container">

        <div id="logo" class="pull-left">
            <h1>
                <a href="/">
                    <img src="img/main-logo.png" alt="investSMART">
                </a>

            </h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="#body"><img src="img/logo.png" alt="" title="" /></a>-->
        </div>

        <nav id="nav-menu-container">
            <ul class="nav-menu">
                <li class="menu-active"><a href="#body">Home</a></li>
                <li><a href="javascript:{}" onclick="paln()">Plans</a></li>
                <li><a href="javascript:{}" onclick="realestate()">Property Areas</a></li>
                <li><a href="javascript:{}" onclick="adminmessages()">Messages</a></li>
                <li><a href="javascript:{}" onclick="logout()" class="btn signup">Logout</a></li>
            </ul>
        </nav><!-- #nav-menu-container -->
    </div>
    </form>
</header><!-- #header -->




<form method="post" action="/addplanservlet">
    <div id="home" class="container" style="box-shadow: 0px 2px 30px rgba(0,0,0,0.30);margin-top: 2%;
        margin-bottom: 2%;">
        <div class="row">
            <div class="col-md-12">
                <div class="fsSectionText">
                    <h1>Add Banking Plan</h1>
                    <p>Please fill out your information below to register this Plan.
                    </p>
                </div>

                <div class="form-group">
                    <label for="Description">Description</label>
                    <input type="text" class="form-control" id="Description" placeholder="">
                </div>

                <div class="form-group">
                    <label for="PlantermMin">PlantermMin</label>
                    <input type="text" class="form-control" id="PlantermMin" placeholder="">
                </div>

                <div class="form-group">
                    <label for="PlantermMax">PlantermMax</label>
                    <input type="number" class="form-control" id="PlantermMax" placeholder="">
                </div>

                <div class="form-group">
                    <label for="PlanRate">PlanRate</label>
                    <input type="number" class="form-control" id="PlanRate" placeholder="">
                </div>


                <div class="form-group">
                    <label for="MinimumInvestment">Minimum Investment</label>
                    <input type="number" class="form-control" id="MinimumInvestment" placeholder="">
                </div>


                <div class="form-group">
                    <label for="MaximumInvestment">Maximum Investment</label>
                    <input type="number" class="form-control" id="MaximumInvestment" placeholder="">
                </div>

                <div class="form-group">
                    <label for="Islamic">Islamic</label>
                    <input type="text" class="form-control" id="Islamic" placeholder="">
                </div>

                <div class="form-group">
                    <label for="Monthly">Monthly</label>
                    <input type="text" class="form-control" id="Monthly" placeholder="">
                </div>


                <div class="form-group">
                    <label for="Quaterly">Quaterly</label>
                    <input type="text" class="form-control" id="Quaterly" placeholder="">
                </div>

                <div class="form-group">
                    <label for="Halfyearly">Half Yearly</label>
                    <input type="text" class="form-control" id="Halfyearly" placeholder="">
                </div>

                <div class="form-group">
                    <label for="Anually">Anually</label>
                    <input type="text" class="form-control" id="Anually" placeholder="">
                </div>

                <div class="form-group">
                    <label for="Other">Other</label>
                    <input type="text" class="form-control" id="Other" placeholder="">
                </div>

            </div>
        </div>
        <div   class="row" style="padding-bottom:5%;">
            <div class="col-md-9"></div>
            <div class="col-md-3">
                <button class="btn btn-success">Submit</button>
            </div>


        </div>
    </div>
    </div>
</form>





<!--==========================
Footer
============================-->
<footer id="footer">
    <div class="container">
        <div class="copyright">
            &copy; Copyright <strong>2018</strong>. All Rights Reserved
        </div>
        <div class="credits">

            Designed by <a href="https://bootstrapmade.com/">Hussain Haider</a>
        </div>
    </div>
</footer><!-- #footer -->

<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

</div>

<!--==========================
login modal
============================-->
<div id="loginModal" class="modal" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 id="myModalLabel">Login</h3>
                <button type="button" id="closelogin" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <form class="form" role="form" autocomplete="off" id="formLogin" novalidate="" method="POST">
                    <div class="form-group">
                        <a href="" class="float-right">New user?</a>
                        <label for="uname1">Username</label>
                        <input type="text" class="form-control form-control-lg" name="uname1" id="uname1" required="">
                        <div class="invalid-feedback">Oops, you missed this one.</div>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control form-control-lg" id="pwd1" required=""
                               autocomplete="new-password">
                        <div class="invalid-feedback">Enter your password too!</div>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="rememberMe">
                        <label class="custom-control-label" for="rememberMe">Remember me on this computer</label>
                    </div>
                    <div class="form-group py-4">
                        <button class="btn btn-outline-secondary btn-lg" data-dismiss="modal" aria-hidden="true">Cancel</button>
                        <button type="submit" class="btn btn-success btn-lg float-right" id="btnLogin">Login</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div><!-- #login -->


<!-- JavaScript Libraries -->
<script src="lib/jquery/jquery.min.js"></script>
<script src="lib/jquery/jquery-migrate.min.js"></script>
<script src="lib/bootstrap/js/bootstrap.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/superfish/hoverIntent.js"></script>
<script src="lib/superfish/superfish.min.js"></script>
<script src="lib/wow/wow.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>
<script src="lib/magnific-popup/magnific-popup.min.js"></script>
<script src="lib/sticky/sticky.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"></script>
<!-- Contact Form JavaScript File -->
<!--  <script src="contactform/contactform.js"></script>-->


<script>




    function logout()
    {
        var path="logoutservlet?";


        document.getElementById("form1").action=path;
        document.getElementById("form1").submit();


    }


    function realestate()
    {

        var path="realestateservlet?";


        document.getElementById("form1").action=path;
        document.getElementById("form1").submit();


    }


    function adminmessages()
    {

        var path="messagesservlet?";


        document.getElementById("form1").action=path;
        document.getElementById("form1").submit();


    }



    function paln()
    {

        var path="bankingservlet?";


        document.getElementById("form1").action=path;
        document.getElementById("form1").submit();



    }










</script>



<!-- Template Main Javascript File -->
<script src="js/main.js"></script>

</body>

</html>
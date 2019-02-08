<%@ page import="Business_Layer.preference" %><%--
  Created by IntelliJ IDEA.
  User: Hamza Shah
  Date: 6/5/2018
  Time: 3:54 PM
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

<div id="insideBody">
    <!--==========================
Top Bar
============================-->
    <section id="topbar" class="d-none d-lg-block">
        <div class="container clearfix">
            <div class="contact-info float-left">
                <i class="fa fa-envelope-o"></i> <a href="mailto:contact@example.com">ContactTeam@investsmart.com</a>
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
                    <li ><a href="SignupSignin.jsp">Home</a></li>
                    <li><a href="javascript:{}" onclick="paln()">Plans</a></li>
                    <li><a href="javascript:{}" onclick="realestate()">Real Estate</a></li>
                    <li class="menu-active"><a href="Userprofile.jsp">Profile</a></li>
                    <li><a href="contactus.jsp">Contact</a></li>

                    <li><button href="#" id="submitbtnlogout" onclick="logout()" class="btn signup">Logout</button></li>
                </ul>
            </nav><!-- #nav-menu-container -->
        </div>
            </form>
    </header><!-- #header -->

<%

    preference userpreferences=(preference) request.getAttribute("preferences");
    if(userpreferences==null )
    {
        userpreferences=new preference();
    }



%>

    <form method="post" action="/addpreferencesservlet">
        <div class="container" style="margin-top: 2%;margin-bottom: 2%;">
            <div class="row">
                <div class="col-md-6">
                    <div>
                        <h2><a class="fa fa-bank"></a> Banking Preferences</h2>
                    </div>

                    <div class="form-group">
                        <label for="IR">Investment Range</label>
                        <input type="text" class="form-control" id="IR" name="IR" placeholder="<%=userpreferences.getInvestmentrange()%>">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div>
                        <h2><a class="fa fa-briefcase"></a> Real Estate Preferences</h2>
                    </div>
                    <div class="form-group">
                        <label for="city">City</label>
                        <input type="text" class="form-control" id="city" name="city" placeholder="<%=userpreferences.getCity()%>">
                    </div>
                    <div class="form-group">
                        <label for="Area">Area</label>
                        <input type="text" class="form-control" id="Area" name="Area" placeholder="<%=userpreferences.getArea()%>">
                    </div>
                    <div class="form-group">
                        <label for="Size">Size</label>
                        <input type="text" class="form-control" id="Size" name="Size" placeholder="<%=userpreferences.getSize()%>">
                    </div>
                </div>
                <div class="col-md-6">
                    <div>
                        <h2><a class="fa fa-home"></a> House (Not Mandaotry)</h2>
                    </div>
                    <div class="form-group">
                        <label for="stories">Stories</label>
                        <input type="text" class="form-control" id="stories" name="stories" placeholder="<%=userpreferences.getStories()%>">
                    </div>

                    <div class="form-group">
                        <label for="Bedrooms">Bedrooms</label>
                        <input type="text" class="form-control" id="bedrooms" name="bedrooms" placeholder="<%=userpreferences.getBedrooms()%>">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-9"></div>
                <div class="col-md-3">
                    <button class="btn btn-success">Submit</button>
                    <span > <%= request.getSession().getAttribute("message").toString() %></span>
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
                        <button class="btn btn-outline-secondary btn-lg">Cancel</button>
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

<!-- Template Main Javascript File -->
<script src="js/main.js"></script>

<script type="text/javascript">


    function preferences()
    {
        var id="preferences";
        var path="preferences.jsp?";


        document.getElementById("preferences").action=path;
        document.getElementById("submitbtn").submit();


    }





    function realestate()
    {

        var path="realestateservlet?";


        document.getElementById("form1").action=path;
        document.getElementById("form1").submit();


    }

    function paln()
    {

        var path="bankisngservlet?";

        document.getElementById("form1").action=path;
        document.getElementById("form1").submit();

    }


    function logout()
    {
        var id="preferences";
        var path="logoutservlet?";


        document.getElementById("formlogout").action=path;
        document.getElementById("submitbtnlogout").submit();


    }



</script>




</body>

</html>
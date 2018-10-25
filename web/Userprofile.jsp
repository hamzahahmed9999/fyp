<%@ page import="Business_Layer.User" %>
<%--
  Created by IntelliJ IDEA.
  User: Hamza Shah
  Date: 6/5/2018
  Time: 3:49 PM
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
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">

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
                    <li ><a href="#body">Home</a></li>
                    <li><a href="Banking.jsp">Plans</a></li>
                    <li><a href="">Real Estate</a></li>
                    <li class="menu-active"><a href="Userprofile.jsp">Profile</a></li>
                    <li><a href="contactus.jsp">Contact</a></li>

                    <li><a href="#" class="btn signup">Logout</a></li>


                    </form>

                </ul>
            </nav><!-- #nav-menu-container -->
        </div>
    </header><!-- #header -->


    <%
        User currentuser;
        currentuser=(User)session.getAttribute("signedinuser");
        //currentuser=(User) request.getSession().getAttribute("signeduser");
        System.out.println(currentuser.getId());
        System.out.println(currentuser.getName());

    %>


    <div id="home" class="container" style="box-shadow: 0px 2px 30px rgba(0,0,0,0.30);margin-top: 2%;
        margin-bottom: 2%;">
        <div class="row" style="padding:2%">
            <div class="col-xs-12 col-sm-3 center">
                    <span class="profile-picture">
                        <img class="editable img-responsive" alt=" Avatar" id="avatar2" src="http://bootdey.com/img/Content/avatar/avatar6.png">
                    </span>

                <div class="space space-4"></div>

<form action="edituserprofile.jsp">

    <button id="submitbtn1"class="btn btn-sm btn-block btn-primary bigger-110"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit Profile</button>

</form>



                <form id="preferences" action="preferences.jsp">

                    <button id="submitbtn"class="btn btn-sm btn-block btn-outline-success bigger-110"><i class="fa fa-cog" aria-hidden="true"></i>Preferences</button>
                </form>

            </div><!-- /.col -->

            <div class="col-xs-12 col-sm-9">
                <h4 class="blue">
                    <span class="middle"><%= currentuser.getName()%></span>
                </h4>




                <div class="profile-user-info">
                    <div class="profile-info-row">
                        <div class="profile-info-name"> Username </div>

                        <div class="profile-info-value">
                            <span><%= currentuser.getName() %></span>
                        </div>
                    </div>

                    <div class="profile-info-row">
                        <div class="profile-info-name"> Location </div>

                        <div class="profile-info-value">
                            <i class="fa fa-map-marker light-orange bigger-110"></i>
                            <span><%= currentuser.getCity() %></span>
                            <span></span>
                        </div>
                    </div>

                    <div class="profile-info-row">
                        <div class="profile-info-name"> Age </div>

                        <div class="profile-info-value">
                            <span><%= currentuser.getDOB()%></span>
                        </div>
                    </div>

                    <div class="profile-info-row">
                        <div class="profile-info-name"> Joined </div>

                        <div class="profile-info-value">
                            <span></span>
                        </div>
                    </div>
                </div>

                <div class="hr hr-8 dotted"></div>

                <!-- <div class="profile-user-info">
                    <div class="profile-info-row">
                        <div class="profile-info-name"> Website </div>

                        <div class="profile-info-value">
                            <a href="#" target="_blank">www.alexdoe.com</a>
                        </div>
                    </div>

                    <div class="profile-info-row">
                        <div class="profile-info-name">
                            <i class="middle ace-icon fa fa-facebook-square bigger-150 blue"></i>
                        </div>

                        <div class="profile-info-value">
                            <a href="#">Find me on Facebook</a>
                        </div>
                    </div>

                    <div class="profile-info-row">
                        <div class="profile-info-name">
                            <i class="middle ace-icon fa fa-twitter-square bigger-150 light-blue"></i>
                        </div>

                        <div class="profile-info-value">
                            <a href="#">Follow me on Twitter</a>
                        </div>
                    </div>
                </div> -->
            </div><!-- /.col -->
        </div><!-- /.row -->

        <div class="space-20"></div>

        <div class="row">
            <div class="col-xs-12 col-sm-12">
                <div class="widget-box transparent">
                    <div class="widget-header widget-header-small">
                        <h4 class="widget-title smaller">
                            <i class="ace-icon fa fa-check-square-o bigger-110"></i>
                            Little About Me
                        </h4>
                    </div>

                    <div class="widget-body">
                        <div class="widget-main">
                            <p>
                                My job is mostly lorem ipsuming and dolor sit ameting as long as consectetur adipiscing elit.
                                Sometimes quisque commodo massa gets in the way and sed ipsum porttitor facilisis.
                                The best thing about my job is that vestibulum id ligula porta felis euismod and nullam quis risus eget urna mollis ornare.
                            </p>
                            <p>
                                Thanks for visiting my profile.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- /#home -->








    <!--==========================
Footer
============================-->
    <footer id="footer">
        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong>2018</strong>. All Rights Reserved
            </div>
            <div class="credits">

                Designed by <a href="https://bootstrapmade.com/">Hamza Ahmed</a>
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
                        <input type="password" class="form-control form-control-lg" id="pwd1" required="" autocomplete="new-password">
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


<script type="text/javascript">

    function preferences()
    {
        var id="preferences";
        var path="preferences.jsp?";


        document.getElementById("preferences").action=path;
        document.getElementById("submitbtn").submit();


    }


</script>




<!-- Template Main Javascript File -->
<script src="js/main.js"></script>

</body>

</html>

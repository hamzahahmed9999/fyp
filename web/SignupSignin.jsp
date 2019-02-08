<%--
  Created by IntelliJ IDEA.
  User: Hamza Shah
  Date: 5/24/2018
  Time: 9:39 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
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
        <form id="form1" method="post">
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
                    <li class="menu-active"><a href="SignupSignin.jsp">Home</a></li>
                    <li><a href="javascript:{}" onclick="paln()">Banking</a></li>
                    <li><a href="javascript:{}" onclick="realestate()">Real Estate</a></li>

                    <%
                        if(request.getSession().getAttribute("signedinuser")!=null)
                        {
                    %>
                    <li><a href="Userprofile.jsp">Profile</a></li>
                    <li><a href="contactus.jsp">Contact</a></li>
                    <li><a href="javascript:{}" onclick="logout()" class="btn signup">Logout</a></li>
                    <%
                        }
                        else {

                    %>
                    <li onclick="loginbtn()"><a href="#loginModal" role="button" id="loginbtn" class="btn login" data-toggle="modal">Login</a></li>
                    <li onclick=""><a href="Signup.jsp" role="button" id="signupbtn" class="btn signup" >Signup</a></li>
                    <%
                        }
                    %>

                </ul>
            </nav><!-- #nav-menu-container -->
        </div>
        </form>
    </header><!-- #header -->



    <!--==========================
    Intro Section
  ============================-->
    <section id="intro">

        <div class="intro-content">
            <h2>We help <span>you Invest!</span></h2>

        </div>

        <div id="intro-carousel" class="owl-carousel">
            <div class="item" style="background-image: url('img/Investment.jpg');"></div>
        </div>

    </section><!-- #intro -->

    <main id="main">

        <!--==========================
      About Section
    ============================
        <section id="about" class="wow fadeInUp">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 about-img">
                        <img src="img/about-img.jpg" alt="">
                    </div>

                    <div class="col-lg-6 content">
                        <h2>Based in Lahore/h2>
                        <h3>But providing e.</h3>

                        <ul>
                            <li><i class="ion-android-checkmark-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                            <li><i class="ion-android-checkmark-circle"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                            <li><i class="ion-android-checkmark-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>
                        </ul>

                    </div>
                </div>

            </div>
        </section><!-- #about -->

        <!--==========================
      Services Section
    ============================-->
        <section id="services">
            <div class="container">
                <div class="section-header">
                    <h2>Services</h2>
                    <p>We provide investment opportunities in Pakistan.</p>
                </div>

                <div class="row">

                    <div class="col-lg-6">
                        <div class="box wow fadeInLeft">
                            <div class="icon"><i class="fa fa-bar-chart"></i></div>
                            <h4 class="title"><a href="">Growth</a></h4>
                            <p class="description">Helping your assets grow by investing in the right market</p>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="box wow fadeInRight">
                            <div class="icon"><i class="fa fa-picture-o"></i></div>
                            <h4 class="title"><a href="">Crediblitly</a></h4>
                            <p class="description">We provide information from the most trusted and authentic sources</p>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="box wow fadeInLeft" data-wow-delay="0.2s">
                            <div class="icon"><i class="fa fa-shopping-bag"></i></div>
                            <h4 class="title"><a href="">Direct Contact</a></h4>
                            <p class="description">We help you connect with the right person according to your investment needs</p>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="box wow fadeInRight" data-wow-delay="0.2s">
                            <div class="icon"><i class="fa fa-map"></i></div>
                            <h4 class="title"><a href="">Personalized Preferences</a></h4>
                            <p class="description">You can easily personalize your preferences and our AI will take care of the rest</p>
                        </div>
                    </div>

                </div>

            </div>
        </section><!-- #services -->

        <!--==========================
       Clients Section
     ============================
         <section id="clients" class="wow fadeInUp">
             <div class="container">
                 <div class="section-header">
                     <h2>Clients</h2>
                     <p>Sed tamen tempor magna labore dolore dolor sint tempor duis magna elit veniam aliqua esse amet veniam enim export quid quid veniam aliqua eram noster malis nulla duis fugiat culpa esse aute nulla ipsum velit export irure minim illum fore</p>
                 </div>

                 <div class="owl-carousel clients-carousel">
                     <img src="img/clients/client-1.png" alt="">
                     <img src="img/clients/client-2.png" alt="">
                     <img src="img/clients/client-3.png" alt="">
                     <img src="img/clients/client-4.png" alt="">
                     <img src="img/clients/client-5.png" alt="">
                     <img src="img/clients/client-6.png" alt="">
                     <img src="img/clients/client-7.png" alt="">
                     <img src="img/clients/client-8.png" alt="">
                 </div>

             </div>
         </section><!-- #clients


         ==========================
       Call To Action Section
     ============================
         <section id="call-to-action" class="wow fadeInUp">
             <div class="container">
                 <div class="row">
                     <div class="col-lg-9 text-center text-lg-left">
                         <h3 class="cta-title">Call To Action</h3>
                         <p class="cta-text"> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                     </div>
                     <div class="col-lg-3 cta-btn-container text-center">
                         <a class="cta-btn align-middle" href="#">Call To Action</a>
                     </div>
                 </div>

             </div>
         </section><!-- #call-to-action -->

        <!--==========================
      Our Team Section
    ============================-->
        <section id="team" class="wow fadeInUp">
            <div class="container">
                <div class="section-header">
                    <h2>Our Team</h2>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="member">
                            <div class="pic"><img src="" alt=""></div>
                            <div class="details">
                                <h4>Ahsan Awan</h4>

                                <div class="social">
                                    <a href=""><i class="fa fa-twitter"></i></a>
                                    <a href=""><i class="fa fa-facebook"></i></a>
                                    <a href=""><i class="fa fa-google-plus"></i></a>
                                    <a href=""><i class="fa fa-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="member">
                            <div class="pic"><img src="" alt=""></div>
                            <div class="details">
                                <h4>Hamzah Ahmed</h4>

                                <div class="social">
                                    <a href=""><i class="fa fa-twitter"></i></a>
                                    <a href=""><i class="fa fa-facebook"></i></a>
                                    <a href=""><i class="fa fa-google-plus"></i></a>
                                    <a href=""><i class="fa fa-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="member">
                            <div class="pic"><img src="" alt=""></div>
                            <div class="details">
                                <h4>Hamzah Quddos</h4>

                                <div class="social">
                                    <a href=""><i class="fa fa-twitter"></i></a>
                                    <a href=""><i class="fa fa-facebook"></i></a>
                                    <a href=""><i class="fa fa-google-plus"></i></a>
                                    <a href=""><i class="fa fa-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="member">
                            <div class="pic"><img src="" alt=""></div>
                            <div class="details">
                                <h4>Basit Riaz</h4>
                                <div class="social">
                                    <a href=""><i class="fa fa-twitter"></i></a>
                                    <a href=""><i class="fa fa-facebook"></i></a>
                                    <a href=""><i class="fa fa-google-plus"></i></a>
                                    <a href=""><i class="fa fa-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section><!-- #team -->

        <!--==========================
      Contact Section
    ============================-->
        <main id="contact" class="wow fadeInUp">
            <div class="container">
                <div class="section-header">
                    <h2>Contact Us</h2>
                    <p>Please feel free to contact us</p>
                </div>

                <div class="row contact-info">

                    <div class="col-md-4">
                        <div class="contact-address">
                            <i class="ion-ios-location-outline"></i>
                            <h3>Address</h3>
                            <address>FAST NU, Lahore</address>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="contact-phone">
                            <i class="ion-ios-telephone-outline"></i>
                            <h3>Phone Number</h3>
                            <p><a href="">+923341731677</a></p>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="contact-email">
                            <i class="ion-ios-email-outline"></i>
                            <h3>Email</h3>
                            <p><a href="mailto:info@example.com">info@investsmart.com</a></p>
                        </div>
                    </div>

                </div>
            </div>

            <div id="google-map" data-latitude="31.48091" data-longitude="74.303227"></div>

</div>

</section><!-- #contact -->

</main>

<!--==========================
Footer
============================-->
<footer id="footer">
    <div class="container">
        <div class="copyright">
            &copy; Copyright <strong>2018</strong>. All Rights Reserved
        </div>

    </div>
</footer><!-- #footer -->

<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

</div>

<!--==========================
login modal
============================-->
<div id="loginModal" class="modal" tabindex="-1" role="dialog" aria-hidden="true"  aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 id="myModalLabel">Login</h3>
                <button type="button" id="closelogin" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <form class="form" role="form" autocomplete="off" id="formLogin" novalidate="" method="POST" action="Signin">
                    <div class="form-group">
                        <a href="" class="float-right">New user?</a>
                        <label  for="uemailsi">Username</label>
                        <input id="uemailsi" name="uemailsi" type="text" class="form-control form-control-lg" required="">
                        <div class="invalid-feedback">Oops, you missed this one.</div>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input id="upassi" name="upassi" type="password" class="form-control form-control-lg" required="" autocomplete="new-password">
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

        var path="bankingservlet?";


        document.getElementById("form1").action=path;
        document.getElementById("form1").submit();



    }



    function logout()
    {
        var id="preferences";
        var path="logoutservlet?";


        document.getElementById("form1").action=path;
        document.getElementById("form1").submit();


    }

</script>







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

</body>

</html>
<%--
  Created by IntelliJ IDEA.
  User: Hussain
  Date: 08-Oct-17
  Time: 10:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <title>SmartFly - Dicover</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="assets/css/airplane.png">

    <link rel="stylesheet" href="assets/css/w3.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="assets/css/style1.css" rel="stylesheet" type="text/css">
    <link href="assets/css/login.css" rel="stylesheet" type="text/css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>-->
    <link href="https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/Footer-with-social-icons.css">

    <link href="https://fonts.googleapis.com/css?family=Bitter" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface|Audiowide|Luckiest+Guy" rel="stylesheet">

</head>
<body>
<a  id="return-to-top"><i class="icon-chevron-up"></i></a>



<div class="container-fluid">
    <div class="row">
        <div id="sp-top1" class="col-sm-12 col-md-12">
            <div class="sp-column ">
                <ul class="sp-contact-info">
                    <li class="sp-contact-phone"><span class="glyphicon glyphicon-earphone"></span> <a id="phonenumber" href="#">0800 smartfly(359 782)</a></li>
                    <li class="sp-contact-email"><span class="glyphicon glyphicon-envelope"></span> <a id="emailadd" href="mailto:friendzhussain094@gmail.com">info@smartfly.com</a></li></ul>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="logoutModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4>Log In <i class="fa fa-lock"></i></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">

                        <div class="social-buttons">
                            <a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
                            <a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
                        </div>
                        or
                        <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
                            <div class="form-group">
                                <label class="sr-only" for="exampleInputEmail2">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="exampleInputPassword2">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                                <div class="help-block text-right"><a href="">Forget the password ?</a></div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> keep me logged-in
                                </label>
                            </div>
                        </form>
                    </div>
                    <div class="bottom text-center">
                        New here ? <a href="#"><b>Join Us</b></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<div class="header">
    <nav class="my-navbar1 per_nav navbar navbar-inverse">
        <div class="container-fluid fixed">
            <div class="navbar-header">


                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">

                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#" style="color: white;">SmartFly</a>
            </div>
            <div class="navbar-collapse collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li><a href="main.jsp" style="color: white;">Home</a></li>
                    <li class="active"><a  href="Dicover.jsp">Dicover</a></li>
                    <li ><a style="color: white;" href="Book.jsp">Book</a></li>
                    <li><a style="color: white;" href="#">Page 3</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <%
                        if(session.getAttribute("user_email")==null)
                        {
                    %>

                    <li><a href="signup.jsp" style="color: white;"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#logoutModal" style="color: white;" id="log"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    <%
                    } else {
                    %>
                    <li><a href="/LogoutServlet" style="color: white;"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </div>
    </nav>
    <div class="carousel-caption">
        <h1>Discover the World</h1>
        <p>Come fly with us</p>

    </div>
</div>


<img src="assets/css/place.jpg" alt="place" height="500" width="1350">





<div class="hr"><hr width="50%" class="style14"></div>




<div class="container-fluid">
    <div class="row gal-container">
        <div class="col-sm-12 col-md-12 gal-item container2">

        </div>
    </div>
</div>



<section>
    <div class="container gal-container">
        <div class="col-md-8 col-sm-12 co-xs-12 gal-item container2">
            <div class="box">

                <img src="assets/css/l1.jpg" alt="Avatar" class="image" style="display: block;">
                <div class="overlay">
                    <div class="text"><h1>Dubai</h1><button class="btn btn-primary btn-lg btn-block">Rs: 32,000</button></div>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-sm-6 co-xs-12 gal-item container2">
            <div class="box">
                <img src="assets/css/l2.jpg" alt="Avatar" class="image" style="display: block;">
                <div class="overlay">
                    <div class="text"><h1>India</h1><button class="btn btn-primary btn-lg btn-block">Rs: 32,000</button></div>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-sm-6 co-xs-12 gal-item container2">
            <div class="box">
                <img src="assets/css/l3.jpg" alt="Avatar" class="image" style="display: block;">
                <div class="overlay">
                    <div class="text"><h1>Pakistan</h1><button class="btn btn-primary btn-lg btn-block">Rs: 32,000</button></div>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-sm-6 co-xs-12 gal-item container2">
            <div class="box">
                <img src="assets/css/l4.jpg" alt="Avatar" class="image" style="display: block;">
                <div class="overlay">
                    <div class="text"><h1>Austraila</h1><button class="btn btn-primary btn-lg btn-block">Rs: 32,000</button></div>
                </div>                          </div>
        </div>
        <div class="col-md-4 col-sm-6 co-xs-12 gal-item container2">
            <div class="box">
                <img src="assets/css/l5.jpg" alt="Avatar" class="image" style="display: block;">
                <div class="overlay">
                    <div class="text"><h1>New zealand</h1><button class="btn btn-primary btn-lg btn-block">Rs: 32,000</button></div>
                </div>                          </div>
        </div>
        <div class="col-md-4 col-sm-6 co-xs-12 gal-item container2">
            <div class="box">
                <img src="assets/css/l6.jpg" alt="Avatar" class="image" style="display: block;">
                <div class="overlay">
                    <div class="text"><h1>England</h1><button class="btn btn-primary btn-lg btn-block">Rs: 32,000</button></div>
                </div>
            </div>
        </div>
        <div class="col-md-8 col-sm-12 co-xs-12 gal-item container2">
            <div class="box">
                <img src="assets/css/l7.jpg" alt="Avatar" class="image" style="display: block;">
                <div class="overlay">
                    <div class="text"><h1>Germany</h1><button class="btn btn-primary btn-lg btn-block">Rs: 32,000</button></div>
                </div>                          </div>
        </div>

    </div>
</section>



<footer id="myFooter">
    <div class="container">
        <div class="row">
            <div class="col-sm-3 myCols">
                <h5>Get started</h5>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Sign up</a></li>
                    <li><a href="#">Downloads</a></li>
                </ul>
            </div>
            <div class="col-sm-3 myCols">
                <h5>About us</h5>
                <ul>
                    <li><a href="#">Company Information</a></li>
                    <li><a href="#">Contact us</a></li>
                    <li><a href="#">Reviews</a></li>
                </ul>
            </div>
            <div class="col-sm-3 myCols">
                <h5>Support</h5>
                <ul>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Help desk</a></li>
                    <li><a href="#">Forums</a></li>
                </ul>
            </div>
            <div class="col-sm-3 myCols">
                <h5>Legal</h5>
                <ul>
                    <li><a href="#">Terms of Service</a></li>
                    <li><a href="#">Terms of Use</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="social-networks">
        <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
        <a href="#" class="facebook"><i class="fa fa-facebook-official"></i></a>
        <a href="#" class="google"><i class="fa fa-google-plus"></i></a>
    </div>
    <div class="footer-copyright">
        <p>© 2017 Copyright Text </p>
    </div>
</footer>



</body>
<script>
    $(document).ready(function() {


        var stickyNavTop = $('.fixed').offset().top;

        var stickyNav = function(){
            var scrollTop = $(window).scrollTop();

            if (scrollTop > stickyNavTop) {
                $('.fixed').addClass('navbar-fixed');
            } else {
                $('.fixed').removeClass('navbar-fixed');
            }
        };

        stickyNav();

        $(window).scroll(function() {
            stickyNav();

        });
    });
</script>
<script>
    // ===== Scroll to Top ====
    $(window).scroll(function() {
        if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
            $('#return-to-top').fadeIn(200);    // Fade in the arrow
        } else {
            $('#return-to-top').fadeOut(200);   // Else fade out the arrow
        }
    });
    $('#return-to-top').click(function() {      // When arrow is clicked
        $('body,html').animate({
            scrollTop : 0                       // Scroll to top of body
        }, 500);
    });
</script>


</html>


<%--
  Created by IntelliJ IDEA.
  User: Hussain
  Date: 08-Oct-17
  Time: 9:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <title>SmartFly - Home</title>
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
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface|Audiowide|Luckiest+Guy" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"> </head>

<body style="padding-right: 0px;!important;"> <a id="return-to-top"><i class="icon-chevron-up"></i></a>
<div class="container-fluid">
    <div class="row">
        <div id="sp-top1" class="col-sm-12 col-md-12">
            <div class="sp-column ">
                <ul class="sp-contact-info">
                    <li class="sp-contact-phone"><span class="glyphicon glyphicon-earphone"></span> <a id="phonenumber" href="#">0800 smartfly(359 782)</a></li>
                    <li class="sp-contact-email"><span class="glyphicon glyphicon-envelope"></span> <a id="emailadd" href="mailto:friendzhussain094@gmail.com">info@smartfly.com</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="modal" id="logoutModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4>Log In <i class="fa fa-lock"></i></h4> </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="social-buttons"> <a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a> <a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a> </div> or
                        <form class="form" role="form" action="/MainServlet?value=In" method="post" accept-charset="UTF-8" id="login-nav">
                            <div class="form-group">
                                <label class="sr-only" for="exampleInputEmail2" >Email address</label>
                                <input type="email" class="form-control" name="useremail" id="exampleInputEmail2" placeholder="Email address" required> </div>
                            <div class="form-group">
                                <label class="sr-only" for="exampleInputPassword2" >Password</label>
                                <input type="password" class="form-control" name="userpassword" id="exampleInputPassword2" placeholder="Password" required>
                                <div class="help-block text-right"><a href="">Forget the password ?</a></div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> keep me logged-in </label>
                            </div>
                        </form>
                    </div>
                    <div class="bottom text-center"> New here ? <a href="#"><b>Join Us</b></a> </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="header">
    <nav class="my-navbar navbar navbar-inverse">
        <div class="container-fluid fixed">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button> <a class="navbar-brand" href="#" style="color: white;">SmartFly</a> </div>
            <div class="navbar-collapse collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="main.jsp">Home</a></li>
                    <li><a style="color: white;" href="Dicover.jsp">Dicover</a></li>
                    <li><a style="color: white;" href="Book.jsp">Book</a></li>
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
    <div id="myCarousel" class="my-carousel carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active"> <img src="assets/css/plane.jpg" alt="Los Angeles" style="width:100%;">
                <div class="carousel-caption">
                    <h1>Scenic Flights</h1>
                    <p>Come fly with us</p>
                </div>
            </div>
            <div class="item"> <img src="assets/css/plane2.jpg" alt="Chicago" style="width:100%;">
                <div class="carousel-caption">
                    <h1>Chicago</h1>
                    <p>Thank you, Chicago!</p>
                </div>
            </div>
            <div class="item"> <img src="assets/css/plane3.jpg" alt="New York" style="width:100%;">
                <div class="carousel-caption">
                    <h1>New York</h1>
                    <p>We love the Big Apple!</p>
                </div>
            </div>
        </div>
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> <span class="sr-only">Previous</span> </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> <span class="sr-only">Next</span> </a>
    </div>
</div>
<div class="container" style="margin-top: 7%">
    <h1 style="text-align: center">Modern. Experienced. Passionate.</h1>
    <p class="c1"> SmartFly is committed to giving you a lifetime experience that you can choose from one of our package tours, or SmartFly to your own destination. We have modern aircraft, our pilots are experienced, our engineers are the best and the SmartFly people love getting out of bed each day to show off beautiful World. </p>
</div>
<div class="hr">
    <hr width="50%" class="style14">
</div>
<div class="container" id="images">
    <h1>Our Services</h1> <img src="assets/css/qatar2.jpg" id="b" class="img-thumbnail" alt="qatar2" width="304" height="236"> <img src="assets/css/qatar1.jpg" class="img-thumbnail" alt="qatar1" width="304" height="236"> <img src="assets/css/qatar3.jpg" class="img-thumbnail" alt="qatar3" width="304" height="236"> </div>
<div class="container count">
    <div class="row" id="counter">
        <div class="col-sm-4"> <i class="fa fa-plane" aria-hidden="true" style="font-size: 5.73em;"></i>
            <h2>1200</h2>
            <h4>Happy Customers</h4> </div>
        <div class="col-sm-4"> <i class="fa fa-user" aria-hidden="true" style="font-size: 5.73em;"></i>
            <h2>6</h2>
            <h4>Aeroplanes</h4> </div>
        <div class="col-sm-4"> <i class="fa fa-clock-o" aria-hidden="true" style="font-size: 5.73em;"></i>
            <h2>1782</h2>
            <h4>Hours Flown</h4> </div>
    </div>
</div>
<div class="container" style="margin-top: 7%;margin-bottom: 10%;">
    <h1 style="text-align: center">Hear What Our Customers Say.</h1>
    <div class="w3-panel w3-leftbar" style="margin-left: 5%;">
        <p><i class="fa fa-quote-right w3-xxlarge"></i>
            <br> <i class="w3-serif w3-xlarge">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non massa vitae risus fermentum ullamcorper. Phasellus risus urna, ornare in aliquam id, porttitor sit amet sapien. Nulla facilisi.</i></p>
        <p class="c1" style="font-size: 25px;">Maddy Vondervoort</p>
    </div>
</div>
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
    <div class="social-networks"> <a href="#" class="twitter"><i class="fa fa-twitter"></i></a> <a href="#" class="facebook"><i class="fa fa-facebook-official"></i></a> <a href="#" class="google"><i class="fa fa-google-plus"></i></a> </div>
    <div class="footer-copyright">
        <p>© 2017 Copyright Text </p>
    </div>
</footer>
</body>
<script>
    $(document).ready(function () {
        var stickyNavTop = $('.fixed').offset().top;
        var stickyNav = function () {
            var scrollTop = $(window).scrollTop();
            if (scrollTop > stickyNavTop) {
                $('.fixed').addClass('navbar-fixed');
            }
            else {
                $('.fixed').removeClass('navbar-fixed');
            }
        };
        stickyNav();
        $(window).scroll(function () {
            stickyNav();
        });
    });
</script>
<script>
    // ===== Scroll to Top ====
    $(window).scroll(function () {
        if ($(this).scrollTop() >= 50) { // If page is scrolled more than 50px
            $('#return-to-top').fadeIn(200); // Fade in the arrow
        }
        else {
            $('#return-to-top').fadeOut(200); // Else fade out the arrow
        }
    });
    $('#return-to-top').click(function () { // When arrow is clicked
        $('body,html').animate({
            scrollTop: 0 // Scroll to top of body
        }, 500);
    });
</script>

</html>

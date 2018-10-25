<!DOCTYPE html>
<html lang="en">

<head>
    <title>SmartFly - Booking</title>
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
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface|Audiowide|Luckiest+Guy" rel="stylesheet"> </head>

<body> <a id="return-to-top"><i class="icon-chevron-up"></i></a>
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
                            <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
                                <div class="form-group">
                                    <label class="sr-only" for="exampleInputEmail2">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required> </div>
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
        <nav class="my-navbar1 per_nav navbar navbar-inverse">
            <div class="container-fluid fixed">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button> <a class="navbar-brand" href="#" style="color: white;">SmartFly</a> </div>
                <div class="navbar-collapse collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="main.jsp" style="color: white;">Home</a></li>
                        <li><a style="color: white;" href="Dicover.jsp">Dicover</a></li>
                        <li class="active"><a href="Book.jsp">Book</a></li>
                        <li><a style="color: white;" href="#">Page 3</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="signup.jsp" style="color: white;"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#logoutModal" style="color: white;" id="log"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <h2 style="margin-top: 8%;text-align: center">Making a Booking</h2>
    <div class="container">
        <div class="row">
            <div class="col-md-12" style="text-align: center;">
                <button style="background-color: #373a48;color: white;font-weight: bold" type="button" class="btn  btn-arrow-right">Search</button>
                <button style="background-color: #373a48;color: white;font-weight: bold" type="button" class="btn  btn-arrow-right" type="button" class="btn  btn-arrow-right">Result</button>
                <button style="background-color: #373a48;color: white;font-weight: bold" type="button" class="btn  btn-arrow-right">Review</button>
                <button style="background-color: #373a48;color: white;font-weight: bold" type="button" class="btn  btn-arrow-right">Passangers</button>
                <button style="background-color: #373a48;color: white;font-weight: bold" type="button" class="btn  btn-arrow-right">Payment</button>
                <button style="background-color: darkturquoise; color: white;" type="button" class="btn  btn-arrow-right">Verfiy</button>
            </div>
        </div>
      </div>

    <div class="container" style="margin-top: 5%">
        <div class="row">
            <div class="col-md-12">
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="text-align: center"><font size="6">Verification</font></div>
                        <div class="panel-body">
                            <div class="row" style="margin: auto 5%;line-height: 150%">
                                <p><b>An Email has been sent to your Email Address.Kindly verify your ticket</b><br>Please note! Please carefully read the refund and exchange rules (Information->Important Information->Fare Rules) before applying for an online exchange and refund of your ticket.
                                Only tickets purchased on the Aeroflot website can be exchanged or refunded online. Additional services, tickets purchased under non-refundable fares and tickets purchased under multiple forms of payment may not be refunded online. For information on the refund of additional services purchased on the website as well as on the exchange or refund of tickets purchased through other sales channels, please contact our Call Center: if calling from Pakistan: +92 (495) 223 55 55, if calling from Russian regions: 8-800-333-55-55 – free call, E-Mail: <b>info@smartfly.com</b> or the nearest Aeroflot sales office. The timetable of Aeroflot offices working hours you can find in section "Company".</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
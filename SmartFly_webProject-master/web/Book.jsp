<%--
  Created by IntelliJ IDEA.
  User: Hussain
  Date: 08-Oct-17
  Time: 10:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>--%>
    <link href="https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/Footer-with-social-icons.css">

    <link href="https://fonts.googleapis.com/css?family=Bitter" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface|Audiowide|Luckiest+Guy" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script src="js/autocompleter.js"></script>
    <link rel="stylesheet"
          href="https://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
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
                    <li><a style="color: white;" href="Dicover.jsp">Dicover</a></li>
                    <li class="active"><a  href="Book.jsp">Book</a></li>
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
</div>

<div id="map"></div>


<div class="polaroid">
    <div class="container carousel-caption2">
        <h1>Where and when</h1> </div>
    <div id="exTab3" class="container">
        <ul class="nav nav-pills">
            <li class="active"> <a class="tabs" href="#1b" data-toggle="tab"><strong>Return</strong></a> </li>
            <li><a class="tabs" href="#2b" data-toggle="tab"><strong>One Way</strong></a> </li>
            <li><a class="tabs" href="#3b" data-toggle="tab"><strong>Adavced Search</strong></a> </li>
        </ul>
        <div class="tab-content clearfix">
            <div class="tab-pane active" id="1b">
                <form class="form1" method="post" action="/MainServlet?value=Search">
                    <div class="form-group row" style="margin-top: 1%;margin-left: 1%;">
                        <div class="col-md-4">
                            <div class="input-group"> <span class="input-group-addon"><i class="fa fa-plane" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="deptAirport"  placeholder="Departure airport"> </div>
                        </div>
                        <div class="col-md-4">
                            <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                <input type="date" class="form-control" name="deptAirportDate"  placeholder="Departing"> </div>
                        </div>
                        <div class="col-md-4">
                            <div class="input-group">
                                <select class="form-control" style="border-radius: 5%;width: 140%;" name="deptSelectCategory">
                                    <option value="Economy class">Economy class</option>
                                    <option value="Buniess class">Buniess class</option>
                                    <option value="First class">First class</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row" style="margin-top: 1%;margin-left: 1%;">
                        <div class="col-md-4">
                            <div class="input-group"> <span class="input-group-addon"><i class="fa fa-plane" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="arrAirport"  placeholder="Arrival airport"> </div>
                        </div>
                        <div class="col-md-4">
                            <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                <input type="date" class="form-control" name="arrAirportDate"  placeholder="Returning"> </div>
                        </div>
                        <div class="col-md-4">
                            <div class="input-group">
                                <select class="form-control" style="border-radius: 5%;width: 140%;" name="arrSelectCategory">
                                    <option value="Economy class">Economy class</option>
                                    <option value="Buniess class">Buniess class</option>
                                    <option value="First class">First class</option>
                                </select>
                            </div>
                        </div>
                    </div>

                <hr>
                <h3>Passengers
                    <a href="#">
                        <span class="glyphicon glyphicon-question-sign" style="color: white"></span>
                    </a>
                </h3>
                <div class="row" style="margin-left: 1%;margin-right: 1%;">
                    <div class="col-md-4">
                        <select class="form-control" style="border-radius: 4%;width: 100%;" name="adultSelectPassengersCount">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                        <p>Adult(Age:12+)</p>
                    </div>
                    <div class="col-md-4">
                        <select class="form-control" style="border-radius: 4%;width: 100%;" name="childSelectPassengersCount">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                        <p>Child(Age:2-11)</p>
                    </div>
                    <div class="col-md-4">
                        <select class="form-control" style="border-radius: 4%;width: 100%;" name="underageSelectPassengersCount">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                        <p>Under age 2</p>
                    </div>
                </div>
                    <button type="submit" class="btn btn-danger btn-lg" style="float: right;margin-top: 2px;">Search</button>
                </form>
            </div>
            <div class="tab-pane" id="2b">
                <form class="form2" method="post" action="/MainServlet?value=Search">
                    <div class="form-group row" style="margin-top: 1%;margin-left: 1%;">
                        <div class="col-md-4">
                            <div class="input-group"> <span class="input-group-addon"><i class="fa fa-plane" aria-hidden="true"></i></span>
                                <input type="text"  id="search1" class="form-control" name="deptAirport" placeholder="Departure airport"> </div>
                        </div>
                        <div class="col-md-4">
                            <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                <input type="date" class="form-control" name="deptAirportDate" placeholder="Departing"> </div>
                        </div>
                        <div class="col-md-4">
                            <div class="input-group">
                                <select class="form-control" style="border-radius: 5%;width: 140%;" name="deptSelectCategory">
                                    <option value="Economy Class">Economy class</option>
                                    <option value="Buniess Class">Buniess class</option>
                                    <option value="First Class">First class</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row" style="margin-top: 1%;margin-left: 1%;">
                        <div class="col-md-4">
                            <div class="input-group"> <span class="input-group-addon"><i class="fa fa-plane" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="arrAirport" placeholder="Arrival airport"> </div>
                        </div>
                    </div>
                <hr>
                <h3>Passengers
                    <a href="#">
                        <span class="glyphicon glyphicon-question-sign" style="color: white"></span>
                    </a>
                </h3>
                <div class="row" style="margin-left: 1%;margin-right: 1%;">
                    <div class="col-md-4">
                        <select class="form-control" style="border-radius: 4%;width: 100%;" name="adultSelectPassengersCount">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                        <p>Adult(Age:12+)</p>
                    </div>
                    <div class="col-md-4">
                        <select class="form-control" style="border-radius: 4%;width: 100%;" name="childSelectPassengersCount">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                        <p>Child(Age:2-11)</p>
                    </div>
                    <div class="col-md-4">
                        <select class="form-control" style="border-radius: 4%;width: 100%;" name="underageSelectPassengersCount">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                        <p>Under age 2</p>
                    </div>
                </div>
                    <button type="submit" class="btn btn-danger btn-lg" style="float: right;margin-top: 2px;">Search</button>
                </form>
            </div>
            <div class="tab-pane" id="3b">
                <form class="form3" method="post" action="/MainServlet?value=Search">
                    <div class="form-group row" style="margin-top: 1%;margin-left: 1%;">
                        <div class="col-md-3">
                            <div class="input-group"> <span class="input-group-addon"><i class="fa fa-plane" aria-hidden="true"></i></span>
                                <input type="text" class="form-control"  placeholder="Departure airport"> </div>
                        </div>
                        <div class="col-md-3">
                            <div class="input-group"> <span class="input-group-addon"><i class="fa fa-plane" aria-hidden="true"></i></span>
                                <input type="text" class="form-control"  placeholder="Arrival airport"> </div>
                        </div>
                        <div class="col-md-3">
                            <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                <input type="date" class="form-control"  placeholder="Departing"> </div>
                        </div>
                        <div class="col-md-3">
                            <div class="input-group">
                                <select class="form-control" style="border-radius: 5%;width: 140%;">
                                    <option value="Economy class">Economy class</option>
                                    <option value="Buniess class">Buniess class</option>
                                    <option value="First class">First class</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row" style="margin-top: 1%;margin-left: 1%;">
                        <div class="col-md-3">
                            <div class="input-group"> <span class="input-group-addon"><i class="fa fa-plane" aria-hidden="true"></i></span>
                                <input type="text" class="form-control"  placeholder="Arrival airport"> </div>
                        </div>
                        <div class="col-md-3">
                            <div class="input-group"> <span class="input-group-addon"><i class="fa fa-plane" aria-hidden="true"></i></span>
                                <input type="text" class="form-control"  placeholder="Arrival airport"> </div>
                        </div>
                        <div class="col-md-3">
                            <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                <input type="date" class="form-control"  placeholder="Returning"> </div>
                        </div>
                        <div class="col-md-3">
                            <div class="input-group">
                                <select class="form-control" style="border-radius: 5%;width: 140%;">
                                    <option value="Economy class">Economy class</option>
                                    <option value="Buniess class">Buniess class</option>
                                    <option value="First class">First class</option>
                                </select>
                            </div>
                        </div>
                    </div>

                <hr>
                <h3>Passengers
                    <a href="#">
                        <span class="glyphicon glyphicon-question-sign" style="color: white"></span>
                    </a>
                </h3>
                <div class="row" style="margin-left: 1%;margin-right: 1%;">
                    <div class="col-md-4">
                        <select class="form-control" style="border-radius: 4%;width: 100%;">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                        <p>Adult(Age:12+)</p>
                    </div>
                    <div class="col-md-4">
                        <select class="form-control" style="border-radius: 4%;width: 100%;">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                        <p>Child(Age:2-11)</p>
                    </div>
                    <div class="col-md-4">
                        <select class="form-control" style="border-radius: 4%;width: 100%;">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                        <p>Under age 2</p>
                    </div>
                </div>
                    <button type="submit" class="btn btn-danger btn-lg" style="float: right;margin-top: 2px;">Search</button>
                </form>
            </div>
        </div>  </div>
</div>
<div class="hr">
    <hr width="50%" class="style14"> </div>
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
<script>
    function initMap() {
        var uluru = {
            lat: 33.7294
            , lng: 73.0931
        };
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 3
            , center: uluru
        });
        var markers = [
            {
                coords: {
                    lat: 33.7294
                    , lng: 73.0931
                }
                , content: '<h5><b>Islamabad</b></h5>'
            },

            {
                coords: {
                    lat: 31.5546
                    , lng: 74.3572
                }
                , content: '<h5><b>Lahore</b></h5>'
            },

            {
                coords: {
                    lat: 24.8615
                    , lng: 67.0099
                }
                , content: '<h5><b>Karachi</b></h5>'
            },

            {
                coords: {
                    lat: 28.7041
                    , lng: 77.1025
                }
                , content: '<h5><b>Delhi</b></h5>'
            },

            {
                coords: {
                    lat: 30.1984
                    , lng: 71.4687
                }
                , content: '<h5><b>Multan</b></h5>'
            },

            {
                coords: {
                    lat: 19.0760
                    , lng: 72.8777
                }
                , content: '<h5><b>Mumbai</b></h5>'
            },

            {
                coords: {
                    lat: 34.0150
                    , lng: 71.5805
                }
                , content: '<h5><b>Peshawar</b></h5>'
            },

            {
                coords: {
                    lat: 30.1830
                    , lng: 66.9987
                }
                , content: '<h5><b>Quetta </b></h5>'
            }
            , ];
        for (var i = 0; i < markers.length; i++) {
            addMarker(markers[i]);
        }
        var prev_infowindow = false;
        var currWindow = false;

        function addMarker(props) {
            var marker = new google.maps.Marker({
                position: props.coords
                , map: map
                , icon: 'https://storage.googleapis.com/support-kms-prod/SNP_2752125_en_v0'
            });
            if (props.content) {
                var infoWindow = new google.maps.InfoWindow({
                    content: props.content
                });
                marker.addListener('click', function () {
                    if (currWindow) {
                        currWindow.close();
                    }
                    infoWindow.open(map, marker);
                    currWindow = infoWindow;
                });
            }
        }
    }
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB1JH0gzLrI93wlJsCxkRCZ019v_JwovXo&callback=initMap">
</script>

</html>
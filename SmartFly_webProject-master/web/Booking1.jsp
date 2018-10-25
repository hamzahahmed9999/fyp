<%@ page import="com.hussain.Business_Layer.flightClass" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.hussain.Business_Layer.flightDetailClass" %>
<%@ page import="static java.lang.System.out" %>
<%@ page import="static java.lang.System.out" %>
<%@ page import="static java.lang.System.out" %>
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
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface|Audiowide|Luckiest+Guy" rel="stylesheet">
</head>

<body onLoad="myFunction()" style="margin:0;"><a id="return-to-top"><i class="icon-chevron-up"></i></a>
<div id="loader"></div>
<div class="container-fluid">
    <div class="row">
        <div id="sp-top1" class="col-sm-12 col-md-12">
            <div class="sp-column ">
                <ul class="sp-contact-info">
                    <li class="sp-contact-phone"><span class="glyphicon glyphicon-earphone"></span> <a id="phonenumber"
                                                                                                       href="#">0800
                        smartfly(359 782)</a></li>
                    <li class="sp-contact-email"><span class="glyphicon glyphicon-envelope"></span> <a id="emailadd"
                                                                                                       href="mailto:friendzhussain094@gmail.com">info@smartfly.com</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="modal" id="logoutModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">×</span></button>
                <h4>Log In <i class="fa fa-lock"></i></h4></div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="social-buttons"><a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i>
                            Facebook</a> <a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a></div>
                        or
                        <form class="form" role="form" method="post" action="login" accept-charset="UTF-8"
                              id="login-nav">
                            <div class="form-group">
                                <label class="sr-only" for="exampleInputEmail2">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail2"
                                       placeholder="Email address" required></div>
                            <div class="form-group">
                                <label class="sr-only" for="exampleInputPassword2">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword2"
                                       placeholder="Password" required>
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
                    <div class="bottom text-center"> New here ? <a href="#"><b>Join Us</b></a></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="header">
    <nav class="my-navbar1 per_nav navbar navbar-inverse">
        <div class="container-fluid fixed">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"><span
                        class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
                <a class="navbar-brand" href="#" style="color: white;">SmartFly</a></div>
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
</div>
<h2 style="margin-top: 8%;text-align: center">Making a Booking</h2>
<div class="container">
    <div class="row">
        <div class="col-md-12" style="text-align: center;">
            <button style="background-color: #373a48;color: white;font-weight: bold" type="button" class="btn  btn-arrow-right">Search</button>
            <button style="background-color: darkturquoise; color: white;" type="button" class="btn  btn-arrow-right">Result</button>
            <button type="button" class="btn  btn-arrow-right">Review</button>
            <button type="button" class="btn  btn-arrow-right">Passangers</button>
            <button type="button" class="btn  btn-arrow-right">Payment</button>
            <button type="button" class="btn  btn-arrow-right">Verfiy</button>
        </div>
    </div>
    <h4 style="margin-top: 2%;">Your Search</h4>
    <div class="row">
        <div class="col-md-4">
            <div class="row">
                <div class="col-md-4" style="text-align: center">
                    <h5><strong>From</strong></h5>
                    <p>${deptAirport}</p>
                </div>
                <div class="col-md-4"> <i class="fa fa-arrow-circle-o-right" style="font-size:36px;margin-top: 10%"></i> </div>
                <div class="col-md-4">
                    <h5><strong>To</strong></h5>
                    <p>${arrAirport}</p>
                </div>
            </div>
        </div>
        <div class="col-md-2 verticalLine">
            <h5><strong>Departing</strong></h5>
            <p>${deptAirportDate}</p>
        </div>
        <div class="col-md-2 verticalLine">
            <h5><strong>Class</strong></h5>
            <p>${deptSelectCategory}</p>
        </div>
        <div class="col-md-2 verticalLine">
            <h5><strong>Passangers</strong></h5>
            <p>${Passangers}</p>
        </div>
    </div>

    <div class="col-md-2" style="float: right;"> <a href="Book.jsp" class="btn btn-default">Change Search</a>
        <h1></h1> </div>

</div>
<div class="hr">
    <hr width="50%" class="style14">
</div>
<%

    int value =(int) request.getAttribute("flightSize");
    boolean checkFlight=false;
    ArrayList<flightClass> list=null;
    ArrayList<flightDetailClass> list2=null;

    if(value!=0)
    {
        list = (ArrayList<flightClass>) request.getAttribute("flightClass");
        list2 = (ArrayList<flightDetailClass>) request.getAttribute("flightDetailClass");
    }


%>
<div class="container" id="myDiv" style="display:none;margin-right: 2%;">
    <% if (list!=null) { checkFlight=true; %>
    <div class="row">
        <div class="col-md-12" style="text-align: center;">
            <h3><strong>Outbound, <%= list.get(0).getSource() %> to <%= list.get(0).getDestination() %> ( <%= list.size() %> options)</strong></h3>
        </div>
    </div>
    <%
        int index=0;
        for(int i = 0; i < list.size(); i+=1) {

            for(int j=0;j<list2.size();j++)
            {
                if(list.get(i).getFID()==list2.get(j).getFlightID())
                {
                    index=j;
                }
            }

            String collapse = "collapse"+list.get(i).getFID();
            String collapse1="#collapse"+list.get(i).getFID();
    %>
    <div class="row">
        <div class="col-md-6">
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading" style="padding: 4%">
                        <div style="margin-top: -5px" class="col-xs-6"><h3 class="panel-title"><%= i %></h3></div>
                        <div style="margin-top: -5px" class="col-xs-6"><h3 class="panel-title pull-right"><%= list.get(i).getFname() %></h3></div>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-4">
                                <h3><%= list.get(i).getSource() %></h3>
                                <h6><strong><%= list.get(i).getDeptTime() %></strong></h6> </div>
                            <div class="col-md-4">
                                <h2></h2>
                                <p>Non Stop</p>
                                <p><%= list.get(i).getFlightTime() %></p>

                            </div>
                            <div class="col-md-4">
                                <h3><%= list.get(i).getDestination() %></h3>
                                <h6><strong>11:30</strong></h6> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <a data-toggle="collapse" href='<%=collapse1%>' style="color:black;text-decoration: none">
                <div class="well" style="padding: 11%;" id="selectpacket" onClick="packetSelected(<%= list.get(i).getFID() %>,<%= list2.get(index).getDetailID() %>)">
                    <h4 class="text-success">Economy</h4>
                    <h4 class="text-danger">Price:$<%= list2.get(index).getPrice() %></h4> </div>
            </a>
            <div class="collapse arrow_box" id='<%=collapse%>' style="margin-bottom: 2%;">
                <h3 style="text-align: center">Features</h3>
                <div>
                    <ul>
                        <li>Coffee</li>
                        <li>Tea</li>
                        <li><%= list2.get(index).getFeature() %></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
        <%  } %>
    <%  }else { %>
    <div class="row">
        <div class="col-md-12"> <h2>No Flight Found</h2> </div>
    </div>
    <% } %>
</div>
<div class="row">
    <form method="post" class="form1" id="myForm">
        <div class="col-md-2 col-sm-12" style="float:right;margin:50px">
            <button  id="doneflightregistration" onClick="Review_flight()" <% if(!checkFlight) { %> disabled <% }%>  class="btn btn-danger btn-lg next1">Next</button>
        </div>
    </form>
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
<script>
    var myVar;
    var flightid1,flightDetail1;

    function myFunction() {
        myVar = setTimeout(showPage, 3000);
    }

    function showPage() {
        document.getElementById("loader").style.display = "none";
        document.getElementById("myDiv").style.display = "block";
    }
    function Review_flight()
    {
        document.getElementById("myForm").action="/MainServlet?value=Review&flightId="+flightid1+"&flightDetailID="+flightDetail1;
        console.log("Review_flight_fuction");
        document.getElementById("doneflightregistration").submit();
	
    }

    function packetSelected(num,num2)
    {
        //window.location.assign("Booking2.html");
        flightid1=num;
        flightDetail1=num2;
        console.log(num);

    }
    $('.well').click(function() {
        $('.well').removeClass('hli');
        $(this).addClass('hli');
    });
</script>
</html>
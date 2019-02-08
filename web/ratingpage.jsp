<%@ page import="Business_Layer.Realestate" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Business_Layer.ratingnreview" %><%--
  Created by IntelliJ IDEA.
  User: Hamza Shah
  Date: 6/5/2018
  Time: 11:39 PM
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
    <link href="css/style.css?v=1.1" rel="stylesheet">

    <script type="text/javascript">
        $(document).ready(function(){
            $('#givereview').click(function () {
                alert("Hello! I am an alert box!!");
                var review=$('#reviewarea').val();
                $.ajax({
                    type:'POST',
                    data:{review:review},
                    url:'ratingservlet',
                    success:function (result) {
                        $('#result1').html(result);
                    }

                });
            });
        });




        function sendrating1(area) {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange=function() {
                if (this.readyState == 4 && this.status == 200) {


                    document.getElementById("result1").innerHTML = xhttp.responseText;
                }
            };
            var rating1="?rating=1";
            var type="type=rating";
            var areaid="&areaid="+area;
            xhttp.open("POST", "/ratingservlet"+rating1+"&"+type+areaid, true);
            xhttp.send();
        }


        function sendrating2(area) {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange=function() {
                if (this.readyState == 4 && this.status == 200) {


                    document.getElementById("result1").innerHTML = xhttp.responseText;
                }
            };
            var areaid="&areaid="+area;
            var rating2="?rating=2";
            var type="type=rating";
            xhttp.open("POST", "/ratingservlet"+rating2+"&"+type+areaid, true);
            xhttp.send();
        }

        function sendrating3(area) {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange=function() {
                if (this.readyState == 4 && this.status == 200) {


                    document.getElementById("result1").innerHTML = xhttp.responseText;
                }
            };
            var areaid="&areaid="+area;
            var rating3="?rating=3";
            var type="type=rating";
            xhttp.open("POST", "/ratingservlet"+rating3+"&"+type+areaid, true);
            xhttp.send();
        }

        function sendrating4(area) {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange=function() {
                if (this.readyState == 4 && this.status == 200) {


                    document.getElementById("result1").innerHTML = xhttp.responseText;
                }
            };
            var areaid="&areaid="+area;
            var rating4="?rating=4";
            var type="type=rating";
            xhttp.open("POST", "/ratingservlet"+rating4+"&"+type+areaid, true);
            xhttp.send();
        }

        function sendrating5(area) {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange=function() {
                if (this.readyState == 4 && this.status == 200) {


                    document.getElementById("result1").innerHTML = xhttp.responseText;
                }
            };
            var areaid="&areaid="+area;
            var rating5="?rating=5";
            var type="type=rating";
            xhttp.open("POST", "/ratingservlet"+rating5+"&"+type+areaid, true);
            xhttp.send();
        }


        function addwishlist(area) {
            alert("in wish list");

            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange=function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("result1").innerHTML = xhttp.responseText;
                }
            };
            var areaid="?areaid="+area;
            alert(areaid);
            xhttp.open("POST", "/ratingservlet"+areaid+"&type=wish", true);
            xhttp.send();
        }


    </script>

    <style>
        #snackbar {
            visibility: hidden;
            min-width: 250px;
            margin-left: -125px;
            background-color: #333;
            color: #fff;
            text-align: center;
            border-radius: 2px;
            padding: 16px;
            position: fixed;
            z-index: 1;
            left: 50%;
            bottom: 30px;
            font-size: 17px;
        }

        #snackbar.show {
            visibility: visible;
            -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
            animation: fadein 0.5s, fadeout 0.5s 2.5s;
        }

        @-webkit-keyframes fadein {
            from {bottom: 0; opacity: 0;}
            to {bottom: 30px; opacity: 1;}
        }

        @keyframes fadein {
            from {bottom: 0; opacity: 0;}
            to {bottom: 30px; opacity: 1;}
        }

        @-webkit-keyframes fadeout {
            from {bottom: 30px; opacity: 1;}
            to {bottom: 0; opacity: 0;}
        }

        @keyframes fadeout {
            from {bottom: 30px; opacity: 1;}
            to {bottom: 0; opacity: 0;}
        }
        .review-block{
            background-color:#FAFAFA;
            border:1px solid #EFEFEF;
            padding:15px;
            border-radius:3px;
            margin-bottom:15px;
        }
        .review-block-name{
            font-size:12px;
            margin:10px 0;
        }
        .review-block-date{
            font-size:12px;
        }
        .review-block-rate{
            font-size:13px;
            margin-bottom:15px;
        }
        .review-block-title{
            font-size:15px;
            font-weight:700;
            margin-bottom:10px;
        }
        .review-block-description{
            font-size:13px;
        }

    </style>
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

                        <li ><a href="SignupSignin.jsp">Home</a></li>

                        <li><a href="javascript:{}" onclick="paln()">Plans</a></li>
                        <li class="menu-active"><a href="javascript:{}" onclick="realestate()">Real Estate</a></li>

                        <%
                            if(request.getSession().getAttribute("signedinuser")!=null)
                            {
                        %>
                        <li><a href="Userprofile.jsp">Profile</a></li>
                        <li><a href="contactus.jsp">Contact</a></li>

                        <li><a href="javascript:{}" onclick="logout()" class="btn signup">Logout</a></li>
                        <%
                            }
                        %>
                    </ul>
                </nav><!-- #nav-menu-container -->
            </div>
        </form>
    </header><!-- #header -->


    <%


        Realestate obj=(Realestate) request.getAttribute("showproperty");
        ArrayList<ratingnreview>propratings=(ArrayList<ratingnreview>) request.getAttribute("ratingsnreviews");



    %>

    <div class="container">
        <div class="row" style="margin: 2% 0%;">
            <div class="col-sm-12" style="box-shadow: 0px 2px 30px rgba(0,0,0,0.30);">

                <div class="container-fluid" id="plot">
                    <div class="row" style="display: block">
                        <div style="padding: 15px;">
                            <img class="col-sm-12" src="img/house.jpg" height="300px">
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Price</p>
                                </div>
                                <div class="col-sm-4">
                                    <p>Size</p>
                                </div>
                                <div class="col-sm-4">
                                    <p>Location</p>
                                </div>
                            </div>
                            <div class="row" id="PricingDetials">
                                <div class="col-sm-4">
                                    <h3 style="margin-top: 4%;">Rs <%=obj.getPrice()%></h3>
                                </div>
                                <div class="col-sm-4">
                                    <h3 style="margin-top: 4%;"><%=Float.valueOf(obj.getArea())*20.90%> Marla</h3>

                                </div>
                                <div class="col-sm-4">
                                    <h3><%=obj.getAreaName()%></h3>
                                </div>
                            </div>
                        </div>



                        <div class="col-sm-12">

                            <div class="reviewDiv">

                                <h2 style="font-weight: bold;">Property Overview</h2>
                                <p><%=obj.getDesciption()%> </p>



                                <h2 style="font-weight: bold;margin-bottom: 0px;">Your Review</h2>
                                <label class="control-label" for="selected_rating">
                                    <span class="field-label-info"></span>
                                    <input type="hidden" id="selected_rating" name="selected_rating" value="" required="required">
                                </label>


                                <%--                                <button type="button" class="btn btn-warning btn-lg " onclick="pageopen(<%=obj.getC2()%>)" data-attr="5" id="" style="margin-right: 5%;">
                                                                    <i class="fa fa-rocket " aria-hidden="true" ></i>
                                                                    <a>Open Link</a>
                                                                </button>--%>
                                <%
                                    if(request.getSession().getAttribute("signedinuser")!=null)
                                    {
                                %>

                                <div class="row" id="ratingStar">

                                    <button type="button" class="btnrating btn btn-default btn-lg" onclick="sendrating1(<%=obj.getHomeID()%>)" data-attr="1" id="rating-star-1">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btnrating btn btn-default btn-lg" onclick="sendrating2(<%=obj.getHomeID()%>)" data-attr="2" id="rating-star-2">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btnrating btn btn-default btn-lg" onclick="sendrating3(<%=obj.getHomeID()%>)" data-attr="3" id="rating-star-3">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btnrating btn btn-default btn-lg" onclick="sendrating4(<%=obj.getHomeID()%>)" data-attr="4" id="rating-star-4">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btnrating btn btn-default btn-lg" onclick="sendrating5(<%=obj.getHomeID()%>)" data-attr="5" id="rating-star-5" style="margin-right: 5%;">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </button>

                                    <h2 class="bold rating-header" style="margin-bottom: 0px;">
                                        <span class="selected-rating">0</span><small> / 5</small>
                                    </h2>
                                    </button>


                                </div>

                                <button type="button" class=" btn btn-default btn-lg btn btn-warning" onclick="addwishlist(<%=obj.getHomeID()%>)" data-attr="5" id="wishlist" style="margin-right: 5%;">
                                    <i class="fa fa-thermometer " aria-hidden="true"></i>
                                    <a>Add to Wishlist</a>
                                </button>

                                <a target="_blank" class="fa fa-rocket " aria-hidden="true" href="<%=obj.getSlug()%>"  > Open Link </a>

                                <div><textarea id="reviewarea" name="reviewarea"  rows="4" style="width: 50%;"></textarea></div>
                                <div><input id="givereview" class="btn btn-success" style="margin-top:5px" onclick="sendreview(<%=obj.getHomeID()%>)" type="button" value="Give Review"></div>





                                <%
                                }
                                else
                                {
                                %>

                                <div class="row" id="ratingStar">

                                    <button type="button" class="btnrating btn btn-default btn-lg" onclick="print('Cannot give rating. You are not logged in!')" data-attr="1" id="rating-star-1">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btnrating btn btn-default btn-lg" onclick="print('Cannot give rating. You are not logged in!')" data-attr="2" id="rating-star-2">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btnrating btn btn-default btn-lg" onclick="print('Cannot give rating. You are not logged in!')" data-attr="3" id="rating-star-3">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btnrating btn btn-default btn-lg" onclick="print('Cannot give rating. You are not logged in!')" data-attr="4" id="rating-star-4">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btnrating btn btn-default btn-lg" onclick="print('Cannot give rating. You are not logged in!')" data-attr="5" id="rating-star-5" style="margin-right: 5%;">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </button>

                                    <h2 class="bold rating-header" style="margin-bottom: 0px;">
                                        <span class="selected-rating">0</span><small> / 5</small>
                                    </h2>
                                    </button>


                                </div>

                                <button type="button" class=" btn btn-default btn-lg btn btn-warning" onclick="print('Cannot save wish. You are not logged in!')" data-attr="5" id="wishlist" style="margin-right: 5%;">
                                    <i class="fa fa-thermometer " aria-hidden="true"></i>
                                    <a>Add to Wishlist</a>
                                </button>

                                <a class="fa fa-rocket " aria-hidden="true" href="<%=obj.getSlug()%>"  > Open Link </a>

                                <div><textarea id="" name="reviewarea"  rows="4" style="width: 50%;"></textarea></div>
                                <div><input id="givereview1" class="btn btn-success" style="margin-top:5px" onclick="print('Cannot give review. You are not logged in!')" onclick="myFunction()" type="button" value="Give Review"></div>


                                <%

                                    }
                                %>
                            </div>


                        </div>
                    </div>
                </div>

                <%
                    for(int i=0;i<propratings.size();i++)
                    {
                %>


                <div class="review-block">
                    <div class="row">
                        <div class="col-sm-3">
                            <img src="http://dummyimage.com/60x60/666/ffffff&text=No+Image" class="img-rounded">
                            <div class="review-block-name"><a href="#">nktailor</a></div>
                            <div class="review-block-date">1 January 2019<br/>1 day ago</div>
                        </div>
                        <div class="col-sm-9">
                            <div class="review-block-rate">
                                <%
                                    for(int j=0;j< Integer.parseInt(propratings.get(i).getRating());j++)
                                    {
                                %>
                                <button type="button" style="margin-left: 2px;" class="btn btn-success btn-xs" aria-label="Left Align"  *ngFor="let str of getRepeater(str.Rating)">
                                    <span class="fa fa-star" aria-hidden="true"></span>
                                </button>
                                <%
                                    }
                                    for(int j=0;j< 5-Integer.parseInt(propratings.get(i).getRating());j++)
                                    {
                                %>
                                <button type="button" style="margin-left: 2px;" class="btn btn-danger btn-xs" aria-label="Left Align"  *ngFor="let str of getRepeater(5-str.Rating)">
                                    <span class="fa fa-star" aria-hidden="true"></span>
                                </button>
                                <%
                                    }
                                %>
                            </div>
                            <div class="review-block-title"><%=propratings.get(i).getUname()%></div>
                            <div class="review-block-description"><%=propratings.get(i).getReview()%></div>
                        </div>
                    </div>
                    <hr/>

                </div>
                <%

                    }
                %>

            </div>
        </div>
    </div>



    <div id="snackbar">Thank you for your Review..</div>







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

<script>

    function sendreview(id) {
        var x = document.getElementById("snackbar");
        x.className = "show";
        setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);

        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange=function() {
            if (this.readyState == 4 && this.status == 200) {


                document.getElementById("").innerHTML = xhttp.responseText;
            }
        };

        var ra=document.getElementById("reviewarea").value;
        var reviewarea="?reviewarea="+ra;
        var areaid="&areaid="+id;
        var type="type=review";
        xhttp.open("POST", "/ratingservlet"+reviewarea+"&"+type+areaid, true);
        xhttp.send();
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


    function pageopen(link)
    {
        window.open(link);
    }


    function logout()
    {
        var id="preferences";
        var path="logoutservlet?";


        document.getElementById("form1").action=path;
        document.getElementById("form1").submit();


    }


    function callpage(link)
    {
        window.open(link);
    }


    function print(message) {
        alert(message);
    }



</script>



<!-- Template Main Javascript File -->
<script src="js/main.js"></script>

</body>

</html>

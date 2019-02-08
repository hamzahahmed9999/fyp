<%@ page import="java.util.ArrayList" %>
<%@ page import="Business_Layer.Realestate" %>
<%@ page import="javax.jms.*" %>
<%@ page import="java.io.Serializable" %>
<%@ page import="Business_Layer.Bankingplan" %>
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
    <link href="css/style.css?v=1.1" rel="stylesheet">



    <script type="text/javascript">

        function post(path, plot, method) {
            method = method || "post"; // Set method to post by default if not specified.

            // The rest of this code assumes you are not using a library.
            // It can be made less wordy if you use one.
            var form = document.createElement("form");
            form.setAttribute("method", method);
            form.setAttribute("action", path);
            form.setAttribute("propertyobj",plot);


            form.submit();
        }



    </script>

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
                    <%
                        if(request.getSession().getAttribute("signedinuser")!=null)
                        {
                    %>
                    <li ><a href="Userprofile.jsp">Profile</a></li>
                    <li><a href="contactus.jsp">Contact</a></li>
                    <li><button href="#" id="submitbtnlogout" onclick="logout()" class="btn signup">Logout</button></li>

                    <%

                        }
                    %>

                </ul>
            </nav><!-- #nav-menu-container -->
        </div>
        </form>
    </header><!-- #header -->




    <h2 style="text-align: center;margin-top: 10px">Banking Plans</h2>
<%--    <form class="form-inline" id="searchform" style="margin-left: 10%;" action="/searchservlet" method="post" >

        <input type="text" class="form-control input-lg" id="mySearch" name="mySearch" placeholder="Enter location">
        Max Price:<input type="number" class="form-control input-lg" id="myPrice"  name="myPrice" placeholder="0 to 99">
        Crore or Lakh:<input type="text" class="form-control input-lg" id="myPrice1"  name="myPrice1" placeholder="Lakh or Crore">
        Size:<input type="text" class="form-control input-lg" id="mySize" name="mySize" value="0" placeholder="e.g 10 Marla">



        <button type="submit" class="btn btn-default" style="margin-left: 5px;">Search</button>
    </form>--%>

    <hr>

    <div class="container">
        <div class="row">

            <%

                ArrayList<Bankingplan> recievedbankingplans=(ArrayList<Bankingplan>) (request.getAttribute("comingplans"));

                String img="";

                int count=0;

                if(!recievedbankingplans.isEmpty())
                {
                    if (recievedbankingplans.size()>15)
                    {
                        count=15;
                    }
                    else
                    {
                        count=recievedbankingplans.size();
                    }
                    for(int i=0;i<count ;i++)
                    {
                        if(recievedbankingplans.get(i).getBankName().matches("Habib Metropolitan Bank Limited"))
                        {
                            img="img/habib.jpg";
                        }
                        else if(recievedbankingplans.get(i).getBankName().matches("Allied Bank"))
                        {
                            img="img/allied.jpg";

                        }
                        else if(recievedbankingplans.get(i).getBankName().matches("Silk Bank Limited"))
                        {
                            img="img/silk.png";
                        }


                        String ID=recievedbankingplans.get(i).getPlanid();

            %>




            <div class="col-sm-6">
                <div class="container-fluid">

                    <form id="divform_<%= ID %>" method="post">
                        <div class="row" id="group" style="border-top: 1px solid #E5E5E5;margin-bottom: 10px">

                            <div class="col-md-6" style="padding: 10px;border-right: 1px solid #a6a6a6;">
                                <img src="<%=img%>" class="img-rounded" alt="Cinq Tre" width="100%" height="35%">
                                <h3 style="text-align: center"><%=recievedbankingplans.get(i).getBankName()%></h3>
                            </div>
                            <div class="col-md-6" style="margin-top: 2%;margin-bottom: 2%;width: 100%">
                                <h3 style="text-align: left"><b>MinInvestment</b><br>Rs: <%=recievedbankingplans.get(i).getMinimumInvestment()%>  </h3>
                                <h3 style="text-align: left"><b>Max Investment</b><br>Rs: <%=recievedbankingplans.get(i).getMaximumInvestment()%>  </h3>
                                <%--<p style="text-align: left"><b>Description</b> <%=recievedbankingplans.get(i).getDescription()%>  </p>--%>

                                <button class="btn btn-success reviewLink" id="submit_btn_<%= ID %>" onClick="openthis(<%= ID %>)">View Deals</button>
                                <input type="hidden">
                            </div>

                            <%--<div class="col-sm-4" style="margin-top: 5%">--%>
                                <%--<p> reviews</p>--%>
                                <%--<p> <%=recievedbankingplans.get(i).getPlanRate()%></p>--%>
                                <%--<h2><%=recievedbankingplans.get(i).getBankName()%></h2>--%>
                            <%--</div>--%>


                            <!--</ng-container>-->
                        </div>
                    </form>

                </div>
            </div>

            <%
                    }
                }
            %>

        </div>
    </div>







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

    function openthis(id)
    {
        debugger;
        var ID='divform_' + id;
        var btnid='submit_btn_'+id;

        document.getElementById(ID).action="/ratingplanservlet?id="+id+"&type=show";
        document.getElementById(btnid).submit();

    };




</script>


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


<!-- Template Main Javascript File -->
<script src="js/main.js"></script>

</body>

</html>

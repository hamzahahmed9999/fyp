<%@ page import="java.util.ArrayList" %>
<%@ page import="Business_Layer.Realestate" %>
<%@ page import="javax.jms.*" %>
<%@ page import="java.io.Serializable" %>
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


    <script type="text/javascript">

        function checkminmax()
        {
            //alert("inside");
            var minS=document.forms["searchform"]["SizeMin"].value;

            //var minS=document.getElementById("SizeMin").value;
            //alert(minS);
            var maxS=document.forms["searchform"]["SizeMax"].value;
            //var maxS=document.getElementById("SizeMax").value;
            //alert(maxS);
            var min=document.forms["searchform"]["PriceMin"].value;
            //var min=document.getElementById("PriceMin").value;
            //alert(min);
            var max=document.forms["searchform"]["PriceMax"].value;
            //alert(max);
            //alert(maxS);
  //          var max=document.getElementById("PriceMax").value;
            //alert(max);
           /* if(min > max)
            {
                alert("Minimum price cannot be greater than maximum");
                return false;
                //window.location="RealEstate.jsp";
            }*/
/*
            if(minS > maxS)
            {
                alert("Minimum size cannot be greater than maximum");
                //window.location="RealEstate.jsp";
                return;
            }*/


                document.getElementById("searchform").submit();
                return;

        }


    </script>

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
                        <li><a href="contactus.jsp">Contact</a></li>


                        <%
                            if(request.getSession().getAttribute("signedinuser")!=null)
                            {
                        %>
                        <li ><a href="Userprofile.jsp">Profile</a></li>
                        <li><button href="#" id="submitbtnlogout" onclick="logout()" class="btn signup">Logout</button></li>

                        <%

                            }
                        %>

                    </ul>
                </nav><!-- #nav-menu-container -->
            </div>
        </form>
    </header><!-- #header -->




    <h2 style="text-align: center;margin-top: 10px">Search Filters</h2>
    <form  id="searchform"  action="searchservlet" method="post" >
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                City:<select class="form-control input-lg" name="City">
                <option value="Lahore">Lahore</option>
                <option value="Islamabad">Islamabad</option>
                <option value="Karachi">Karachi</option>
                <option value="Rawalpindi">Rawalpindi</option>
                <option value="Peshawar">Peshawar</option>
                <option value="Multan">Multan</option>
                <option value="Faisalabad">Faisalabad</option>
                <option value="Gujranwala">Gujranwala</option>
                <option value="Sialkot">Sialkot</option>
                <option value="Jhelum">Jhelum</option>
                <option value="Hyderabad">Hyderabad</option>
                <option value="Hafizabad">Hafizabad</option>
                <option value="Hassan Abdal">Hassan Abdal</option>
                <option value="Jauharabad">Jauharabad</option>
                <option value="Jhang">Jhang</option>
                <option value="Abbottabad">Abbottabad</option>
                <option value="Wah">Wah</option>
                <option value="Toba Tek Singh">Toba Tek Singh</option>
                <option value="Vehari">Vehari</option>
                <option value="Wazirabad">Wazirabad</option>
                <option value="Sargodha">Sargodha</option>
                <option value="Quetta">Quetta</option>
                <option value="Sadiqabad">Sadiqabad</option>
                <option value="Rahim Yar Khan">Rahim Yar Khan</option>
                <option value="Sahiwal">Sahiwal</option>
                <option value="Sheikhupura">Sheikhupura</option>
                <option value="Sukkur">Sukkur</option>
                <option value="Taxila">Taxila</option>
                <option value="Murree">Murree</option>
                <option value="Okara">Okara</option>
                <option value="Gujrat">Gujrat</option>
                <option value="Bahawalpur">Bahawalpur</option>
                <option value="Dera Ghazi Khan">Dera Ghazi Khan</option>
                <option value="Ahmedpur East">Ahmedpur East</option>
                <option value="Kasur">Kasur</option>

            </select>
            </div>
            <div class="col-md-4">
                Area:<input type="text" class="form-control input-lg" autocomplete="on" spellcheck="false" id="mySearch" name="mySearch" placeholder="Enter location" required>
            </div>
        </div>

        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                Price:<select class="form-control input-lg" name="PriceMin" id="PriceMin">
                <option value="0">MIN</option>
                <option value="5000000">5000000</option>
                <option value="8000000">8000000</option>
                <option value="10000000">10000000</option>
                <option value="12000000">12000000</option>
                <option value="14000000">14000000</option>
                <option value="16000000">16000000</option>
                <option value="18000000">18000000</option>
                <option value="20000000">20000000</option>
                <option value="25000000">25000000</option>
                <option value="30000000">30000000</option>
                <option value="50000000">50000000</option>
            </select>
                <select class="form-control input-lg" name="PriceMax" id="PriceMax">
                    <option value="100000000">Max</option>
                    <option value="5000000">5000000</option>
                    <option value="8000000">8000000</option>
                    <option value="10000000">10000000</option>
                    <option value="12000000">12000000</option>
                    <option value="14000000">14000000</option>
                    <option value="16000000">16000000</option>
                    <option value="18000000">18000000</option>
                    <option value="20000000">20000000</option>
                    <option value="25000000">25000000</option>
                    <option value="30000000">30000000</option>
                    <option value="50000000">50000000</option>
                    <option value="60000000">60000000</option>
                </select>
            </div>
            <div class="col-md-4">
                Size(marla):<select class="form-control input-lg" name="SizeMin" id="SizeMin">
                <option value="0">MIN</option>
                <option value="3">3</option>
                <option value="5">5</option>
                <option value="7">7</option>
                <option value="10">10</option>
                <option value="12">12</option>
                <option value="15">15</option>
                <option value="20">20</option>
                <option value="25">25</option>
            </select>
                <select class="form-control input-lg" name="SizeMax" id="SizeMax">
                    <option value="35">MAX</option>
                    <option value="3">3</option>
                    <option value="5">5</option>
                    <option value="7">7</option>
                    <option value="10">10</option>
                    <option value="12">12</option>
                    <option value="15">15</option>
                    <option value="20">20</option>
                    <option value="25">25</option>
                    <option value="30">30</option>
                </select>
            </div>
        </div>

        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                Beds:<select class="form-control input-lg" name="Beds">
                <option value="11">ALL</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
            </select>
            </div>
        </div>
    </form>
    <div class="col-md-4">
        <button type="submit" class="btn btn-default" href="javascript:{}" onclick="checkminmax()" style="margin-top: 6%;margin-left: 150%;">Search</button>
    </div>

    <hr>

    <div class="container">
        <div class="row">


            <%

                ArrayList<Realestate> recievedrealestate=(ArrayList<Realestate>) (request.getAttribute("myrealestate"));
                String msg="Sorry:The filters applied gives no result..Here are some suggestions";
                String msg1="There are just few reults according to your filters..So result contains some suggestions";
                String msg3="Sorry:There is no such location in this city..Here are some suggestions";
                String msg4=".Here are some suggestions";
                int count=0;
                int count1;
                int num1=0;
                System.out.println(recievedrealestate.get(0).getCheck());
                num1=recievedrealestate.get(0).getNum();
                if (recievedrealestate.size()>15)
                {
                    count1=15;
                }
                else
                {
                    count1=recievedrealestate.size();
                }
                for (int i=0;i<count1 && count==0;i++)
                {
                    if (recievedrealestate.get(i).getCheck()==1)
                    {
                        count=1;
                        System.out.println("1");

                    }
                    else if (recievedrealestate.get(i).getCheck()==2)
                    {
                        count=2;
                        System.out.println("2");
                    }
                    else if (recievedrealestate.get(i).getCheck()==3)
                    {
                        count=3;
                        System.out.println("3");
                    }
                }
                if (count==1)
                {
            %>
            <h3 style="font-family: 'Roboto Mono', monospace;"><%=msg%></h3>
            <%
                }

                if (count==2)
                {
            %>
            <h3 style="font-family: 'Roboto Mono', monospace;"><%=msg1%></h3>
            <%
                }
                if (count==3)
                {
            %>
            <h3 style="font-family: 'Roboto Mono', monospace;"><%=msg3%></h3>
            <%
                }

                count=0;


                if(!recievedrealestate.isEmpty())
                {
                    if (recievedrealestate.size()>15)
                    {
                        count=15;
                    }
                    else
                    {
                        count=recievedrealestate.size();
                    }
                    for(int i=0;i<count ;i++)
                    {
                        if (i==num1)
                        {
            %>
            <h3 style="font-family: 'Roboto Mono', monospace;"><%=msg4%></h3>
            <%
                }
                String ID=recievedrealestate.get(i).getHomeID();


            %>


            <div class="col-sm-12">


                <div class="container-fluid">

                    <form id="divform_<%= ID %>" method="post">
                        <div class="row" id="group" style="border-top: 1px solid #E5E5E5;margin-bottom: 10px">

                            <div class="col-sm-4" style="padding: 10px">
                                <img src="./img/g.jpg" class="img-rounded" alt="Cinq Tre" width="100%" height="50%">
                            </div>
                            <div class="col-sm-4" style="border-right: 1px solid #a6a6a6;margin-top: 2%;margin-bottom: 2%;width: 100%">
                                <h3 style="font-family: 'Roboto Mono', monospace;"><%=recievedrealestate.get(i).getTitle()%></h3>
                                <p style="text-align: left;margin-bottom: 0px;"><b>PKR</b> <%=recievedrealestate.get(i).getPrice()%>  </p>
                                <p style="text-align: left;margin-bottom: 0px;"><b>Size</b> <%=recievedrealestate.get(i).getArea()%>  Marla</p>
                                <p style="margin-bottom: 0px;"><b>Location :</b> <%=recievedrealestate.get(i).getAreaName()%></p>
                                <p style="margin-bottom: 0px;"><b>City :</b> <%=recievedrealestate.get(i).getCityName()%></p>
                                <p style="text-align: left"><b>Beds</b> <%=recievedrealestate.get(i).getRooms()%>  </p>
                                <input type="hidden">
                            </div>

                            <div class="col-sm-4" style="margin-top: 2%">
                                <h4><b>short description</b> <p><%=recievedrealestate.get(i).getShortDescription()%></p>  </h4>
                                <button class="btn btn-success reviewLink" id="submit_btn_<%= ID %>" onclick="openthis(<%= ID %>)">View Deals</button>
                            </div>


                            <!--</ng-container>-->
                        </div>
                    </form>

                    <%--<div class="row">--%>
                    <%--<div class="col-12" class="pagination" style="margin-top: 5%">--%>

                    <%--<nav>--%>
                    <%--<ul class="pagination">--%>
                    <%--<li class="page-item">--%>
                    <%--<a href="#" class="page-link" aria-label="Previous">--%>
                    <%--<span aria-hidden="true">&laquo;</span>--%>
                    <%--</a>--%>
                    <%--</li>--%>
                    <%--<li class="page-item"><a href="#" class="page-link">1</a></li>--%>
                    <%--<li class="page-item"><a href="#" class="page-link">2</a></li>--%>
                    <%--<li class="page-item"><a href="#" class="page-link">3</a></li>--%>
                    <%--<li class="page-item"><a href="#" class="page-link">4</a></li>--%>
                    <%--<li class="page-item"><a href="#" class="page-link">5</a></li>--%>
                    <%--<li class="page-item"><a href="#" class="page-link">6</a></li>--%>
                    <%--<li class="page-item"><a href="#" class="page-link">7</a></li>--%>
                    <%--<li class="page-item">--%>
                    <%--<a href="#" class="page-link" aria-label="Next">--%>
                    <%--<span aria-hidden="true">&raquo;</span>--%>
                    <%--</a>--%>
                    <%--</li>--%>
                    <%--</ul>--%>
                    <%--</nav>--%>
                    <%--</div>--%>
                    <%--</div>--%>


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

        document.getElementById(ID).action="/ratingservlet?id="+id+"&type=show";
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



    /* function checkminmaxsize()
     {

         if(min>max)
         {
             alert("Minimum size cannot be greater than maximum");
         }
         else
         {
             document.getElementById("searchform").submit();
         }
     }*/


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


<!-- Template Main Javascript File -->
<script src="js/main.js"></script>

</body>

</html>

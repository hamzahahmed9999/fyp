<%@ page import="com.hussain.Business_Layer.flightClass" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.hussain.Business_Layer.flightDetailClass" %>
<%@ page import="com.hussain.Business_Layer.seatsClass" %><%--
  Created by IntelliJ IDEA.
  User: Hussain
  Date: 06-Nov-17
  Time: 8:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>SmartFly - Admin</title>
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
<%
    if(session.getAttribute("user_email")==null)
    {
        response.sendRedirect("main.jsp");
    }
%>


<a id="return-to-top"><i class="icon-chevron-up"></i></a>
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

<div class="header">
    <nav class="my-navbar1 per_nav navbar navbar-inverse">
        <div class="container-fluid fixed">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"><span
                        class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
                <a class="navbar-brand" href="#" style="color: white;">SmartFly</a></div>
            <div class="navbar-collapse collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li><a href="main.html" style="color: white;">Home</a></li>
                    <li><a style="color: white;" href="Dicover.html">Dicover</a></li>
                    <li><a style="color: white;" href="Book.html">Book</a></li>
                    <li class="active"><a style="color: white;" href="#">Admin</a></li>
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
<div class="container-fluid" id="list-flights">
    <div class="row">
        <h2 style="margin-top: 8%;text-align: center">List of Flight</h2>
    </div>
</div>


<%
    ArrayList<flightClass> flights=(ArrayList<flightClass>) request.getAttribute("flightClass");
    ArrayList<flightDetailClass> flightDetail=(ArrayList<flightDetailClass>) request.getAttribute("flightDetailClass");
    ArrayList<seatsClass> flightSeats=(ArrayList<seatsClass>) request.getAttribute("flightSeats");

    if(flights!=null)
    {
        for(int i=0;i<flights.size();i++)
        {
%>


<div class="container">
    <div class="panel-group">
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="row panel-row" style="margin: 1%">
                    <div class="col-md-4">
                        <p><%= flights.get(i).getSource() %> <span class="glyphicon glyphicon-play"></span><%= flights.get(i).getDestination() %> </p>
                    </div>
                    <div class="col-md-2  col-align"> <span>Date:<%= flights.get(i).getDate() %></span> </div>
                    <div class="col-md-2 col-align"> <span>Departure Time:<%=flights.get(i).getDeptTime() %></span> </div>
                    <div class="col-md-2 col-align"> <span>Flight Time:<%=flights.get(i).getFlightTime() %></span> </div>
                    <div class="col-md-2">

                        <% String collapse = "collapse"+flights.get(i).getFID();
                            String collapse1="#collapse"+flights.get(i).getFID();
                            String first = "first"+flights.get(i).getFID();
                            String first1="#first"+flights.get(i).getFID();
                            String bussiness = "bussiness"+flights.get(i).getFID();
                            String bussiness1="#bussiness"+flights.get(i).getFID();
                            String economy = "economy"+flights.get(i).getFID();
                            String economy1="#economy"+flights.get(i).getFID();

                        %>
                        <a data-toggle="collapse" style="color:black" href='<%=collapse1%>' ><span class="glyphicon glyphicon-collapse-down  icon-collapse"></span></a> </div>
                </div>
            </div>
            <div id='<%=collapse%>' class="panel-collapse collapse  panel-inner">
                <div class="panel-body"><a data-toggle="collapse" style="color:black" href='<%=first1%>'>First Class </a></div>
                <div id='<%=first%>' class="panel-collapse collapse panel-inner-in">

                    <% int ID=flights.get(i).getFID();

                        int Price=0;String feature=null;
                        flightDetailClass F2=null;
                        seatsClass S2=null;
                        int detailID=0,totalSeats=0;
                        if(flightDetail!=null)
                        {
                            for(int j=0;j<flightDetail.size();j++) {
                                if (flightDetail.get(j).getFlightID()==ID && flightDetail.get(j).getFlightCategoryID()==2)
                                {
                                    F2=flightDetail.get(j);
                                    Price=F2.getPrice();
                                    detailID=F2.getDetailID();
                                    feature=F2.getFeature();
                                    break;
                                }
                            }
                        }
                        if(flightSeats!=null)
                        {
                            for(int j=0;j<flightSeats.size();j++) {
                                if(flightSeats.get(j).getFDetailId()==detailID)
                                {
                                    S2=flightSeats.get(j);
                                    totalSeats=S2.getTotalSeats();
                                }

                            }
                        }


                        String action="/MainServlet?value=class&class=first&flightid="+ID+"&detailID="+detailID+"&seats_check="+totalSeats;
                    %>

                    <form class="form-horizontal" method="post"  action='<%=action%>'>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Price:</label>
                        <div class="col-sm-6">
                            <input type="text" <% if(F2!=null) {%>value="<%=Price%>" <% } %>  class="form-control" name="price" placeholder="Enter price">
                        </div>
                        <div class="col-sm-4"></div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" >Features:</label>
                        <div class="col-sm-6">
                            <div class="field_wrapper">
                                <div><input type="text" <% if(F2!=null) {%>value="<%=feature%>" <% } %> class="form-control input-dynamic" name="field_name[]" value=""/></div>
                            </div>

                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2">No. of seats:</label>
                        <div class="col-sm-6">
                            <input type="number" name="seats" min="0" max="1000" <% if(S2!=null) {%>value="<%=totalSeats%>" <% } %>  step="1" class="form-control" placeholder="">
                        </div>
                        <div class="col-sm-4"></div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">Done</button>
                        </div>
                    </div>
                    </form>

                </div>
                <div class="panel-body"><a data-toggle="collapse" style="color:black" href='<%=bussiness1%>'>Business Class </a></div>
                <div id='<%=bussiness%>' class="panel-collapse collapse panel-inner-in">

                    <%
                        ID=flights.get(i).getFID();
                        flightDetailClass F3=null;
                        seatsClass S3=null;
                        totalSeats=0;
                        detailID=0;
                        if(flightDetail!=null)
                        {
                            for(int j=0;j<flightDetail.size();j++) {
                                if (flightDetail.get(j).getFlightID()==ID && flightDetail.get(j).getFlightCategoryID()==3)
                                {
                                    F3=flightDetail.get(j);
                                    Price=F3.getPrice();
                                    detailID=F3.getDetailID();
                                    feature=F3.getFeature();
                                    break;
                                }
                            }
                        }
                        if(flightSeats!=null)
                        {
                            for(int j=0;j<flightSeats.size();j++) {
                                if(flightSeats.get(j).getFDetailId()==detailID)
                                {
                                    S3=flightSeats.get(j);
                                    totalSeats=S3.getTotalSeats();
                                }

                            }
                        }

                        action="/MainServlet?value=class&class=Buniess&flightid="+ID+"&detailID="+detailID+"&seats_check="+totalSeats;
                    %>

                    <form class="form-horizontal" method="post" action='<%=action%>'>
                        <div class="form-group">
                            <label class="control-label col-sm-2" >Price:</label>
                            <div class="col-sm-6">
                                <input type="text" <% if(F3!=null) {%>value="<%=Price%>" <% } %> class="form-control" placeholder="Enter price">
                            </div>
                            <div class="col-sm-4"></div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2">Features:</label>
                            <div class="col-sm-6">
                                <div class="field_wrapper">
                                    <div><input type="text" <% if(F3!=null) {%>value="<%=feature%>" <% } %>  class="form-control input-dynamic" name="field_name[]" value=""/>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" >No. of seats:</label>
                            <div class="col-sm-6">
                                <input type="number" name="seats" min="0" max="1000" <% if(S3!=null) {%>value="<%=totalSeats%>" <% } %>  class="form-control" step="1" placeholder="num">
                            </div>
                            <div class="col-sm-4"></div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default">Done</button>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="panel-body"><a data-toggle="collapse" style="color:black" href='<%=economy1%>'>Economy Class </a></div>
                <div id='<%=economy%>' class="panel-collapse collapse panel-inner-in">


                    <% ID=flights.get(i).getFID();

                        flightDetailClass F1=null;
                        seatsClass S1=null;
                        detailID=0;
                        totalSeats=0;
                        if(flightDetail!=null)
                        {
                            for(int j=0;j<flightDetail.size();j++) {
                                if (flightDetail.get(j).getFlightID()==ID && flightDetail.get(j).getFlightCategoryID()==1)
                                {
                                    F1=flightDetail.get(j);
                                    Price=F1.getPrice();
                                    detailID=F1.getDetailID();
                                    feature=F1.getFeature();
                                    break;
                                }
                            }
                        }
                        if(flightSeats!=null)
                        {
                            for(int j=0;j<flightSeats.size();j++) {
                                int num=flightSeats.get(j).getFDetailId();
                                if(num==detailID)
                                {
                                    S1=flightSeats.get(j);
                                    totalSeats=S1.getTotalSeats();
                                }

                            }
                        }


                        action="/MainServlet?value=class&class=Economy&flightid="+ID+"&detailID="+detailID+"&seats_check="+totalSeats;
                    %>

                    <form class="form-horizontal" method="post" action='<%=action%>'>
                        <div class="form-group">
                            <label class="control-label col-sm-2">Price:</label>
                            <div class="col-sm-6">
                                <input type="text" <% if(F1!=null) {%>value="<%=Price%>" <% } %> class="form-control" placeholder="Enter price">
                            </div>
                            <div class="col-sm-4"></div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" >Features:</label>
                            <div class="col-sm-6">
                                <div class="field_wrapper">
                                    <div><input type="text" <% if(F1!=null) {%>value="<%=feature%>" <% } %> class="form-control input-dynamic" name="field_name[]" /></div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2">No. of seats:</label>
                            <div class="col-sm-6">
                                <input type="number" name="seats" min="0" max="1000" <% if(S1!=null) {%>value="<%=totalSeats%>" <% }%> step="1" class="form-control"  placeholder="">
                            </div>
                            <div class="col-sm-4"></div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default">Done</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<% }
}
%>


<div class="field_wrapper_offer"> </div>
<div class="container-fluid" id="add-flights">
    <div class="row">
        <h2 style="margin-top: 8%;text-align: center">Add Flight</h2>
    </div>
</div>
<div class="container">
    <form class="form-horizontal" action="/MainServlet?value=Add" method="post">
        <div class="form-group">
            <label class="control-label col-sm-2" for="origin">Origin:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="origin" name="origin" placeholder="Enter origin"> </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="dest">Destination:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="dest" name="destination" placeholder="Enter destination"> </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="dest">Flight Name:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="flight_name" placeholder="Enter Name"> </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Date:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="datepicker" name="date" placeholder="Enter Date">
                <script>
                    $(function () {
                        $("#datepicker").datepicker();
                    });
                </script>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Departure Time:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="Depttime" placeholder="Enter Time"> </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Flight Time:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="flighttime" placeholder="Enter Time"> </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
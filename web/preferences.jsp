<%--
  Created by IntelliJ IDEA.
  User: Hamza Shah
  Date: 6/5/2018
  Time: 3:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="mainpage.html">INVESTSmart</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="RealEstate.html">Home</a></li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="userprofile.html" class="glyphicon glyphicon-user"> Profile</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="mainpage.html" class="glyphicon glyphicon-user"> Logout</a></li>
        </ul>
    </div>
</nav>

<form method="post" action="/addpreferencesservlet">
<div>

    <div class="col-sm-2">
    </div>


    <div class="col-sm-8 container-fluid" style="background-color:#948A8A;height:800px; ">

        <div class="container" style="display:block;">

            <div><h2><a class="glyphicon glyphicon-briefcase"></a> Banking Preferences</h2></div>
            <hr/>
            <div><label> Investment Range</label></div>
            <div><input id="IR" name="IR" type="number" value="Enter your amount here"/></div>

            <div></div>
            <div></div>

        </div>



        <div class="container" style="display:block;">
            <div><h2><a class="glyphicon glyphicon-briefcase"></a> Real Estate Preferences</h2></div>
            <hr/>
            <div><label> City</label></div>
            <div><input id="city" name="city" type="text" value="Enter your City"/></div>
            <div><label> Area</label></div>
            <div><input id="Area" name="Area" type="text" value="Enter your area here"/></div>
            <div><label> Size</label></div>
            <div><input id="Size" name="Size" type="text" value="Enter your size here"/></div>

            <div style="margin-top:20px;"><h3><a class="glyphicon glyphicon-briefcase"></a> House (Not Mandaotry)</h3></div>
            <hr/>
            <div><label> Stories</label></div>
            <div><input id="stories" name="stories" type="text" value="Enter your stories here"/></div>
            <div><label> Bedrooms</label></div>
            <div><input id="bedrooms" name="bedrooms" type="text" value="Enter your bedrooms here"/></div>



        </div>




        <div class="container row" style="margin-top:20px;">


            <div class="col-sm-5">
            </div>

            <div class="col-sm-2">
                <input class="btn btn-success" style="width:200%; border:red;" type="submit" value="Submit"/>
            </div>

            <div class="col-sm-5">
            </div>

        </div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>



    </div>



    <div class="col-sm-2">
    </div>

</div>


</form>


</body>
</html>

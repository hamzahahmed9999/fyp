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
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        p {
            color:blue;
        }

    </style>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="mainpage.html">INVESTSmart</a>
        </div>
        <ul class="nav navbar-nav">
            <li class=""><a href="Banking.html">Home</a></li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li><a onclick="document.getElementById('id01').style.display='block'" href="contactus.html"><span class="glyphicon glyphicon-phone"></span>Contact Us (03341731677)</a></li>

            <li><a href="mainpage.html" class="glyphicon glyphicon-user"> Logout</a></li>

        </ul>

    </div>
</nav>


<div>

    <div class="col-sm-2">
    </div>


    <div class="col-sm-8 container-fluid" style="background-color:948A8A;height:800px; ">

        <div class="container" style="display:block;">

            <div class="row" style="display: inline-block;">
                <img src="user.png" style="height: 200px;"/>
                <div><h2><a class="glyphicon glyphicon-user"></a> UserName    </h2></div>
                <hr style="width: inherit;"/>

            </div>
        </div>


        <div style="block">
            <div ><label>Name</label><p>    Example example</p></div>
            <div><label>Email Address</label><p>    Example@example.com</p></div>
            <div><label>Password</label><p>   ******</p> </div>
            <div><label>City</label><p>Example</p></div>
        </div>

        <div class="row">
            <div style="display: inline;">

                <input class="btn btn-success" style="margin: 15px;width: 35%;" value="Edit" type="submit"/><input class="btn btn-success" value="Save" style="margin: 15px; width: 35%;" type="submit"/>
                <a  href="preferences.html"><input class="btn btn-success" value="Preferences" style="margin: 15px; width: 35%;"  type="submit"/></a>

            </div>


        </div>

        <div></div>



    </div>



    <div class="col-sm-2">
    </div>

</div>





</body>
</html>

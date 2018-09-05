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
    <title>Banking</title>
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
            <a class="navbar-brand" href="mainpage.html">SmartInvestment</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="Banking.html">Banking</a></li>
        </ul>
        <ul class="nav navbar-nav">
            <li ><a href="RealEstate.html">Real Estate</a></li>
        </ul>
        <ul class="nav navbar-nav">
            <li ><a href="userprofile.html">Profile</a></li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li><a onclick="document.getElementById('id01').style.display='block'" href="contactus.html"><span class="glyphicon glyphicon-phone"></span>Contact Us (03341731677)</a></li>

            <li><a href="mainpage.html" class="glyphicon glyphicon-user"> Logout</a></li>
        </ul>

    </div>
</nav>
<div class="container">
    <h2>Banking Plans</h2>
    <h3> Assured Saving Plan </h3>
    <table class="table">
        <thead>
        <tr>
            <th>Title</th>
            <th>Description</th>

        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Investment Fund</td>
            <td>Managed, Messaque, Yaqeen & Capital</td>

        </tr>
        <tr>
            <td>Minimum/Maximum Age at Entry</td>
            <td>18-65 years (nearest birthday)</td>

        </tr>
        <tr>
            <td>Maximum Age at Maturity</td>
            <td>70 years (nearest birthday)</td>

        </tr>

        <tr>
            <td>Available Term & Payment Range</td>
            <td>Whole Life</td>

        </tr>
        <tr>
            <td>Minimum Annual Premium</td>
            <td>24,000</td>

        </tr>
        <tr>
            <td>Unit Allocation as % of Basic Plan Premium</td>
            <td>Year 1 – 30%
                Year 2 – 85%
                Year 3 – 90%
                Year 4 – 100%
                Year 5 & onwards – 103%
                Ad hoc – 100%</td>

        </tr>
        <tr>
            <td>Cover Multiple</td>
            <td>5 – 254</td>

        </tr>

        <tr>
            <td>Sum Assured</td>
            <td>	Regular Basic Premium x Cover multiple</td>

        </tr>
        <tr>
            <td>Premium Payment Mode</td>
            <td>	Monthly, Quarterly, Semi Annual & Annual</td>

        </tr>
        <tr>
            <td>Partial Surrender Benefits (available after completion of two years)</td>
            <td>Bid Value of Units requested for Partial Withdrawal. Amount of Partial Surrender may be subject to minimum amount and residual value determined by the Company.</td>

        </tr>
        </tbody>
    </table>
</div>

</body>
</html>

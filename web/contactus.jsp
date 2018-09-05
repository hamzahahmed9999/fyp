<%--
  Created by IntelliJ IDEA.
  User: Hamza Shah
  Date: 6/6/2018
  Time: 12:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Contact Us</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>


        body {font-family: Arial, Helvetica, sans-serif;}

        input[type=text], select, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }

        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
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
            <li class="active"><a href="Banking.html">Home</a></li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="userprofile.html" class="glyphicon glyphicon-user"> Profile</a></li>
            <li><a href="mainpage.html" class="glyphicon glyphicon-user"> Logout</a></li>
        </ul>

    </div>
</nav>

<div class="container">
    <form action="/action_page.php">
        <label for="fname">First Name</label>
        <input type="text" id="fname" name="firstname" placeholder="Your name..">

        <label for="lname">Last Name</label>
        <input type="text" id="lname" name="lastname" placeholder="Your last name..">

        <label for="country">City</label>
        <select id="country" name="country">
            <option value="Lahore">Lahore</option>
            <option value="canada">Karachi</option>
            <option value="Islamabad">Islamabad</option>
        </select>


        <label for="subject">Contact Number</label>
        <input type="text" id="cntnumber" name="firstname" placeholder="Your number..">

        <label for="subject">Subject</label>
        <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

        <input type="submit" value="Submit">
    </form>
</div>

</body>
</html>

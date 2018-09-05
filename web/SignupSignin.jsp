<%--
  Created by IntelliJ IDEA.
  User: Hamza Shah
  Date: 5/24/2018
  Time: 9:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="widget.js"></script>




    <style>


        #nav{backface-visibility: hidden;}


        body{background-image:url(Images/investmentbanking.png);
            background-repeat: no-repeat;
            background-size: cover;
        }

        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        /* Set a style for all buttons */
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            opacity: 0.8;
        }

        /* Extra styles for the cancel button */
        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        /* Center the image and position the close button */
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
            position: relative;
        }

        img.avatar {
            width: 40%;
            border-radius: 50%;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            padding-top: 60px;
        }

        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            width: 80%; /* Could be more or less, depending on screen size */
        }

        /* The Close Button (x) */
        .close {
            position: absolute;
            right: 25px;
            top: 0;
            color: #000;
            font-size: 35px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: red;
            cursor: pointer;
        }

        /* Add Zoom Animation */
        .animate {
            -webkit-animation: animatezoom 0.6s;
            animation: animatezoom 0.6s
        }

        @-webkit-keyframes animatezoom {
            from {-webkit-transform: scale(0)}
            to {-webkit-transform: scale(1)}
        }

        @keyframes animatezoom {
            from {transform: scale(0)}
            to {transform: scale(1)}
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cancelbtn {
                width: 100%;
            }
        }

    </style>




    <script type="text/javascript">

        function myfunc()
        {
            var html=widget();
            document.getElementById("searchbar").innerHTML=html;
        }

    </script>

</head>
<body onload="suggestions(),myfunc()">



<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="SmartInvestment.html">SmartInvestment</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="Banking.html">Banking</a></li>
            <li ><a href="realestateresults.html">Real Estate</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><div href="#searchedhotels.html" id="searchbar" class="input" style="margin-top: 10px;"><a href="searchedhotels.html"></a></div></li>

            <li><a onclick="document.getElementById('id02').style.display='block'" href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a onclick="document.getElementById('id01').style.display='block'" href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
    </div>
</nav>

<div >
    <div class="col-sm-2 col-md-2"></div>
    <div class="col-sm-8 col-md-8"  >
        <h1 style="color: aqua; margin:35%; font-size: 500%;"><a class="glyphicon glyphicon-globe" style="color: aqua;"></a> WE HELP YOU INVEST</h1>
    </div>
    <div class="col-sm-2 col-md-2"></div>
</div>

<div>


    <div id="id01" class="modal" style="display: block">

        <form method="post" class="modal-content animate" action="/Signin">
            <div class="imgcontainer">
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                <a class="glyphicon glyphicon-user"></a>
            </div>

            <div class="container" style="display: block; width: inherit;">


                <div><label for="uname"><b>Username</b></label></div>
                <div><input id=uemailsi style="width:80%; position: relative;" type="text" placeholder="Enter Username" name="uemailsi" required></div>


                <div><label for="psw"><b>Password</b></label></div>
                <div><input id="upassi" class="container" style="width: 80%;position: relative;" type="password" placeholder="Enter Password" name="upassi" required></div>

                <button style="width: 80%;position: relative;" type="submit">Login</button>
                <div><label>
                    <input type="checkbox" checked="checked" name="remember"> Remember me
                </label></div>
            </div>

            <div class="container" style="background-color:#f1f1f1;width:80%; position: relative;">
                <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                <span class="psw">Forgot <a href="#">password?</a></span>
            </div>
        </form>
    </div>

    <script>
        // Get the modal
        var modal = document.getElementById('id01');
        var modal2 = document.getElementById('id02');
        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }

            if (event.target == modal2) {         //for modal 2
                modal.style.display = "none";
            }
        }
    </script>

</div>
<div>


    <div id="id02" class="modal" style="display: block;">

        <form method="post" class="modal-content animate" action="/Signup">

            <div class="container" style="display: block">
                <div><label  id="u"><b>Username</b></label></div>
                <div><input style="width:80%; position: relative;" id="uname" type="text" placeholder="Enter Username" name="uname" required></div>

                <div><label id="p"><b>Password</b></label></div>
                <div><input style="width:80%; position: relative;" id="upassword" type="password" placeholder="Enter Password" name="upassword" required></div>


                <div><label ><b>EMAIL</b></label></div>
                <div><input style="width:80%; position: relative;" id=uemail type="text" placeholder="Enter EMAIL" name="uemail" required></div>

                <div><label ><b>Contact Number</b></label></div>
                <div><input style="width:80%; position: relative;" id=ucontactnumber type="text" placeholder="Enter EMAIL" name="ucontactnumber" required></div>


                <div><button style="width:80%; position: relative;" type="submit">Login</button></div>
                <div><label>
                    <input type="checkbox" checked="checked" name="remember"> Remember me
                </label></div>
            </div>

            <div style="width:80%; position: relative;" class="container" style="background-color:#f1f1f1">
                <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
            </div>
        </form>
    </div>



</div>
<div></div>
<div></div>
<div></div>
</body>
</html>

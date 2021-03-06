<%--
  Created by IntelliJ IDEA.
  User: Hamza Shah
  Date: 6/6/2018
  Time: 12:08 AM
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
            <li class="active"><a href="#">Home</a></li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="userprofile.html" class="glyphicon glyphicon-user"> Profile</a></li>
        </ul>

    </div>
</nav>
<form method="post" action="/addplanservlet">
<div class="fsPage" id="fsPage2393034-1">







    <div class="fsSection fs1Col" id="fsSection43254040">



        <div class="fsSectionHeader">

            <div class="fsSectionText"><h1>Add Banking Plan</h1>
                <p>Please fill out your information below to register this Plan.
                </p></div>
        </div>












        <div id="fsRow2393034-2" class="fsRow fsFieldRow fsLastRow">







            <div class="fsRowBody fsCell fsFieldCell fsFirst fsLast fsLabelVertical fsSpan100" id="fsCell43254041" lang="en" fs-field-type="name">
                <span id="label43254041" class="fsLabel">Name</span>



                <div class="fsSubFieldGroup">

                    <div class="fsSubField fsNameFirst">
                        <input type="text" id="name" name="name" size="20" value="" class="fsField fsFieldName">
                        <label class="fsSupporting">Investment Fund</label>
                    </div>


                    <div class="fsSubField fsNameLast">
                        <input type="text" id="InvestmentFund" name="InvestmentFund" size="20" value="" class="fsField fsFieldName">
                        <label class="fsSupporting" for="InvestmentFund"></label>
                    </div>

                </div>
                <div class="clear"></div>





            </div>
        </div>













        <div id="fsRow2393034-3" class="fsRow fsFieldRow fsLastRow">







            <div class="fsRowBody fsCell fsFieldCell fsFirst fsLast fsLabelVertical fsSpan100" id="fsCell43254042" lang="en" fs-field-type="address">
                <label id="label43254042" class="fsLabel" >Minimum/Maximum Age at Entry                    </label>



                <label for="field43254042-address" class="hidden">Maximum Age at Maturity</label>
                <input type="text" id="maxagematurity" name="maxagematurity" size="50" value="" class="fsField fsFieldAddress">
                <div class="fsSubFieldGroup">
                    <div class="fsSubField fsFieldCity">
                        <input type="text" id="field43254042-city" name="field43254042-city" size="15" value="" class="fsField fsFieldCity">
                        <label class="fsSupporting" for="field43254042-city">Available Term & Payment Range</label>
                        <input type="text" id="ATpaymentrange" name="ATpaymentrange" size="50" value="" class="fsField fsFieldAddress">
                    </div>
                    <div class="fsSubField fsFieldState">

                        <label class="fsSupporting" >Sum Assured</label>
                    </div>
                    <div class="fsSubField fsFieldZip">
                        <input type="text" id="SumAssured" name="SumAssured" size="6" value="" class="fsField fsFieldZip fsFormatZipUS">
                    </div>
                </div>
                <div class="clear"></div>





            </div>
        </div>













        <div id="fsRow2393034-4" class="fsRow fsFieldRow fsLastRow">







            <div class="fsRowBody fsCell fsFieldCell fsFirst fsLast fsLabelVertical fsSpan100" id="fsCell43254043" lang="en" fs-field-type="phone">
                <label id="label43254043" class="fsLabel">Minimum Annual Premium                 </label>



                <input type="text" id="maxannualpremium" name="maxannualpremium" size="50" value="" class="fsField fsFieldAddress">




            </div>
        </div>













        <div id="fsRow2393034-5" class="fsRow fsFieldRow fsLastRow">






        </div>













        <div id="fsRow2393034-6" class="fsRow fsFieldRow fsLastRow">







            <div class="fsRowBody fsCell fsFieldCell fsFirst fsLast fsLabelVertical fsSpan100"  lang="en" fs-field-type="email">
                <label  class="fsLabel" for="field43254045">Email                    </label>



                <input type="text" id="Email" name="Email" size="50" value="" class="fsField fsFieldAddress">





            </div>



            <div class="fsRowBody fsCell fsFieldCell fsFirst fsLast fsLabelVertical fsSpan100" id="fsCell43254045" lang="en" fs-field-type="email">
                <label id="label43254045" class="fsLabel" for="field43254045">Premium Payment Mode                    </label>



                <input type="text" id="ppmode" name="ppmode" size="50" value="" class="fsField fsFieldAddress">





            </div>



            <div class="fsRowBody fsCell fsFieldCell fsFirst fsLast fsLabelVertical fsSpan100"  lang="en">
                <label  class="fsLabel" for="psf">Partial Surrender Benefits (available after completion of two years)                    </label>



                <input type="email" id="psf" name="psf" size="50" value="" class="fsField">





            </div>
        </div>













        <div id="fsRow2393034-7" class="fsRow fsFieldRow fsLastRow">







            <div class="fsRowBody fsCell fsFieldCell fsFirst fsLast fsLabelVertical fsSpan100" id="fsCell43254046" lang="en" fs-field-type="radio">
                <fieldset id="label43254046">
                    <legend class="fsLabel fsLabelVertical"><span>Cover Multiple</span></legend>
                    <input type="text" id="CoverMultiple" name="CoverMultiple" size="50" value="" class="fsField fsFieldAddress">
                    <div class="fieldset-content">




                        <div class="fsRowBody fsCell fsFieldCell fsFirst fsLast fsLabelVertical fsSpan100" id="fsCell43254048" lang="en" fs-field-type="text">
                            <label id="label43254048" class="fsLabel">Unit Allocation as % of Basic Plan Premium                    </label>



                            <input type="text" id="unitallocation" name="unitallocation" size="50" value="" class="fsField fsFieldAddress">


                        </div>
                    </div>

                    <input class="btn btn-success" style="margin: 15px;margin-left:30%;width: 35%;" value="Add Plan" type="submit"/>


                </fieldset>
            </div>
        </div>
    </div>
</div>
</form>


</body>
</html>

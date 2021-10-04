<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
        <!-- EC meta data  -->
        
         
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
        <meta http-equiv="Pragma" content="no-cache" /><meta http-equiv="Expires" content="0" />
        <meta name="viewport" content= "width=device-width, initial-scale=1.0"><link rel="icon" href="/assets/logo/ec.png" type="image/jpg"/>
        
        <link href="/assets/ec/css/reset.css?v12" rel="stylesheet" type="text/css"/>
        <link href="/assets/ec/css/jquery-ui.css?v12" rel="stylesheet" type="text/css"/>
        <link href="/assets/ec/css/bootstrap.min.css?v12" rel="stylesheet" type="text/css"/>
        <link href="/assets/ec/css/bec.css?v12" rel="stylesheet" type="text/css"/>
        <link href="/assets/ec/css/slidepane.css?v12" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="/assets/ec/js/jquery-1.9.1.js"></script>
        <script type="text/javascript" src="/assets/ec/js/jquery-ui.js"></script>
        <script type="text/javascript" src="/assets/ec/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="/assets/ec/js/expand.js"></script>   
        
        <script type="text/javascript">
            
            $(function() {
                $("h2.expand").toggler({initShow: "div.demo.collapse"});
                $("#content").expandAll({trigger: "h2.expand", ref: "div.demo", speed: 300, oneSwitch: false});
            });
            
        </script>
        
        <style type="text/css">

            #wrapper {
                background: none repeat scroll 0 0 #f4f4f4;
                border-radius: 5px;
                margin: 0 auto;
                width: 900px;
                margin-top:125px;
                min-height:425px;
            }
            #wrapper h3 {
                background: none repeat scroll 0 0 #dbe1d3;
                color: #333;
                font-family: "Lucida Sans Unicode","Lucida Grande",sans-serif;
                font-size: 16px;
                height: 50px;
                margin: 0 0 30px;
                padding: 14px;
                text-shadow: 1px 2px 3px #fff;
            }

        </style>
        
        <!-- EC meta data End -->
    </head>
    <body>
  
<div id="wrap" class="">
            <div id="" class="container">
                <div id="header" class="">
                    <h1>Election Commission Bangladesh</h1>
                    <div id="nav" class="">
                        <ul>
                        	<li><a href=""></a></li>
                        	<li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href="/">Home</a></li>
                            <li><a href="/nidInfo">Vote</a></li>
                            <li><a href="/loginPage">Login</a></li>
                            <li><a href="/searchReceipt">Downloads Voting Receipt</a></li>
                            <li><a href="/electionResult">Election Result</a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                            <li><a href=""></a></li>
                        </ul>
                    </div><!-- nav ends -->
                </div><!-- header ends -->
        
       <div id="main" class="col-sm-12">
	<div id="wrapper"> 
       <div id="content">  
                  <h1 class="text-info">Welcome to Online Voting System.</h1> 
                  <ul>
                  	<li><h3>Through this site one can easily perform online Voting Action.</h3></li>
                  	<li><h3>One have to verify himself through OTP code.</h3></li>
                  	<li><h3>Then he/she can complete his/her voting action.</h3></li>
                  	<li><h3>He/She can download his/her voting receipt.</h3></li>
                  </ul>
                  
            </div>
           </div>
         </div>
            </div> 
        </div><!-- main ends -->
        </div><!-- container ends -->
        </div><!-- wrap ends --> 
       



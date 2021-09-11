<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>topMenu</title>
	<link rel="stylesheet" type="text/css" href="../resources/css/topMenu.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
					<li class="logo"><a href="${path}"><img src="../resources/css/frontLogo.png" ></a></li>
			</div>
			
			<div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav navbar-right">
					
						<li class="item"><a href="#home"><b>Home</b></a></li>
						<li class="item"><a href="#about">About</a></li>
						<li class="item"><a href="${path}/news/newsList">News</a></li>	
						
						
						<li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#">Contents<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="https://www.youtube.com/channel/UCMpp2Ln-XtD36-iUL3Yd1rw" target="_blank">Videos</a></li>
						</ul>
						</li>
				
						
                    </ul>
                </div>
            </div>
        </div>
    </nav>
	


    
 

</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<link rel="stylesheet" type="text/css" href="../resources/css/topMenu.css"/>


	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
					<li class="logo"><a href="${path}/#home"><img src="../resources/css/frontLogo.png" ></a></li>
			</div>
			
			<div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav navbar-right">
					
						<li class="item"><a href="${path }/#home"><b>Home</b></a></li>
						<li class="item"><a href="${path }/#about">About</a></li>
						<li class="item"><a href="${path}/news/newsList">News</a></li>	
						
						<li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#">Contents
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="https://www.youtube.com/channel/UCMpp2Ln-XtD36-iUL3Yd1rw" target="_blank">Videos</a></li>
						</ul>
						</li>
											
                    </ul>
                </div>
            </div>
        </div>
    </nav>



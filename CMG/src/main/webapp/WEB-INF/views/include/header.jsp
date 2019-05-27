<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>CMG | SPRING</title>
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="/resources/css/sticky-footer-navbar.css" rel="stylesheet">
	<link href="/resources/css/carousel.css" rel="stylesheet">
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/animate.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/select2.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/customCMG.css">
	<link href="/resources/css/main.css" rel="stylesheet">
	<link href="/resources/css/util.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container">
	  <a class="navbar-brand" href="/">CMG</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarColor03">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item">
	        <a class="nav-link" href="/resume">이력서</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="/introduce">자기소개서</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="/board/boardlist?search=&page=1">게시판</a>
	      </li>
	    </ul>
	    
	    <c:choose>
    		<c:when test = "${sessionScope.userID eq null}">
				<button type="submit" class="btn btn-outline-primary" onclick="location.href='/login/signin'">SIGN IN</button>
    		</c:when>
    		<c:otherwise>
    			<form action="/login/logout" method="post">
    			<ul class="navbar-nav mr-auto">
	    			<li class="nav-item">
				    	 <a class="nav-link"> ${sessionScope.userID} </a>
				    </li>
				    <li class="nav-item"> 
				    	<button type="submit" class="btn btn-secondary" >LOGOUT</button>
					</li>
				</ul>
			    </form>
    		</c:otherwise>
    	</c:choose>
	  </div>
	  </div>
	</nav>

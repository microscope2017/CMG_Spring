<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>CMG|Spring Web</title>

	<link rel="stylesheet" href="/resources/css/style.min.css">
	<link rel="stylesheet" href="/resources/css/modules.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<!-- Canonical URL usage -->
	<link rel="canonical" href="https://aperitif.io/">

	<!-- Facebook Open Graph -->
	<meta property="og:url"                content="https://aperitif.io/" />
	<meta property="og:title"              content="Aperitif | The web template generator" />
	<meta property="og:description"        content="Aperitif is a rapid web template generation tool." />
	<meta property="og:image"              content="https://aperitif.io/img/aperitif-facebook.png" />
	<meta property="og:image:width"        content="1200" />
	<meta property="og:image:height"       content="630" />

	<!-- Twitter Cards -->
	<meta name="twitter:card" content="summary_large_image">
	<meta name="twitter:site" content="@Aperitif">
	<meta name="twitter:creator" content="@Aperitif">
	<meta name="twitter:title" content="Aperitif - The web template generator">
	<meta name="twitter:description" content="Aperitif is a rapid web template generation tool.">
	<meta name="twitter:image" content="https://aperitif.io/img/aperitif-card.png">

	<!-- Google Structured Data -->
	<script type="application/ld+json">
	{
	"@context" : "http://schema.org",
	"@type" : "SoftwareApplication",
	"name" : "Aperitif",
	"image" : "https://aperitif.io/img/aperitif-logo.svg",
	"url" : "https://aperitif.io/",
	"author" : {
	  "@type" : "Person",
	  "name" : "Octavector"
	},
	"datePublished" : "2017-MM-DD",
	"applicationCategory" : "HTML"
	}
	</script>
</head>

<body class="modern">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
<header class="MOD_HEADER3">
  <div class="MOD_HEADER3_SocialBarContainer">
  	<div data-layout="_r" class="MOD_HEADER3_SocialBar">
    	<div class="MOD_HEADER3_SocialIcons"></div>
    	<c:choose>
    		<c:when test = "${sessionScope.userID eq null}">
		  		<div class="MOD_HEADER3_Contact">
				<form action="/login/signin" method="get">
				<button type="submit" class="btnin" onclick="location.href='/login/signin'">SIGN IN</button>
				</form>
				<button type="button" class="btnup" onclick="location.href='/login/signup'">SIGN UP</button>
			    </div>
    		</c:when>
    		<c:otherwise>
    			<form action="/login/logout" method="post">
		  		<div class="MOD_HEADER3_Contact">
			    <div class="textbox">
					    ${sessionScope.userID}
				</div>
				<button type="submit" class="btnup" >LOGOUT</button>
			    </div>
			    </form>
    		</c:otherwise>
    	</c:choose>
    </div>
  </div>
  <div data-layout="_r">
    <div data-layout="al16">
      <img class="MOD_HEADER3_Logo" alt="Company name" src="https://unsplash.it/300/100/?random" onclick="location.href='/'">
      <p class="MOD_HEADER3_Slogan" data-theme="_ts2_bb1">Company slogan, byline or additional message</p>
    </div>
  </div>
</header>
<form>
<section class="MOD_MENU" data-theme="_bgp">
  <div data-layout="_r" class="nopadding">
    <nav class="MOD_MENU_Nav">
      <p class="MOD_MENU_Title">Menu</p>
      <ul class="AP_Menu_List">
        <li>
          <a href="/resume" data-theme="_bgp">이력서</a>
        </li>
        <li>
          <a href="/introduce" data-theme="_bgp">자기소개서</a>
        </li>
        <li>
          <a href="/project" data-theme="_bgp">프로젝트</a>
          <ul>
            <li>
              <a href="https://github.com/microscope2017/CMG_Spring" data-theme="_bgpd">SPRING</a>
            </li>
            <li>
              <a href="#" data-theme="_bgpd">NODE.JS</a>
            </li>
            <li>
              <a href="#" data-theme="_bgpd">ANDROID</a>
            </li>
          </ul>
        </li>
        <li>
          <a href="/board/boardlist?search=&page=1" data-theme="_bgp">게시판</a>
        </li>
      </ul>
    </nav>
  </div>
</section>
</form>
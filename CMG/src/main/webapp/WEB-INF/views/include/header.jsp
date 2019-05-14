<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
   
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Aperitif - Custom Template</title>

	<link rel="stylesheet" href="resources/css/style.min.css">
	<link rel="stylesheet" href="resources/css/modules.css">

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

<header class="MOD_HEADER3">  
  <div data-layout="_r">
    <div data-layout="al16">
      <img class="MOD_HEADER3_Logo" alt="Company name" src="https://unsplash.it/300/100/?random">
      <p class="MOD_HEADER3_Slogan" data-theme="_ts2_bb1">Company slogan, byline or additional message</p>
    </div>
  </div>
</header>

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
              <a href="#" data-theme="_bgpd">SPRING</a>
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
          <a href="#" data-theme="_bgp">게시판</a>
        </li>
      </ul>
    </nav>
  </div>
</section>
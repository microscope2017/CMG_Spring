<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="./include/header.jsp" %>
<div class="jumbotron" style="background-color: #D2D2FF;">
  <div class="container">
	  <h1 class="display-3">CMG SPRING WEB PROJECT</h1>
	  <p class="lead">최미경의 스프링 웹 프로젝트 소개를 위한 페이지 입니다.</p>
	  <hr class="my-4">
	  <p class="lead"></p>
  </div>
</div>
<div class="container marketing">
<div class="row">
        <div class="col-lg-4">
          <img class="img-circle" src="resources/spring-featured-image.png" alt="Generic placeholder image" width="180" height="180">
          <h2>Spring Web</h2>
          <p class="lead">로그인, 게시판 기능 등을 포함하는 스프링 기반 웹 프로젝트입니다.</p>
          <p><a class="btn btn-default" href="https://github.com/microscope2017/CMG_Spring" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="resources/comingsoon.png" alt="Generic placeholder image" width="180" height="180">
          <h2>Node.js Web</h2>
          <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="resources/comingsoon.png" alt="Generic placeholder image" width="180" height="180">
          <h2>Django Web</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
      </div>
<script>
	var result = '${msg}';
	if(result == 'REGISTERED') alert("회원가입을 축하합니다.");	
</script>
<%@ include file="./include/footer.jsp" %>
			
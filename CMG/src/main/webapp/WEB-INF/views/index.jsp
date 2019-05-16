<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="./include/header.jsp" %>
<section class="MOD_HERO" style="background-image:url(https://unsplash.it/1400/?random)">
  <div data-layout="_r">
    <div data-layout="de10">
      <h1>Hero Area</h1>
      <h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h3>
      <a href="/resume" class="btn">Read more</a>
    </div>
  </div>
</section>
<script>
	var result = '${msg}';
	if(result == 'REGISTERED'){
		alert("회원가입을 축하합니다.");
	}else if(result == 'LoginSuccess'){
		alert("로그인 성공.")
	}else if(result == 'LoginFail'){
		alert("비밀번호가 일치하지 않습니다.")
	}
</script>
<%@ include file="./include/footer.jsp" %>
			
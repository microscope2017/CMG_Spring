<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header.jsp" %>

<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
				<form method="post" class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-32"> Account Login </span>

					<span class="txt1 p-b-11"> E-mail </span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "E-mail is required">
						<input class="input100" type="text" name="m_email" placeholder="${msg }">
						<span class="focus-input100"></span>
					</div>

					<span class="txt1 p-b-11"> Password </span>
					<div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">
						<input class="input100" type="password" name="m_pw" placeholder="${msg }">
						<span class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-b-48">
						<div>
							<a href="/login/signup" class="txt3"> 아직 회원이 아니세요? </a>
						</div>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn"> Login </button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="dropDownSelect1"></div>
	
	<script src="/resources/jquery-3.4.1.js" type="text/javascript"></script>
	<script src="/resources/js/animsition.min.js" type="text/javascript"></script>
	<script src="/resources/js/popper.js" type="text/javascript"></script>
	<script src="/resources/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="/resources/js/select2.min.js" type="text/javascript"></script>
	<script src="/resources/js/moment.min.js" type="text/javascript"></script>
	<script src="/resources/js/daterangepicker.js" type="text/javascript"></script>
	<script src="/resources/js/countdowntime.js" type="text/javascript"></script>
	<script src="/resources/js/main.js" type="text/javascript"></script>

	
<%@ include file="../include/footer.jsp" %>
			
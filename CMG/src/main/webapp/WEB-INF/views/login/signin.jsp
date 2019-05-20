<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header.jsp" %>
<section>
  <div data-layout="_r"><div data-layout="al16">
    <div data-layout="de10 ec-half">
      <h3>Sign In</h3>
      <form method="post" name="check">
        <div class="formRow">
		  <label for="MOD_TEXTFORM_EmailField">Email </label>
		  <input name='m_email' id="MOD_TEXTFORM_EmailField" type="text" placeholder="E-mail">
		</div>
		<div class="formRow">
		  <label for="MOD_TEXTFORM_TelField">Password </label>
		  <input name='m_pw' id="MOD_TEXTFORM_TelField" type="password" placeholder="Password">
		</div>
		<h4>${msg}</h4>
        <button type="submit" class="btn">로그인</button>
      </form>
    </div>
  </div></div>
</section>
<%@ include file="../include/footer.jsp" %>
			
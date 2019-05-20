<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header.jsp" %>
<section>
  <div data-layout="_r">
    <div data-layout="de10 ec-half">
      <h3>Sign Up</h3>
      <form method="post" name="check">
        <div class="formRow">
          <label for="MOD_TEXTFORM_EmailField">Email </label>
          <input name='m_email' id="MOD_TEXTFORM_EmailField" type="text">
        </div>
        <div class="formRow">
          <label for="MOD_TEXTFORM_TelField">Password </label>
          <input name='m_pw' id="MOD_TEXTFORM_TelField" type="password">
        </div>
        <div class="formRow">
          <label for="MOD_TEXTFORM_TelField">Password Check </label>
          <input name='m_pw_check' id="MOD_TEXTFORM_TelField" type="password">
        </div>
        <button type="submit" class="btn">가입</button>
      </form>
    </div>
  </div>
</section>
<%@ include file="../include/footer.jsp" %>
			
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header.jsp" %>
<div class="container">
<form>
  <fieldset>
    <legend>SIGN UP</legend>
    <div class="form-group">
      <label for="exampleInputEmail1">Email address</label>
      <input name='m_email' type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">Password</label>
      <input name='m_pw' type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">Password Check</label>
      <input name='m_pw_check' type="password" class="form-control" id="exampleInputPassword1" placeholder="Password Check">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </fieldset>
</form>
</div>
<%@ include file="../include/footer.jsp" %>
			
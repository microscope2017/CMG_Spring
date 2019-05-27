<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header.jsp" %>
<div class="container">
<form method="post">
  <fieldset>
    <legend>게시물 등록</legend>
    <input type="hidden" name='b_writer' value="${sessionScope.userID}">
    <div class="form-group">
      <input name='b_title' type="text" class="form-control" id="exampleInputEmail1" placeholder="제목">
    </div>
    <div class="form-group">
      <textarea name='b_text' class="form-control" id="exampleTextarea" rows="10" placeholder="내용을 입력하세요"></textarea>
    </div>
    <button type="submit" class="btn btn-primary">등록</button>
    </fieldset>
</form>
</div>
<%@ include file="../include/footer.jsp" %>
			
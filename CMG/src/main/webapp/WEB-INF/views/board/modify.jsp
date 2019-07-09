<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header.jsp" %>
<div class="container">
<form method="post" enctype="multipart/form-data">
  <fieldset>
    <legend>게시물 수정</legend>
    <input type="hidden" name='b_writer' value="${sessionScope.userID}">
    <div class="form-group">
      <input name='b_title' type="text" class="form-control" id="exampleInputEmail1" value="${boardVO.b_title}">
    </div>
    <div class="form-group">
      <textarea name='b_text' class="form-control" id="exampleTextarea" rows="10">${boardVO.b_text}</textarea>
    </div>
    <br> <img src="/resources/img/${boardVO.b_image }" width="100px">
    <div class="form-group">
      <input type="file" name='b_img' class="form-control-file" accept=".gif, .jpg, .png">
    </div>
    <button type="submit" class="btn btn-primary">수정</button>
    </fieldset>
</form>
</div>
<%@ include file="../include/footer.jsp" %>
			
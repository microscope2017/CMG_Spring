<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header.jsp" %>
<section>
  <div data-layout="_r"><div data-layout="al16">
    <div data-layout="de10 ec-half">
      <h3>게시글 작성</h3>
      <form role="form" method="post">
      	<input type="hidden" name='b_writer' value="${sessionScope.userID}">
		<div class="formRow">
          <input id="MOD_TEXTFORM_TelField" name='b_title' type="text" placeholder="제목">
        </div>
        <div class="formRow">
        <textarea id="MOD_TEXTFORM_MsgField" name='b_text' placeholder="내용을 입력하세요"></textarea></div>
        <button type="submit" class="btn">저장</button>
	</form>
    </div>
  </div></div>
</section>
<%@ include file="../include/footer.jsp" %>
			
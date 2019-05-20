<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header.jsp" %>
<section class="MOD_BLOGROLL1">
  <div data-layout="_r">
    <div data-layout="ec12 fo10 fo-n2">
      <div class="MOD_BLOGROLL1_Single">
        <header>
          <h2>${boardVO.b_title}</h2>
          <div class="MOD_BLOG1_Meta">
          <p class="MOD_BLOG1_Author">by ${boardVO.b_writer}</p>
            <p><b>Published</b> <span class="MOD_BLOG1_Date">${boardVO.b_date}</span> | <b>View</b> <span class="MOD_BLOG1_Cats">${boardVO.b_cnt}</span></p>
          </div>
        </header>
        <div class="MOD_BLOGROLL1_Excerpt">
          ${boardVO.b_text}
        </div>
      </div>
      <c:if test="${sessionScope.userID == 'microscope2017@naver.com'}">
	    <button type="button" class="btnin" onclick="location.href='/board/modify'">수정</button>
	    <button type="button" class="btnup" onclick="location.href='/board/remove?b_id=${boardVO.b_id}'">삭제</button>
    </c:if>
    </div>
   </div>
</section>

<%@ include file="../include/footer.jsp" %>
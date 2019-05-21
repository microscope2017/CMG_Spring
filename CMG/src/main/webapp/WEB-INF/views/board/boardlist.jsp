<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp" %>
<section class="content">
	<div data-layout="_r"><div data-layout="al16">
	<div class="row">
		<!--  left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box">
				<div class="box-header with-border">
					<c:choose>
						<c:when test = "${sessionScope.userID eq null}">
							<h5>로그인시 게시물 작성이 가능합니다.</h5>
						</c:when>
						<c:otherwise>
							<button type="button" class="btn btn-default" onClick="location.href='/board/register'">작성
							</button>
						</c:otherwise>
					</c:choose>
					<p></p>
				</div>
				<div>
					<table class = "table table-bordered">
						<tr>
							<th></th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
						<c:forEach items="${list}" var="boardVO">
						<tr>
							<td>${boardVO.b_id}</td>
							<td><a href='/board/read?b_id=${boardVO.b_id}'>${boardVO.b_title}</a></td>
							<td>${boardVO.b_writer}</td>
							<td>${boardVO.b_date}</td>
							<td><span class="badge bg-red">${boardVO.b_cnt}</span></td>
						</tr>
						</c:forEach>
					</table>
				</div>
				 <div class="MOD_BLOGROLL1_Pagination">
			       <ul>
			       	  <c:if test="${pagenation.pageNum > 1}">
			          	<li><a href="/board/boardlist?page=${pagenation.pageNum-1}">Previous</a></li>
			          </c:if>
			          <c:forEach var="i" begin="${pagenation.startPage}" end="${pagenation.endPage}" step="1">
			          	<li><a href="/board/boardlist?page=${i}">${i}</a></li>
			          </c:forEach>
			          <c:if test="${pagenation.pageNum < pagenation.pageCnt}">
			          	<li><a href="/board/boardlist?page=${pagenation.pageNum+1}">Next</a></li>
			       	  </c:if>
			       </ul>
			    </div>
			</div>
		</div><!--  / .col(left) -->
	</div><!--  /.row -->
	</div></div>
</section><!--  /.content -->

<%@ include file="../include/footer.jsp" %>
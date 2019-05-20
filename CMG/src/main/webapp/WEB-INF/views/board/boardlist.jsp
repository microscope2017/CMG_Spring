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
					<h3 class="box-title">LIST ALL PAGE 
					<c:choose>
						<c:when test = "${sessionScope.userID eq null}">
							<h5>로그인시 게시물 작성이 가능합니다.</h5>
						</c:when>
						<c:otherwise>
							<button type="button" class="btn btn-default" onClick="location.href='/board/register'">작성
							</button>
						</c:otherwise>
					</c:choose>
					</h3>
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
			</div>
		</div><!--  / .col(left) -->
	</div><!--  /.row -->
	</div></div>
</section><!--  /.content -->

<%@ include file="../include/footer.jsp" %>
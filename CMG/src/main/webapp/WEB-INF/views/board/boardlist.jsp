<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp" %>
<div class="container" style='height:350px;'>
	<c:choose>
		<c:when test = "${sessionScope.userID eq null}">
			<h5>로그인시 게시물 작성이 가능합니다.</h5>
		</c:when>
		<c:otherwise>
			<button type="button" class="btn btn-link" onClick="location.href='/board/register'">작성</button>
		</c:otherwise>
	</c:choose>
	<br>
	<table class="table table-hover">
	<tr class="table-secondary">
      <th scope="row"></th>
      <th scope="row">제목</th>
      <th scope="row">작성자</th>
      <th scope="row">작성일</th>
      <th scope="row">조회수</th>
	</tr>
	<c:forEach items="${list}" var="boardVO">
		<tr class="table-light">
			<td>${boardVO.b_id}</td>
			<td><a href='/board/read?b_id=${boardVO.b_id}'>${boardVO.b_title}</a></td>
			<td>${boardVO.b_writer}</td>
			<td>${boardVO.b_date}</td>
			<td>${boardVO.b_cnt}</td>
		</tr>
	</c:forEach>
	</table>
	
</div>
<div class="container">
	<form class="form-inline my-2 my-lg-0">
      <input name='search' class="form-control mr-sm-2" type="text" placeholder="Search">
      <input name='page' type="hidden" value=1>
      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
    </form>
</div>
<div class="container">
	<div>
		<ul class="pagination">
		<c:if test="${pagenation.pageNum > 1}">
			<li class="page-item"><a class="page-link" href="/board/boardlist?search=${pagenation.keyword}&page=${pagenation.pageNum-1}">Previous</a></li>
		</c:if>
		<c:forEach var="i" begin="${pagenation.startPage}" end="${pagenation.endPage}" step="1">
			<li class="page-item"><a class="page-link" href="/board/boardlist?search=${pagenation.keyword}&page=${i}">${i}</a></li>
		</c:forEach>
		<c:if test="${pagenation.pageNum < pagenation.pageCnt}">
			<li class="page-item"><a class="page-link" href="/board/boardlist?search=${pagenation.keyword}&page=${pagenation.pageNum+1}">Next</a></li>
		</c:if>
		</ul>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
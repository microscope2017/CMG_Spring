<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<div class="container">
	<h2>
		${boardVO.b_title} <small class="text-muted">by ${boardVO.b_writer}</small>
	</h2>
	<p class="lead">
		<b>Published</b> ${boardVO.b_date} | <b>View</b> ${boardVO.b_cnt}
	</p>
	<br> ${boardVO.b_text}
	<br> <img src="/resources/img/${boardVO.b_image }" width="500px">
	<br><br>
	<c:if test="${sessionScope.userID == boardVO.b_writer}">
		<button type="button" class="btn btn-secondary" onclick="location.href='/board/modify?b_id=${boardVO.b_id}'">수정</button>
		<button type="button" class="btn btn-danger" onclick="location.href='/board/remove?b_id=${boardVO.b_id}'">삭제</button>
	</c:if>
	<br><br><br>
	
	<div class="col-md-8">
		<c:if test="${sessionScope.userID != null}">
				<div class="input-group"> 
			        <input id="text" class="form-control" placeholder="댓글을 입력하세요." type="text"> &nbsp;
			        <button id="regist" type="submit" class="btn btn-primary"><i class="fa fa-edit"></i></button>
		    	</div>
		</c:if>
		
		<c:if test="${sessionScope.userID == null}">
				<h5>로그인 후 댓글을 남길 수 있습니다.</h5>
		</c:if>
		<br><br>
		<div id="replyall" class="card border-light mb-3" style="max-width: 40rem;"></div>
		<div> <ul class="pagination" id="replypage"></ul> </div>
	</div>
</div>

<script src="/resources/jquery-3.4.1.js"></script>
<script>
	var page_glob = null;
	$(document).ready(getReplyList(1));
	$(document).ready(paging(1));

	function paging(page) {
		$.getJSON("/reply/page?page=" + page + "&b_id=${boardVO.b_id}",
				function(data) {
					var str = "";
					$(data).each(
							function() {
								var pagenum = parseInt(this.pageNum);
								var pagecnt = parseInt(this.pageCnt);
								var start = parseInt(this.startPage);
								var end = parseInt(this.endPage);
								if (pagenum > 1) {
									str += "<li class=\"page-item\"><a class=\"page-link\" onclick=\"getReplyList("
											+ (pagenum - 1)
											+ ")\">Previous</a></li>";
								}
								for (var i = start; i <= end; i++) {
									str += "<li class=\"page-item\"><a class=\"page-link\" onclick=\"getReplyList(" + i
											+ ")\">" + i + "</a>";
								}
								if (pagenum < pagecnt) {
									str += "<li class=\"page-item\"><a class=\"page-link\" onclick=\"getReplyList("
											+ (pagenum + 1)
											+ ")\">Next</a></li>";
								}
							});
					$("#replypage").html(str+"<br><br><br><br><br><br><br>");
				});
	}

	function getReplyList(page) {
		page_glob = page;
		paging(page);
		$.getJSON(
			"/reply/show" + "?b_id=${boardVO.b_id}&page=" + page,
			function(data) {
				var str = "";
				$(data).each( function() {
					var session = "${sessionScope.userID}";
					var writer = this.r_writer;
					if (session == writer) {
						str += "<div class=\"card-header\">"+this.r_writer+" | "+this.r_date+"&nbsp; <button onclick=\"remove("
							+this.r_id+")\" class=\"btn btn-danger btn-sm\"><li class=\"fa fa-trash\"></li></button></div>"
							+"<div class=\"card-body\"><p class=\"card-text\">"+this.r_text+"</p></div>";
					} else {
						str += "<div class=\"card-header\">"+this.r_writer+" | "+this.r_date+"</div>"
						+"<div class=\"card-body\"><p class=\"card-text\">"+this.r_text+"</p></div>";
					}
				});
				$("#replyall").html(str);
			});
	}

	function remove(r_id) {
		$.ajax({
			type : "delete",
			url : "/reply/remove?r_id=" + r_id,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "DELETE"
			},
			dataType : "text",
			success : function(data) {
				getReplyList(page_glob);
			}
		});
	}

	$("#regist").click(function() {
		var r_writer = "${sessionScope.userID}";
		var r_text = $("#text").val();
		var b_id = "${boardVO.b_id}";
		$.ajax({
			type : "post",
			url : "/reply/regist",
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType : "text",
			data : JSON.stringify({
				r_writer : r_writer,
				r_text : r_text,
				b_id : b_id
			}),
			success : function() {
				getReplyList(1);
			}
		});
	});
</script>

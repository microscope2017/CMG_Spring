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
      <c:if test="${sessionScope.userID == boardVO.b_writer}">
	    <button type="button" class="btnin" onclick="location.href='/board/modify?b_id=${boardVO.b_id}'">수정</button>
	    <button type="button" class="btnup" onclick="location.href='/board/remove?b_id=${boardVO.b_id}'">삭제</button>
    </c:if>
    <c:if test="${sessionScope.userID != null}">
	    <div class="form-group ">
	        <textarea id="text" class="form-control" placeholder="댓글을 입력하세요."></textarea> 
	    </div>
	    <button id="regist" class="btn btn-default">등록</button>
    </c:if>
    <c:if test="${sessionScope.userID == null}">
	    <div class="form-group ">
	        <textarea  class="form-control" placeholder="로그인 후 댓글을 남길 수 있습니다."></textarea> 
	    </div>
    </c:if>
    <table id="replyall">
    </table>
    <div class="MOD_BLOGROLL1_Pagination">
		<ul id="replypage"></ul>
	</div>
   </div>
   </div>
</section>
<script src="/resources/jquery-3.4.1.js"></script>
<script>
	var page_glob = null;
	$(document).ready(getReplyList(1));
	$(document).ready(paging(1));
	
	function paging(page){
		$.getJSON("/reply/page?page="+page+"&b_id=${boardVO.b_id}", function(data){
			var str = "";
			$(data).each(
				function(){
					var pagenum = parseInt(this.pageNum);
					var pagecnt = parseInt(this.pageCnt);
					var start = parseInt(this.startPage);
					var end = parseInt(this.endPage);
					if(pagenum > 1){
						str+="<li><a onclick=\"getReplyList("+(pagenum-1)+")\">Previous</a></li>";
					}
					for(var i = start; i <= end; i++){
						str+="<li><a onclick=\"getReplyList("+i+")\">"+i+"</a></li>";
					}
					if(pagenum < pagecnt){
						str+="<li><a onclick=\"getReplyList("+(pagenum+1)+")\">Next</a></li>";
					}
			});
			$("#replypage").html(str);
		});
	}
	
	function getReplyList(page){
		page_glob = page;
		paging(page);
		$.getJSON("/reply/show"+"?b_id=${boardVO.b_id}&page="+page, function(data){
			var str = "";
			$(data).each(
				function(){
					var session = "${sessionScope.userID}";
					var writer = this.r_writer;
					if(session == writer){
						str+="<tr><th>"+this.r_writer+"</th><th><button onclick=\"remove("+this.r_id+")\">삭제</button></th></tr>"
							+"<tr><td>"+this.r_text+"</td></tr>"
							+"<tr><td>"+this.r_date+"</td></tr>";
					}else{
						str+="<tr><th>"+this.r_writer+"</th></tr>"
							+"<tr><td>"+this.r_text+"</td></tr>"
							+"<tr><td>"+this.r_date+"</td></tr>";
					}
			});
			$("#replyall").html(str);
		});
	}
	
	function remove(r_id){
		$.ajax({
			type : "delete",
			url : "/reply/remove?r_id="+r_id,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "DELETE"
			},
			dataType : "text",
			success : function(data){ getReplyList(page_glob); }
		});
	}
	
	$("#regist").click(function(){
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
			success : function(){ getReplyList(1); }
		});
	});
</script>
<%@ include file="../include/footer.jsp" %>

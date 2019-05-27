package org.cmg.dto;

public class Pagenation {
	private int pageNum;
	private int startPage;
	private int endPage;
	private int pageCnt;
	private String keyword;
	private int b_id;//댓글 페이지네이션을 위한 변수
	
	public Pagenation(int pageNum, int pageCnt, String keyword) {//게시글 페이지네이션 생성자
		this.setPageCnt(pageCnt);
		this.setKeyword(keyword);
		
		if(pageNum <= 0) this.pageNum = 1; // page가 음수로 내려가지 않도록 처리
		else this.pageNum = pageNum;
		
		if(pageNum<3) {
			startPage = 1;
			if(pageCnt<5) endPage = pageCnt;
			else endPage = 5;
		} else if(pageNum > pageCnt - 3){
			startPage = pageNum - 2;
			endPage = pageCnt;
		}else { // 현재 페이지를 기준으로 좌우 두개씩 표시
			startPage = pageNum - 2;
			if(pageCnt<5) endPage = pageCnt;
			else endPage = pageNum + 2;
		}
	}
	
	public Pagenation(int pageNum, int pageCnt, int b_id) {
		this.setPageCnt(pageCnt);
		this.setB_id(b_id);
		if(pageNum <= 0) this.pageNum = 1; // page가 음수로 내려가지 않도록 처리
		else this.pageNum = pageNum;
		
		if(pageNum<3) {
			startPage = 1;
			if(pageCnt<5) endPage = pageCnt;
			else endPage = 5;
		} else if(pageNum > pageCnt - 3){
			startPage = pageNum - 2;
			endPage = pageCnt;
		}else { // 현재 페이지를 기준으로 좌우 두개씩 표시
			startPage = pageNum - 2;
			if(pageCnt<5) endPage = pageCnt;
			else endPage = pageNum + 2;
		}
	}
	
	public int getPageNum() { return pageNum; }
	public void setPageNum(int pageNum) { this.pageNum = pageNum; }
	public int getStartPage() { return startPage; }
	public void setStartPage(int startPage) { this.startPage = startPage; }
	public int getEndPage() { return endPage; }
	public void setEndPage(int endPage) { this.endPage = endPage; }
	public int getPageCnt() { return pageCnt; }
	public void setPageCnt(int pageCnt) { this.pageCnt = pageCnt; }
	public String getKeyword() { return keyword; }
	public void setKeyword(String keyword) { this.keyword = keyword; }
	public int getB_id() { return b_id; }
	public void setB_id(int b_id) { this.b_id = b_id; }
}

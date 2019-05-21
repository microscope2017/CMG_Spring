package org.cmg.dto;

public class Pagenation {
	private int pageNum;
	private int startPage;
	private int endPage;
	private int pageCnt;
	
	public Pagenation(int pageNum, int pageCnt) {
		this.setPageCnt(pageCnt);
		
		if(pageNum <= 0) this.pageNum = 1; // page가 음수로 내려가지 않도록 처리
		else this.pageNum = pageNum;
		
		if(pageNum<3) {
			startPage = 1;
			endPage = 5;
		} else if(pageNum > pageCnt - 3){
			startPage = pageNum - 2;
			endPage = pageCnt;
		}else { // 현재 페이지를 기준으로 좌우 두개씩 표시
			startPage = pageNum - 2;
			endPage = pageNum + 2;
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
}

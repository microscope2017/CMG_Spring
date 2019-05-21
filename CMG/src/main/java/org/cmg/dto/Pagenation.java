package org.cmg.dto;

public class Pagenation {
	private int pageNum;
	
	public Pagenation(int pageNum) {
		if(pageNum <= 0) this.pageNum = 0;
		else this.pageNum = pageNum - 1;
	}
	
	public int getPageNum() { return pageNum; }
	public void setPageNum(int pageNum) { this.pageNum = pageNum; }
}

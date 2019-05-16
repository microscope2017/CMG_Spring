package org.cmg.dto;

public class BoardVO {
	private int b_id;
	private String b_title;
	private String b_text;
	private String b_writer;
	private String b_date;
	private String b_time;
	private int b_cnt;
	
	public int getB_id() { return b_id; 	}
	public void setB_id(int b_id) { this.b_id = b_id; }
	public String getB_title() { return b_title; }
	public void setB_title(String b_title) { this.b_title = b_title; }
	public String getB_text() { return b_text; }
	public void setB_text(String b_text) { this.b_text = b_text; }
	public String getB_writer() { return b_writer; }
	public int getB_cnt() { return b_cnt; }
	public void setB_cnt(int b_cnt) { this.b_cnt = b_cnt; }
	public void setB_writer(String b_writer) { this.b_writer = b_writer; }
	public String getB_date() { return b_date; }
	public void setB_date(String b_date) { this.b_date = b_date; }
	public String getB_time() { return b_time; }
	public void setB_time(String b_time) { this.b_time = b_time; }
	
	@Override
	public String toString() {
		return "access BoardVO......";
	}
}

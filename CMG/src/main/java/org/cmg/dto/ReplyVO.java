package org.cmg.dto;
 
public class ReplyVO {
	private int r_id;
	private int b_id;
	private String r_text;
	private String r_writer;
	private String r_date;
	private String r_time;
	
	public int getR_id() { return r_id; }
	public void setR_id(int r_id) { this.r_id = r_id; }
	public int getB_id() { return b_id; }
	public void setB_id(int b_id) { this.b_id = b_id; }
	public String getR_text() { return r_text; }
	public void setR_text(String r_text) { this.r_text = r_text; }
	public String getR_writer() { return r_writer; }
	public void setR_writer(String r_writer) { this.r_writer = r_writer; }
	public String getR_date() { return r_date; }
	public void setR_date(String r_date) { this.r_date = r_date; }
	public String getR_time() { return r_time; }
	public void setR_time(String r_time) { this.r_time = r_time; }
	
	@Override
	public String toString() {
		return "access ReplyVO.......";
	}
}

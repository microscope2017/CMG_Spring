package org.cmg.dto;

public class BoardVO {
	private int b_id;
	private String b_title;
	private String b_text;
	private String b_image;
	private String b_writer;
	private String b_date;
	private int b_cnt;
	
	public BoardVO() {
		// TODO Auto-generated constructor stub
	}
	
	public BoardVO(String b_title, String b_text, String b_image, String b_writer, int b_cnt) {
		this.b_title = b_title;
		this.b_text = b_text;
		this.b_image = b_image;
		this.b_writer = b_writer;
		this.b_cnt = b_cnt;
	}
	public BoardVO(int b_id, String b_title, String b_text, String b_image) {
		this.b_id = b_id;
		this.b_title = b_title;
		this.b_text = b_text;
		this.b_image = b_image;
	}
	public int getB_id() {
		return b_id;
	}

	public void setB_id(int b_id) {
		this.b_id = b_id;
	}

	public String getB_title() {
		return b_title;
	}

	public void setB_title(String b_title) {
		this.b_title = b_title;
	}

	public String getB_text() {
		return b_text;
	}

	public void setB_text(String b_text) {
		this.b_text = b_text;
	}

	public String getB_writer() {
		return b_writer;
	}

	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}

	public String getB_date() {
		return b_date;
	}

	public void setB_date(String b_date) {
		this.b_date = b_date;
	}

	public int getB_cnt() {
		return b_cnt;
	}

	public void setB_cnt(int b_cnt) {
		this.b_cnt = b_cnt;
	}

	public String getB_image() {
		return b_image;
	}

	public void setB_image(String b_image) {
		this.b_image = b_image;
	}
	
	@Override
	public String toString() {
		return b_image+b_text+b_title+b_writer;
	}

}

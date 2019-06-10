package org.cmg.dto;

public class MemberVO {
	private int m_num;
	private String m_email;
	private String m_pw;
	private String auto;
	
	public int getM_num() { return m_num; }
	public void setM_num(int m_num) { this.m_num = m_num; }
	public String getM_email() { return m_email; }
	public void setM_email(String m_email) { this.m_email = m_email; }
	public String getM_pw() { return m_pw; }
	public void setM_pw(String m_pw) { this.m_pw = m_pw; }
	public String getAuto() { return auto; }
	public void setAuto(String auto) { this.auto = auto; }
	
	@Override
	public String toString() {
		return "access memberVO.....";
	}
}

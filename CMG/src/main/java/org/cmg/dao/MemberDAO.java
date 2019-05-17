package org.cmg.dao;

import javax.servlet.http.HttpSession;

import org.cmg.dto.MemberVO;

public interface MemberDAO {
	public void register(MemberVO memberVO) throws Exception;
	public String login(MemberVO memberVO) throws Exception;
}

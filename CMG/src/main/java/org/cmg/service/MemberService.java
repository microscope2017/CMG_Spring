package org.cmg.service;

import javax.servlet.http.HttpSession;

import org.cmg.dto.MemberVO;
import org.springframework.stereotype.Service;

@Service
public interface MemberService {
	public void register(MemberVO memberVO) throws Exception;
	public String login(MemberVO memberVO, HttpSession session) throws Exception;
}

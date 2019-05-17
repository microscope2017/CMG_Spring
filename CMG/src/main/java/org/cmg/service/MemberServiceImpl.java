package org.cmg.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.cmg.dao.MemberDAO;
import org.cmg.dto.MemberVO;
import org.springframework.stereotype.Service;
@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO memberDAO;
	@Override
	public void register(MemberVO memberVO) throws Exception {
		memberDAO.register(memberVO);
	}
	
	@Override
	public String login(MemberVO memberVO, HttpSession httpSession) throws Exception {
		String str = memberDAO.login(memberVO);
		return str;
	}
}

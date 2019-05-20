package org.cmg.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.cmg.dto.MemberVO;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;
@Repository
public class MemberDAOImpl implements MemberDAO{
	@Inject
	private SqlSession session;

	private static String namespace = "org.cmg.mapper.memberMapper";

	@Override
	public void register(MemberVO memberVO) throws Exception {
		session.insert(namespace+".register", memberVO);
	}

	@Override
	public String login(MemberVO memberVO) throws Exception {
		int b = session.selectOne(namespace+".isexist", memberVO);
		if(b==0) return "존재하지 않는 회원입니다.";//회원 존재여부
		
		MemberVO vo = session.selectOne(namespace+".login", memberVO);
		if(vo.getM_pw().equals(memberVO.getM_pw())) return "LoginSuccess";//입력한 회원정보 검사
		else return "비밀번호가 일치하지 않습니다.";
	}

}

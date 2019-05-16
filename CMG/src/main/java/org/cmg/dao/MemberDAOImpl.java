package org.cmg.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.cmg.dto.MemberVO;
import org.springframework.stereotype.Repository;
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
	public MemberVO login(String pw) throws Exception {
		return session.selectOne(namespace+".login",pw);
	}

}

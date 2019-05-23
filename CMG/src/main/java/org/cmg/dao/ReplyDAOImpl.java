package org.cmg.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.cmg.dto.BoardVO;
import org.cmg.dto.Pagenation;
import org.cmg.dto.ReplyVO;
import org.springframework.stereotype.Repository;
@Repository
public class ReplyDAOImpl implements ReplyDAO{
	@Inject
	private SqlSession session;

	private static String namespace = "org.cmg.mapper.replyMapper";
	
	@Override
	public void regist(ReplyVO vo) throws Exception {
		session.insert(namespace + ".regist", vo);
	}

	@Override
	public void remove(int r_id) throws Exception {
		session.delete(namespace + ".remove", r_id);
	}

	@Override
	public List<ReplyVO> show(int b_id) throws Exception {
		return session.selectList(namespace + ".show", b_id);
	}

	@Override
	public int count(ReplyVO vo) throws Exception {
		return session.selectOne(namespace + ".count", vo);
	}

}

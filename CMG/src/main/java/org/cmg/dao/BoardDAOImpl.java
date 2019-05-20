package org.cmg.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.cmg.dto.BoardVO;
import org.springframework.stereotype.Repository;
@Repository
public class BoardDAOImpl implements BoardDAO{
	@Inject
	private SqlSession session;

	private static String namespace = "org.cmg.mapper.boardMapper";

	@Override
	public List<BoardVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public BoardVO read(int b_id) throws Exception {
		return session.selectOne(namespace + ".read", b_id);
	}

	@Override
	public void cntup(int b_id) throws Exception {
		session.update(namespace + ".cntup", b_id);
	}

	@Override
	public void remove(int b_id) throws Exception {
		session.delete(namespace + ".remove", b_id);
	}

	@Override
	public void register(BoardVO vo) throws Exception {
		session.insert(namespace + ".register", vo);
	}

	@Override
	public void modify(BoardVO vo) throws Exception {
		session.update(namespace+".modify", vo);
	}

}

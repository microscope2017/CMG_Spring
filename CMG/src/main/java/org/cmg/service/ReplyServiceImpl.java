package org.cmg.service;

import java.util.List;

import javax.inject.Inject;

import org.cmg.dao.BoardDAO;
import org.cmg.dao.ReplyDAO;
import org.cmg.dto.BoardVO;
import org.cmg.dto.Pagenation;
import org.cmg.dto.ReplyVO;
import org.springframework.stereotype.Service;
@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDAO dao;

	@Override
	public void regist(ReplyVO vo) throws Exception {
		dao.regist(vo);
	}

	@Override
	public void remove(int r_id) throws Exception {
		dao.remove(r_id);
	}

	@Override
	public List<ReplyVO> show(int b_id) throws Exception {
		return dao.show(b_id);
	}

	@Override
	public int count(ReplyVO vo) throws Exception {
		return dao.count(vo);
	}

}

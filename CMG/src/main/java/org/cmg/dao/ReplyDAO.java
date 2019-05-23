package org.cmg.dao;

import java.util.List;

import org.cmg.dto.BoardVO;
import org.cmg.dto.Pagenation;
import org.cmg.dto.ReplyVO;

public interface ReplyDAO {
	public void regist(ReplyVO vo) throws Exception;
	public void remove(ReplyVO vo) throws Exception;
	public List<ReplyVO> show(int b_id) throws Exception;
	public int count(ReplyVO vo) throws Exception;
}

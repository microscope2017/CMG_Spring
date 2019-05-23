package org.cmg.dao;

import java.util.List;

import org.cmg.dto.BoardVO;
import org.cmg.dto.Pagenation;
import org.cmg.dto.ReplyVO;

public interface ReplyDAO {
	public void regist(ReplyVO vo) throws Exception;
	public void remove(int r_id) throws Exception;
	public List<ReplyVO> show(Pagenation p) throws Exception;
	public int count(int b_id) throws Exception;
}

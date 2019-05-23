package org.cmg.service;

import java.util.List;

import org.cmg.dto.Pagenation;
import org.cmg.dto.ReplyVO;
import org.springframework.stereotype.Service;

@Service
public interface ReplyService {
	public void regist(ReplyVO vo) throws Exception;
	public void remove(int r_id) throws Exception;
	public List<ReplyVO> show(Pagenation p) throws Exception;
	public int count(int b_id) throws Exception;
}

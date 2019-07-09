package org.cmg.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.cmg.dto.BoardVO;
import org.cmg.dto.Pagenation;
import org.springframework.stereotype.Service;

@Service
public interface BoardService {
	public List<BoardVO> listAll(Pagenation page) throws Exception;
	public BoardVO read(int b_id) throws Exception;
	public void cntup(int b_id) throws Exception;
	public void remove(int b_id, HttpServletRequest req) throws Exception;
	public void register(BoardVO vo, HttpServletRequest req) throws Exception;
	public void modify(BoardVO vo) throws Exception;
	public int count(String search) throws Exception;
}

package org.cmg.dao;

import java.util.List;

import org.cmg.dto.BoardVO;
import org.cmg.dto.Pagenation;

public interface BoardDAO {
	public List<BoardVO> listAll(Pagenation page) throws Exception;
	public BoardVO read(int b_id) throws Exception;
	public void cntup(int b_id) throws Exception;
	public void remove(int b_id) throws Exception;
	public void register(BoardVO vo) throws Exception;
	public void modify(BoardVO vo) throws Exception;
	public int count(String search) throws Exception;
}

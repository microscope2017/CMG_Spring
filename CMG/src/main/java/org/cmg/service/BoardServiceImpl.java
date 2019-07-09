package org.cmg.service;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.cmg.dao.BoardDAO;
import org.cmg.dto.BoardVO;
import org.cmg.dto.Pagenation;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO boardDAO;

	@Override
	public List<BoardVO> listAll(Pagenation page) throws Exception {
		return boardDAO.listAll(page);
	}

	@Override
	public BoardVO read(int b_id) throws Exception {
		return boardDAO.read(b_id);
	}

	@Override
	public void cntup(int b_id) throws Exception {
		boardDAO.cntup(b_id);
	}

	@Override
	public void remove(int b_id) throws Exception {
		boardDAO.remove(b_id);
	}

	@Override
	public void register(BoardVO vo, HttpServletRequest req) throws Exception {
		boardDAO.register(vo);
	}

	@Override
	public void modify(BoardVO vo) throws Exception {
		boardDAO.modify(vo);
	}

	@Override
	public int count(String search) throws Exception {
		return boardDAO.count(search);
	}
}

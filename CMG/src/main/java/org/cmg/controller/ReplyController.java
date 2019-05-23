package org.cmg.controller;

import java.util.List;

import javax.inject.Inject;

import org.cmg.dto.BoardVO;
import org.cmg.dto.Pagenation;
import org.cmg.dto.ReplyVO;
import org.cmg.service.BoardService;
import org.cmg.service.ReplyService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/reply")
public class ReplyController {
	@Inject
	private ReplyService service;
	
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public void regist (@RequestBody ReplyVO vo) throws Exception{
		service.regist(vo);
	}
	
	@RequestMapping(value = "/remove", method = RequestMethod.DELETE)
	public String remove(int r_id) throws Exception{
		service.remove(r_id);
		return "1";
	}
	
	@RequestMapping(value = "/page", method = RequestMethod.GET)
	public Pagenation page (int b_id, int page) throws Exception{
		int pagecnt = service.count(b_id);
		if(pagecnt<10) pagecnt = 1;
		else pagecnt = pagecnt%10 == 0?pagecnt/10:pagecnt/10+1;
		Pagenation p = new Pagenation(page, pagecnt, b_id);
		return p;
	}
	
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public ResponseEntity<List<ReplyVO>> show (int b_id, int page) throws Exception{
		ResponseEntity<List<ReplyVO>> entity = null;
		Pagenation p = new Pagenation(page, 0, b_id);
		entity = new ResponseEntity<>(service.show(p), HttpStatus.OK);
		return entity;
	}

}

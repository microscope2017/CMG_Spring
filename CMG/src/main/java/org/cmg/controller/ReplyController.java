package org.cmg.controller;

import java.util.List;

import javax.inject.Inject;

import org.cmg.dto.BoardVO;
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

//	@RequestMapping(value = "/regist", method = RequestMethod.GET)
//	public ResponseEntity<String> regist (ReplyVO vo) throws Exception{
//		
//		return null;
//	}
	
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public void regist (@RequestBody ReplyVO vo) throws Exception{
		service.regist(vo);
	}
	
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public ResponseEntity<List<ReplyVO>> show (int b_id) throws Exception{
		ResponseEntity<List<ReplyVO>> entity = null;
		entity = new ResponseEntity<>(service.show(b_id), HttpStatus.OK);
		return entity;
	}

}

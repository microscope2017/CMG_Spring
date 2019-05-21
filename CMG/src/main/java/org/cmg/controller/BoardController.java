package org.cmg.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.cmg.dto.BoardVO;
import org.cmg.dto.Pagenation;
import org.cmg.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/board")
public class BoardController {	
	@Inject
	private BoardService service;
	
	@RequestMapping(value = "/boardlist", method = RequestMethod.GET)
	public void boardlist(@RequestParam("page") int page, Model model) throws Exception {
		int pagecnt = service.count();
		Pagenation p = new Pagenation(page, pagecnt%5 == 0?pagecnt/5:pagecnt/5+1);
		
		model.addAttribute("list", service.listAll(p));
		model.addAttribute("pagenation", p);
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void readGET(@RequestParam("b_id") int b_id, Model model) throws Exception {
		service.cntup(b_id);
		model.addAttribute("boardVO", service.read(b_id));
	}
	
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(@RequestParam("b_id") int b_id) throws Exception{
		service.remove(b_id);
		return "redirect:/board/boardlist?page=1";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET() throws Exception{ }
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(BoardVO vo, HttpSession session) throws Exception{
		service.register(vo);
		return "redirect:/board/boardlist?page=1";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyGET(@RequestParam("b_id") int b_id, Model model) throws Exception {
		model.addAttribute("boardVO", service.read(b_id));
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(BoardVO vo, HttpSession session) throws Exception{
		service.modify(vo);
		return "redirect:/board/read?b_id="+vo.getB_id();
	}
}

package org.cmg.controller;

import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.cmg.dto.BoardVO;
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
	public void boardlist(Locale locale, Model model) throws Exception {
		model.addAttribute("list", service.listAll());
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void readGET(@RequestParam("b_id") int b_id, Model model) throws Exception {
		service.cntup(b_id);
		model.addAttribute("boardVO", service.read(b_id));
	}
	
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(@RequestParam("b_id") int b_id) throws Exception{
		service.remove(b_id);
		return "redirect:/board/boardlist";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET() throws Exception{ }
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(BoardVO vo, HttpSession session) throws Exception{
		service.register(vo);
		return "redirect:/board/boardlist";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyGET(@RequestParam("b_id") int b_id, Model model) throws Exception {
		model.addAttribute("boardVO", service.read(b_id));
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(BoardVO vo, HttpSession session) throws Exception{
		service.modify(vo);
		return "redirect:/board/boardlist";
	}
}

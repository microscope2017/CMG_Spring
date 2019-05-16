package org.cmg.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.cmg.dto.MemberVO;
import org.cmg.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class HomeController {
	@Inject
	private MemberService service;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("index........");
		return "/index";
	}
	
	@RequestMapping(value = "/resume", method = RequestMethod.GET)
	public void resume(Locale locale, Model model) {
	}
	
	@RequestMapping(value = "/introduce", method = RequestMethod.GET)
	public void introduce(Locale locale, Model model) {
	}
	
	@RequestMapping(value = "/project", method = RequestMethod.GET)
	public void project(Locale locale, Model model) {
	}
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public void board(Locale locale, Model model) {
	}
	
	//회원가입
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public void signupGET(Locale locale, Model model) {}
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signupPOST(MemberVO vo, RedirectAttributes rttr) throws Exception{
		service.register(vo);
		rttr.addFlashAttribute("msg", "REGISTERED");
		return "redirect:/";
	}
	
	@RequestMapping(value="/signin", method = RequestMethod.POST)
	public String signin(Locale locale, Model model) throws Exception{
		
		return "redirect:/";
	}
}

package org.cmg.controller;

import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.cmg.dto.MemberVO;
import org.cmg.dto.ReplyVO;
import org.cmg.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@RequestMapping("/login")
public class LoginController {
	@Inject
	private MemberService service;
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	//�쉶�썝媛��엯
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public void signupGET(Locale locale, Model model) { }
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signupPOST(MemberVO vo, RedirectAttributes rttr) throws Exception{
		service.register(vo);
		rttr.addFlashAttribute("msg", "REGISTERED");
		return "redirect:/login/signin";
	}
	
	@RequestMapping(value="/signin", method = RequestMethod.GET)
	public void signinGET() throws Exception{	}
	
	@RequestMapping(value="/signin", method = RequestMethod.POST)
	public String signinPOST(MemberVO memberVO, HttpSession session, 
			RedirectAttributes rttr, HttpServletResponse response, HttpServletRequest request) throws Exception{
		String str = service.login(memberVO, session);
		rttr.addFlashAttribute("msg", str);
		if(str.equals("LoginSuccess")) {
			session.setAttribute("userID", memberVO.getM_email());
			if(!memberVO.getAuto().equals("notauto")) {
				Cookie c = new Cookie("autoLoginID", memberVO.getM_email());
				c.setPath("/");
				c.setMaxAge(60*60);		
				response.addCookie(c);
			}
			return "redirect:/";
		}else return "redirect:/login/signin";
		
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception{
		session.invalidate();
		Cookie c = new Cookie("autoLoginID", null);
		c.setPath("/");
		response.addCookie(c);
		return "redirect:/";
	}
}

package org.cmg.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.cmg.dto.MemberVO;
import org.cmg.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
/*
 Server OS : Windows10

Language : JAVA 1.8

Framework : Spring 4.3.7

WAS Server : Tomcat 8.5

build tool : maven 4.0.0

DB : Oracle 11g

ORM : mybatis 3.4.6
 */

@Controller
public class HomeController {
	@Inject
	private MemberService service;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String GEThome(HttpSession session, Model model) {
		logger.info("index GET........");
		return "/home";
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
}

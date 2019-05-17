package org.cmg.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/board")
public class BoardController {	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public void board(Locale locale, Model model) {
	}
}

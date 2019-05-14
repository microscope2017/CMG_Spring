package org.cmg.springproj;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
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
}

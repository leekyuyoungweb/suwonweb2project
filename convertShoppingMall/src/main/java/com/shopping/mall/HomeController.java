package com.shopping.mall;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model) {		
		ModelAndView mav = new ModelAndView("home/welcome");
		return mav; 
				
	}
	/*
	 * @RequestMapping(value = "/", method = RequestMethod.GET) public String
	 * home2(Locale locale, Model model) {
	 * 
	 * return "home";
	 * 
	 * }
	 */
}

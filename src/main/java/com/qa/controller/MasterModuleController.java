package com.qa.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qa.service.UserService;
import com.qa.to.User;

@Controller


public class MasterModuleController {
	
	@RequestMapping("/masterModule")
	public ModelAndView getmasterModulePage() {
		
		ModelAndView modelAndView = new ModelAndView("masterModule");
		
		return modelAndView;
	}
	
	@RequestMapping("/masterUser")
	public ModelAndView getMasterUser() throws Exception {
		
		ModelAndView modelAndView = new ModelAndView("masterUserPage");
		
		UserService userservice = new UserService();
		
		List<User> users = userservice.getAllUsers();
		
		modelAndView.addObject("allUsers", users);
				
				return modelAndView;
	}

}

package com.qa.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.qa.db.DBUtils;
import com.qa.repository.UserRepository;
import com.qa.service.UserService;
import com.qa.to.User;

@Controller
public class UserController {
	
	@RequestMapping("/register")
	public String register(String username, String password, String firstName, String lastName, String email) throws Exception {
		
      UserRepository userRepository = new UserRepository();
      
      User user = new User(username, password, firstName, lastName, email);
      
      userRepository.saveUser(user);
     // userRepository.save(username, password, firstName, lastName, email);
		
		return "index";
		
		}
	
	@RequestMapping("/login")
	public ModelAndView login(String username , String password) throws Exception {
		
		if(username.equals("") || password.equals("")) {
			ModelAndView modelAndView = new ModelAndView("index");
			modelAndView.addObject("loginErrorMessage","Some fields are empty, please check!");
			return modelAndView;
			
		}
		
		UserService userService = new UserService();
		
		User user = userService.validateUser(username, password);
		
		if(user != null) {
			
		ModelAndView modelAndView = new ModelAndView("welcomePage");
		modelAndView.addObject("userData", user);
		return modelAndView;
		}
		else {
			
			ModelAndView modelAndView = new ModelAndView("index");
			modelAndView.addObject("loginErrorMessage","Incorrect credentials, prease try again");
			return modelAndView;
		}
		
//		if(validateloginStatus == true) {
		
//		
//			
//			
//			return modelAndView;
//			
//		}
//		else {
//			
//			ModelAndView modelAndView = new ModelAndView("index");
//			modelAndView.addObject("loginErrorMessage","Incorrect credentials, prease try again");
//			return modelAndView;
//		}
			
	}

	
}

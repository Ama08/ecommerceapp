package com.qa.service;

import java.util.List;

import com.qa.repository.UserRepository;
import com.qa.to.User;

public class UserService {
	
	public User validateUser(String username, String password) throws Exception {
		
UserRepository userRepository = new UserRepository();
		
		User user  = userRepository.validateUserCredentials(username, password);
		
		return  user;
	}
	
	public List<User> getAllUsers() throws Exception{
		UserRepository userDao = new UserRepository();
		
	List<User> users = userDao.getUser();
	
	return users;
	}

}

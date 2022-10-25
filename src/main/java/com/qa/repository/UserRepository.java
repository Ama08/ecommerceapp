package com.qa.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.qa.db.DBUtils;
import com.qa.to.User;

public class UserRepository {
	
	public User validateUserCredentials(String username, String password) throws Exception {
		
		//boolean loginStatus = false;
		
		User user = null;
		Connection conn = DBUtils.getConnection();
		
		PreparedStatement pstmt = conn.prepareStatement("select * from user where username = ? and password = ?");
		
		pstmt.setString(1, username);
		pstmt.setString(2, password);
		
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			username = rs.getString(1);
			password = rs.getString(2);
			String fname = rs.getString(3);
			String lname = rs.getString(4);
			String emailAd = rs.getString(5);
			
			user = new User(username, password, fname, lname, emailAd);
					
					
		}
		
		return user;
		
		}
	
	public void saveUser(User user) throws Exception {
		
		Connection conn= DBUtils.getConnection();
	 
		PreparedStatement pstmt = conn.prepareStatement("Insert into user values(?,?,?,?,?)");
		
		pstmt.setString(1, user.getUsername());
		pstmt.setString(2, user.getPassword());
		pstmt.setString(3, user.getFirstName());
		pstmt.setString(4, user.getLastName());
		pstmt.setString(5, user.getEmail());
		
		pstmt.execute();

	}
	
	public List<User> getUser() throws Exception{
		
		List<User> users = new ArrayList<User>();
	
		
         Connection conn = DBUtils.getConnection();
		
		PreparedStatement pstmt = conn.prepareStatement("select * from user where username = ? and password = ?");
		
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String username = rs.getString(1);
			String password = rs.getString(2);
			String fname = rs.getString(3);
			String lname = rs.getString(4);
			String emailAd = rs.getString(5);
			
			User user = new User(username, password, fname, lname, emailAd);
	        users.add(user);
		}
		return users;
}
	
}

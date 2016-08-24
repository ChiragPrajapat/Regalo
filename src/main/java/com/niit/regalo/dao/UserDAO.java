package com.niit.regalo.dao;
import java.util.List;

import com.niit.regalo.model.User;
public interface UserDAO {
	
		public void addUser(User u);
		public User getUserByUserId(int id);
		 public List<User> getAllUsers();
		 public User getUserByUsername (String username);
	}

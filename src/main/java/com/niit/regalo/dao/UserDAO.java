package com.niit.regalo.dao;

import java.util.List;

import com.niit.regalo.model.User;

public interface UserDAO {

		public void addUser(User p);
		public List<User> listUsers();
		public void removeUser(int user_id);
	}

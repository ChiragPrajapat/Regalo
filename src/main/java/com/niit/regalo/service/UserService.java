package com.niit.regalo.service;

import java.util.List;

import com.niit.regalo.model.User;

public interface UserService {

		public void addUser(User p);
		public List<User> listUsers();
		public void removeUser(int user_id);
	}

	
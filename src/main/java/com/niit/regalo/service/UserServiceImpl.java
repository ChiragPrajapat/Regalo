package com.niit.regalo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.regalo.dao.UserDAO;
import com.niit.regalo.model.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDao;

	/*public void setUserDAO(User user) {
		this.userDao = user;
	}*/

	@Transactional
	public void addUser(User p) {
		this.userDao.addUser(p);
	}

		@Transactional
	public List<User> listUsers() {
		return this.userDao.listUsers();
	}

	
	@Transactional
	public void removeUser(int user_id) {
		this.userDao.removeUser(user_id);
	}
}

package com.niit.regalo.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.niit.regalo.model.User;

@Repository
public class UserDAOImpl implements UserDAO {

	// private static final Logger logger =
	// LoggerFactory.getLogger(UserDAOImpl.class);
	@Autowired
	private SessionFactory sessionFactory;

	/*
	 * public void setSessionFactory(SessionFactory sf){ this.sessionFactory =
	 * sf; }
	 */

	@Transactional
	public void addUser(User p) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(p);
		tx.commit();
		session.close();
		// logger.info("User saved successfully, User Details="+p);
	}


	@SuppressWarnings("unchecked")
	public List<User> listUser() {
		Session session = sessionFactory.openSession();

		@SuppressWarnings("deprecation")
		List<User> userList = session.createQuery("from User").list();
		session.close();
		return userList;
	}


	@Transactional
	public void removeUser(int id) {
		Session session = this.sessionFactory.openSession();
		User p = (User) session.load(User.class, new Integer(id));
		Transaction tx = session.beginTransaction();
		if (null != p) {
			session.delete(p);
		}
		// logger.info("User deleted successfully, user details="+p);
		tx.commit();
		session.close();
	}

	@Override
	public List<User> listUsers() {
		Session session = sessionFactory.openSession();

		@SuppressWarnings("deprecation")
		List<User> userList = session.createQuery("from User").list();
		session.close();
		return userList;
	}


			
		}

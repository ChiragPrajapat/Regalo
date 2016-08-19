package com.niit.regalo.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.niit.regalo.model.User;
import com.niit.regalo.model.UserRoles;

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
	public void addUser(User u) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		UserRoles ur = new UserRoles();
		System.out.println("ur object created");
		ur.setAuthority("ROLE_USER");
		ur.setUser_id(u.getUser_id());
		session.save(u);
		tx.commit();
		session.close();
		// logger.info("User saved successfully, User Details="+p);
	}


	

			
		}

package com.niit.regalo.dao;


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

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public void addUser(User u) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		UserRoles ur = new UserRoles();
		System.out.println("ur object created");
		session.save(u);
		ur.setAuthority("ROLE_USER");
		ur.setUserid(u.getUserid());
		session.save(ur);
		tx.commit();
		session.close();
		// logger.info("User saved successfully, User Details="+p);
	}		
		}

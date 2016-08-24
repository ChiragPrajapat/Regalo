package com.niit.regalo.dao;


import java.util.List;

import org.hibernate.Query;
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
		ur.setUserId(u.getUserId());
		session.save(ur);
//		Cart c = new Cart();
//		c.setGrandTotal(0);
//		c.setUsersDetail(u);
//		session.save(c);
//		u.setCart(c);
//		session.update(u);
		tx.commit();
		session.close();
	}
		// logger.info("User saved successfully, User Details="+p);
//		
//		@Transactional
//		public void addCustomer(Customer p) {
//			Session session = sessionFactory.openSession();
//			Transaction tx = session.beginTransaction();
//			session.save(p);		
//			UserRoles ur = new UserRoles();
//			ur.setAuthority("ROLE_USER");
//			ur.setCustId(p.getCustId());
//			session.save(ur);
//			Cart c = new Cart();
//			c.setGrandTotal(0);
//			c.setUsersDetail(p);
//			session.save(c);
//			p.setCart(c);
//			session.update(p);
//			tx.commit();
//			session.close();
//		}
		public User getUserByUserId(int id)
		{
			Session session = sessionFactory.openSession();		
//			System.out.print(id);
			User u = (User) session.load(User.class, new Integer(id));
			session.close();
			return u;
		}
		 public List<User> getAllUsers() {
		        Session session = sessionFactory.openSession();
		        Query query = session.createQuery("from User");
		        @SuppressWarnings("unchecked")
				List<User> usersDetail = query.list();

		        return usersDetail;
		    }

		    public User getUserByUsername (String username) {
		        Session session = sessionFactory.openSession();
		        
		        Query query = session.createQuery("from User where username = ?");
		        query.setString(0, username);

		        return (User) query.uniqueResult();
		    }


	}		


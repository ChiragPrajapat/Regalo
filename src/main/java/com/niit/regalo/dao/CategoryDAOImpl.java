package com.niit.regalo.dao;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.niit.regalo.model.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

	// private static final Logger logger =
	// LoggerFactory.getLogger(CategoryDAOImpl.class);
	@Autowired
	private SessionFactory sessionFactory;

	/*
	 * public void setSessionFactory(SessionFactory sf){ this.sessionFactory =
	 * sf; }
	 */

	@Transactional
	public void addCategory(Category c) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(c);
		tx.commit();
		session.close();
		// logger.info("Category saved successfully, Category Details="+p);
	}


	@SuppressWarnings("unchecked")
	public List<Category> listCategory() {
		Session session = sessionFactory.openSession();

		@SuppressWarnings("deprecation")
		List<Category> categoryList = session.createQuery("from Category").list();
		session.close();
		return categoryList;
	}


	@Transactional
	public void removeCategory(int id) {
		Session session = this.sessionFactory.openSession();
		Category c = (Category) session.load(Category.class, new Integer(id));
		Transaction tx = session.beginTransaction();
		if (null != c) {
			session.delete(c);
		}
		// logger.info("Category deleted successfully, category details="+p);
		tx.commit();
		session.close();
	}


	
}
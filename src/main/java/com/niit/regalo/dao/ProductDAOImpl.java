package com.niit.regalo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.regalo.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {

	// private static final Logger logger =
	// LoggerFactory.getLogger(ProductDAOImpl.class);
	@Autowired
	private SessionFactory sessionFactory;

	/*
	 * public void setSessionFactory(SessionFactory sf){ this.sessionFactory =
	 * sf; }
	 */

	@Transactional
	public void addProduct(Product p) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(p);
		tx.commit();
		session.close();
		// logger.info("Product saved successfully, Product Details="+p);
	}

	@Transactional
	public void updateProduct(Product p) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(p);
		tx.commit();
		session.close();
		// logger.info("Product updated successfully, Product Details="+p);
	}

	@SuppressWarnings("unchecked")
	public List<Product> listProduct() {
		Session session = sessionFactory.openSession();

		@SuppressWarnings("deprecation")
		List<Product> productList = session.createQuery("from Product").list();
		session.close();
		return productList;
	}

	public Product getProductByProduct_Id(int id) {
		Session session = this.sessionFactory.openSession();
		Product p = (Product) session.load(Product.class, new Integer(id));
		// logger.info("Product loaded successfully, Product details="+p);
		return p;
	}

	@Transactional
	public void removeProduct(int id) {
		Session session = this.sessionFactory.openSession();
		Product p = (Product) session.load(Product.class, new Integer(id));
		Transaction tx = session.beginTransaction();
		if (null != p) {
			session.delete(p);
		}
		// logger.info("Product deleted successfully, product details="+p);
		tx.commit();
		session.close();
	}

	@Override
	public List<Product> listProducts() {
		Session session = sessionFactory.openSession();

		@SuppressWarnings("deprecation")
		List<Product> productList = session.createQuery("from Product").list();
		session.close();
		return productList;
	}

}

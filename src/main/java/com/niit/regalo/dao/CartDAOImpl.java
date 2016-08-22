package com.niit.regalo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.regalo.model.Cart;

@Repository
public class CartDAOImpl implements CartDAO {

	// private static final Logger logger =
	// LoggerFactory.getLogger(ProductDAOImpl.class);
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public void addToCart(Cart c) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(c);
		tx.commit();
		session.close();
		// logger.info("Product saved successfully, Product Details="+p);
	}

	@Transactional
	public List<Cart> listCart() {
		Session session = sessionFactory.openSession();

		@SuppressWarnings("deprecation")
		List<Cart> cartList = session.createQuery("from Cart").list();
		session.close();
		return cartList;
	}

	@Transactional
	public void delete(int Id) {
		Session session = this.sessionFactory.openSession();
		Cart c = session.load(Cart.class, new Integer(Id));
		Transaction tx = session.beginTransaction();
		if (null != c) {
			session.delete(c);
		}
		// logger.info("Product deleted successfully, product details="+p);
		tx.commit();
		session.close();
	}

	@Transactional
	public Cart FindById(int cartId) {
		Session session = this.sessionFactory.openSession();
		Cart c = (Cart) session.load(Cart.class, new Integer(cartId));
		// logger.info("Product loaded successfully, Product details="+p);
		return c;
	}
}
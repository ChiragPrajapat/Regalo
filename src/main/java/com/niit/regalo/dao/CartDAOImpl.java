package com.niit.regalo.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.regalo.model.Cart;
import com.niit.regalo.model.Product;
@Repository
public class CartDAOImpl implements CartDAO {
	 @Autowired
	    private SessionFactory sessionFactory;

	@Transactional
	public void addToCart(Cart c) {
			Session session = this.sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			int productId =c.getProductId();
			Product product = (Product)session.get(Product.class,productId);
			double price = product.getProduct_price();
			c.setPrice(price);
			c.setProductname(product.getProduct_name());
			c.setQuantity(1);
			session.saveOrUpdate(c);
			tx.commit();
			session.close();
			System.out.println("item added to cart");
			}

	@Transactional
	
	public String updateCart(Cart c) {
		System.out.println("updating cart");
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Criteria cr = session.createCriteria(Cart.class);
//		cr.add(Restrictions.eq("userId", c.getUserId()));
		List<Cart>cartUser = cr.list();
		System.out.println("cartUser");
		for(Cart user: cartUser)
		{
			user.setAddress(c.getAddress());
			user.setContact(c.getContact());
			session.update(c);
		}
		session.flush();
		tx.commit();
		session.close();
	return "success";
	}
	@Transactional
	public void remove(int cartId) {
		System.out.println("call cart delete");
		Session session = this.sessionFactory.openSession();
	
		Transaction tx = session.beginTransaction();
		Cart c = session.load(Cart.class,cartId);
		if (null != c) {
			session.delete(c);
		}
		// logger.info("Category deleted successfully, category details="+p);
		tx.commit();
		session.close();
		System.out.println("delete from cart");

	}

	@Transactional
	public List<Cart> Cartlist() {
		System.out.println("call cart list");
		Session session = sessionFactory.openSession();
		Criteria criteria =session.createCriteria(Cart.class) ;
		List<Cart> cartList = criteria.list();
		session.close();
		System.out.println("return cartList");
		return cartList;
	}

	@Transactional
	public Cart getById(int cartId) {
		Session session = this.sessionFactory.openSession();
		Cart c = (Cart) session.get(Cart.class,cartId);
		if(c!=null)
			return c;
			else
			return null;
	}
	}

	   
	    

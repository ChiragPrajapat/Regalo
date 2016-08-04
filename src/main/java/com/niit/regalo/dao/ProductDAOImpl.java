package com.niit.regalo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.regalo.model.Product;

@Repository
	public class ProductDAOImpl implements ProductDAO {
		
//		private static final Logger logger = LoggerFactory.getLogger(ProductDAOImpl.class);
		@Autowired 
		private SessionFactory sessionFactory;
		
		public void setSessionFactory(SessionFactory sf){
			this.sessionFactory = sf;
		}

		@Override
		public void addProduct(Product p) {
			Session session = this.sessionFactory.openSession();
			session.persist(p);
//			logger.info("Product saved successfully, Product Details="+p);
		}

		@Override
		public void updateProduct(Product p) {
			Session session = this.sessionFactory.getCurrentSession();
			session.update(p);
//			logger.info("Product updated successfully, Product Details="+p);
		}

		@SuppressWarnings("unchecked")
		@Override
		public List<Product> listProducts() {
			Session session = this.sessionFactory.openSession();
			List<Product> productsList = session.createQuery("from Product").list();
//			for(Product p : productsList){
////				logger.info("Product List::"+p);
//			}			
			return productsList;
		}

		@Override
		public Product getProductById(int id) {
			Session session = this.sessionFactory.getCurrentSession();		
			Product p = (Product) session.load(Product.class, new Integer(id));
//			logger.info("Product loaded successfully, Product details="+p);
			return p;
		}

		@Override
		public void removeProduct(int id) {
			Session session = this.sessionFactory.getCurrentSession();
			Product p = (Product) session.load(Product.class, new Integer(id));
			if(null != p){
				session.delete(p);
			}
//			logger.info("Product deleted successfully, product details="+p);
		}

	}

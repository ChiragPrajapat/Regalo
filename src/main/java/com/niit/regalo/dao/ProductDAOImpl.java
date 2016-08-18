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

	@Transactional
	public List<Product> listProducts() {
		Session session = sessionFactory.openSession();

		@SuppressWarnings("deprecation")
		List<Product> productList = session.createQuery("from Product").list();
		session.close();
		return productList;
	}
	
	public void storeFile(Product p) 	{
		 
		MultipartFile file= p.getFile();
	
		if (!file.isEmpty()) {
			
		try{
		byte[] bytes =file.getBytes();
		System.out.println(file.getOriginalFilename());
		
		
		File serverFile = new File("E:/DT/Demo/Regalo/"+p.getProduct_category()+"/"+p.getImage());
		serverFile.createNewFile();
		BufferedOutputStream stream = new BufferedOutputStream(
				new FileOutputStream(serverFile));
		stream.write(bytes);
		stream.close();
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
			
	}	
		}
}
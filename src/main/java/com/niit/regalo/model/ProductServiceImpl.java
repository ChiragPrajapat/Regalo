package com.niit.regalo.model;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.regalo.dao.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService {
	
	private ProductDAO productDao;

	/*public void setProductDAO(Product product) {
		this.productDao = product;*/
	}

	@Transactional
	public void addProduct(Product p) {
		this.productDao.addProduct(p);
	}

	
	@Transactional
	public void updateProduct(Product p) {
		this.productDao.updateProduct(p);
	}

		@Transactional
	public List<Product> listProducts() {
		return this.productDao.listProducts();
	}
	@Transactional
	public Product getProductById(String id) {
		return this.productDao.getProductById(id);
	}

	@Transactional
	public void removeProduct(String id) {
		this.productDao.removeProduct(id);
	}


}

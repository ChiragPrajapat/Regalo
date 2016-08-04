package com.niit.regalo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.regalo.dao.ProductDAO;
import com.niit.regalo.model.Product;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDAO productDao;

	/*public void setProductDAO(Product product) {
		this.productDao = product;
	}*/

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
	public Product getProductById(int id) {
		return this.productDao.getProductById(id);
	}

	@Transactional
	public void removeProduct(int id) {
		this.productDao.removeProduct(id);
	}


	@Override
	public Product getProductByProduct_Id(String product_id) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void removeProduct(String product_id) {
		// TODO Auto-generated method stub
		
	}


}

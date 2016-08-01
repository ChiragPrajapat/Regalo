package com.niit.regalo.dao;

import java.util.List;

import com.niit.regalo.model.Product;

public interface ProductDAO {

		public void addProduct(Product p);
		public void updateProduct(Product p);
		public List<Product> listProducts();
		public Product getProductById(String id);
		public void removeProduct(String id);
	}

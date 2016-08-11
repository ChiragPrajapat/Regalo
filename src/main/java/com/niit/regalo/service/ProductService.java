package com.niit.regalo.service;

import java.util.List;

import com.niit.regalo.model.Product;

public interface ProductService {

		public void addProduct(Product p);
		public void updateProduct(Product p);
		public List<Product> listProducts();
		public Product getProductByProduct_Id(int product_id);
		public void removeProduct(int product_id);
		public static void storeFile(Product p) {
			// TODO Auto-generated method stub
			
		}
	}

	
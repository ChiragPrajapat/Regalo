package com.niit.regalo.dao;

import java.util.List;

import com.niit.regalo.model.Cart;

public interface CartDAO {

		public void addToCart(Cart c);
		public List<Cart> listCart();
		public void delete(int Id);
		public Cart FindById(int cartId);
		
	}

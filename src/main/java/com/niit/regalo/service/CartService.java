package com.niit.regalo.service;

import java.util.List;

import com.niit.regalo.model.Cart;

public interface CartService {

	public void addToCart(Cart c);
	public List<Cart> listCart();
	public void delete(int Id);
	public Cart FindById(int cartId);
			
		}
	

	
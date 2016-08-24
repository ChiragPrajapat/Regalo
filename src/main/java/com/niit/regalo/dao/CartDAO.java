package com.niit.regalo.dao;

import java.util.List;

import com.niit.regalo.model.Cart;
import com.niit.regalo.model.Product;

public interface CartDAO {

	public void addToCart(Cart c);
	public String updateCart(Cart c);
	public void remove(int cartId);
	public List<Cart> Cartlist();
	public Cart getById(int cartId);
}

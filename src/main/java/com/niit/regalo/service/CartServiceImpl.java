package com.niit.regalo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.regalo.dao.CartDAO;
import com.niit.regalo.model.Cart;

@Service
@Transactional
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDAO cartDao;



	@Transactional
	public void addToCart(Cart c) {
		this.cartDao.addToCart(c);
	}


	@Transactional
	public List<Cart> listCart() {
		return this.cartDao.listCart();
	}

	@Transactional
	public void delete(int Id) {
		this.cartDao.delete(Id);	}


	@Transactional
	public Cart FindById(int cartId) {
		return this.cartDao.FindById(cartId);
	}

}

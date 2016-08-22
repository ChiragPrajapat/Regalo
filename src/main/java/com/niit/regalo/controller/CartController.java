package com.niit.regalo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.regalo.service.CartService;

public class CartController {
@Autowired 
CartService cartservice;

@RequestMapping(value = "/cart", method = RequestMethod.GET)
public String CartPage() {
	System.out.println("coming to controller and return cart");
	return "Cart";
}




}

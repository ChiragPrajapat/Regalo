package com.niit.regalo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.regalo.dao.CartDAO;
import com.niit.regalo.model.Cart;

@Controller
public class CartController {

	@Autowired
	CartDAO cartDAO;
	
	public Cart initCart()
	{
		return new Cart();
	}

	@RequestMapping(value="/addtocart/{product_id}",method=RequestMethod.POST)
	public ModelAndView addToCart(@ModelAttribute Cart c,@PathVariable("product_id") int productId)
	{
		System.out.println("Adding to cart");
		c.setProductId(productId);
		cartDAO.addToCart(c);
 	 	List<Cart> cartList = cartDAO.Cartlist();
		ModelAndView model = new ModelAndView("/cart/cart");
 		model.addObject("cartList",cartList);
		model.addObject("cartId",c.getCartId());
		return model;
	}

	@RequestMapping(value="/viewcart")
	public ModelAndView viewCart(@ModelAttribute Cart c)
	{
		List<Cart> cartList = cartDAO.Cartlist();
		ModelAndView model = new ModelAndView("/cart/cart");
 		model.addObject("cartList",cartList);
		model.addObject("cartId",c.getCartId());
		return model;
	}
	
	@RequestMapping(value={"/collectbillinginfo/{cartId}"})
	public String collectBilling(@PathVariable("cartId") int cartId, @ModelAttribute("cart") Cart c)
	{
		Cart mycart = cartDAO.getById(cartId); 
		System.out.println(mycart + " : "  + cartId);
		return "redirect:/cart?cartId="+cartId;
	}
	
	@RequestMapping(value="/cartdelete/{cartId}", method = RequestMethod.GET)
	public String deleteCart(@PathVariable("cartId") int id, @ModelAttribute("cart")Cart c)
	{
		System.out.println("Deleting Cart......");
		cartDAO.remove(id);
		return "redirect:/viewcart";
	}
}

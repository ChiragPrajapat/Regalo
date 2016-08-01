package com.niit.regalo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.regalo.model.Product;
import com.niit.regalo.model.ProductService;

@Controller
public class ProductController {

	private ProductService productService;

	@Autowired(required = true)
	@Qualifier(value = "productService")
	public void setProductService(ProductService ps) {
		this.productService = ps;
	}

	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String listProducts(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("listProducts", this.productService.listProducts());
		return "product";
	}

	// For add and update person both
	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product p) {

		if (p.getProduct_id() == null) {
			// new person, add it
			this.productService.addProduct(p);
		} else {
			// existing person, call update
			this.productService.updateProduct(p);
		}

		return "redirect:/products";

	}

	@RequestMapping("/remove/{product_id}")
	public String removeProduct(@PathVariable("product_id") String id) {

		this.productService.removeProduct(id);
		return "redirect:/products";
	}

	@RequestMapping("/edit/{product_id}")
	public String editProduct(@PathVariable("product_id") String id, Model model) {
		model.addAttribute("product", this.productService.getProductByProduct_Id(id));
		model.addAttribute("listProducts", this.productService.listProducts());
		return "product";
	}

}

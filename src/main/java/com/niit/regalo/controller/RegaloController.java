package com.niit.regalo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.niit.regalo.model.Product;
import com.niit.regalo.service.ProductService;

@Controller
public class RegaloController {

	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String HomePage() {
		System.out.println("coming to controller and return index");
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String LoginPage() {

		return "login";
	}

	@RequestMapping(value = "/register")
	public String RegisterPage() {

		return "register";
	}

	@RequestMapping("/aboutus")
	public String AboutUsPage() {

		return "aboutus";
	}

	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public String ContactUsPage() {

		return "contactus";
	}
	/*
	 * @RequestMapping(value = "/disp", method = RequestMethod.GET) public
	 * ModelAndView displaypage(@RequestParam("prd") String prd) { return new
	 * ModelAndView("allproduct", "prd", prd); }
	 */

	@RequestMapping(value = "/allproduct", method = RequestMethod.GET)
	public ModelAndView getData() {

		// List<Product> list = pmd.getAllProduct();
		List<Product> list = productService.listProducts();
		// return back to index.jsp
		ModelAndView model = new ModelAndView("allproduct");
		model.addObject("lists", list);

		return model;

	}

	@RequestMapping(value = "/addproduct", method = RequestMethod.GET)
	public ModelAndView addData() {
		System.out.println("addproduct page display");
		return new ModelAndView("addproduct", "addproduct", new Product());
	}

	@RequestMapping(value="/addproduct" , method=RequestMethod.POST)
	public String addData(@ModelAttribute("add") Product p,BindingResult result, Model model) {

		//List<Product> list =  pmd.getAllProduct();
		System.out.println("post method addproduct");
		// existing person, call update
			productService.addProduct(p);
		return "addSuccess";
	}

	@RequestMapping(value = "/updateProduct", method = RequestMethod.GET)
	public ModelAndView updateData(@RequestParam("product_id") String product_id ) {
		System.out.println("updateproduct page display");
		return new ModelAndView("updateProduct", "updateProduct",productService.getProductByProduct_Id(product_id));
	}
	
	@RequestMapping(value="/updateProduct" , method=RequestMethod.POST)
	public String updateData(@ModelAttribute("update") Product p,BindingResult result, Model model) {
		productService.updateProduct(p);
		return "updateSuccess";
}
}
/*

	@RequestMapping(value = "/persons", method = RequestMethod.GET)
	public String listPersons(Model model) {
		model.addAttribute("person", new Person());
		model.addAttribute("listPersons", this.personService.listPersons());
		return "person";
	}
	
	//For add and update person both
	@RequestMapping(value= "/person/add", method = RequestMethod.POST)
	public String addPerson(@ModelAttribute("person") Person p){
		
		if(p.getId() == 0){
			//new person, add it
			this.personService.addPerson(p);
		}else{
			//existing person, call update
			this.personService.updatePerson(p);
		}
		
		return "redirect:/persons";
		
	}
	
	
	
	@Autowired(required = true)
	@Qualifier(value = "productService")
	public void setProductService(ProductService ps) {
		this.productService = ps;
	}
*/
	
	
/*	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String listProducts(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("listProducts", this.productService.listProducts());
		return "product";
	}*/
	
	/*
	// For add and update p both
	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product p) {

		if (p.getProduct_id() == null) {
			// new person, add it
			this.productService.addProduct(p);
		} 
		
		else 
		{
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


		public @ResponseBody List<Product> getData()
	{
		
	 return pmd.getAllProduct();
	}
*/

package com.niit.regalo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.niit.regalo.model.Product;
import com.niit.regalo.model.ProductModel;

@Controller
public class RegaloController
{
	ProductModel pmd = new ProductModel();

	@RequestMapping("/")
	public String HomePage()
	{

		return "index";
	}

	@RequestMapping("/login")
	public String LoginPage()
	{

		return "login";
	}

	@RequestMapping("/register")
	public String RegisterPage() 
	{

		return "register";
	}

	@RequestMapping("/aboutus")
	public String AboutUsPage() 
	{

		return "aboutus";
	}

	@RequestMapping("/contactus")
	public String ContactUsPage() 
	{

		return "contactus";
	}

	@RequestMapping(value = "/disp", method = RequestMethod.GET)
	public ModelAndView displaypage(@RequestParam("prd") String prd) 
	{
		return new ModelAndView("allproduct", "prd", prd);
	}

	@RequestMapping(value="/prod" , method=RequestMethod.GET)
	public ModelAndView getdata() {

		String list =  pmd.getAllProduct().toString();

		//return back to index.jsp
		ModelAndView model = new ModelAndView("allproduct");
		model.addObject("lists", list);

		return model;

	}

	

	/*	public @ResponseBody ArrayList<Product> getData()
	{
		
	 return pmd.getAllProduct();
	}
*/

}





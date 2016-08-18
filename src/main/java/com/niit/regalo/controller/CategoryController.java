package com.niit.regalo.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.regalo.model.Category;
import com.niit.regalo.service.CategoryService;
@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	
	
	
	@RequestMapping(value = "/catdisp", method = RequestMethod.GET)
	public ModelAndView getCatData() {

		// List<Product> list = pmd.getAllProduct();
		List<Category> list = categoryService.listCategory();
		// return back to index.jsp
		ModelAndView model = new ModelAndView("Categorys");
		model.addObject("lists", list);

		return model;

	}
	
	
	
	
	@RequestMapping(value = "/addcategory", method = RequestMethod.GET)
	public ModelAndView addDatacategory() {
		System.out.println("addcategory page display");
		return new ModelAndView("addCategory", "addcategory", new Category());
	}

	@RequestMapping(value = "/addcategory", method = RequestMethod.POST)
	public String addDataCategory(@Valid @ModelAttribute("addcategory") Category c, BindingResult result, Model model) {

		// List<Category> list = pmd.getAllCategory();
		System.out.println("post method addcategory");

		if (result.hasErrors()) {
			
			System.out.println("category with error");
			return "addCategory";
		}
		
		else {
			categoryService.addCategory(c);
			return "categoryAdded";
		}
	}

	
	
	@RequestMapping(value = "/catdelete/{category_id}", method = RequestMethod.GET)
	public String DeletePage(@PathVariable("category_id") int id) {
		System.out.println("coming to controller and return delete page");
		categoryService.removeCategory(id);
		return "Categorys";
	}

	
	
	
}

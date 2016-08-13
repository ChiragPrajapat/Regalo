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

import com.niit.regalo.model.Supplier;
import com.niit.regalo.service.SupplierService;

@Controller
public class SupplierController {

	@Autowired
	private SupplierService supplierService;

//	@RequestMapping(value="/supdisp", method=RequestMethod.GET )
//	public String SuppliersPage()
//	{
//		
//		System.out.println("coming to controller and return Suppliers view");
//		
//		return "Suppliers";
//	}
	
	
	
	@RequestMapping(value = "/supdisp", method = RequestMethod.GET)
	public ModelAndView getData() {

		// List<Product> list = pmd.getAllProduct();
		List<Supplier> list = supplierService.listSuppliers();
		// return back to index.jsp
		ModelAndView model = new ModelAndView("Suppliers");
		model.addObject("lists", list);

		return model;

	}
	
	
	
	
	
	
	@RequestMapping(value = "/addsupplier", method = RequestMethod.GET)
	public ModelAndView addDatasupplier() {
		System.out.println("addsupplier page display");
		return new ModelAndView("addSupplier", "addsupplier", new Supplier());
	}

	@RequestMapping(value = "/addsupplier", method = RequestMethod.POST)
	public String addDataSupplier(@Valid @ModelAttribute("addsupplier") Supplier s, BindingResult result, Model model) {

		// List<Supplier> list = pmd.getAllSupplier();
		System.out.println("post method addsupplier");

		if (result.hasErrors()) {
			
			System.out.println("supplier with error");
			return "addSupplier";
		}
		
		else {
			supplierService.addSupplier(s);
			return "supplierAdded";
		}
	}

	
	
	
	
	
	
	
	@RequestMapping(value = "/supdelete/{supplier_id}", method = RequestMethod.GET)
	public String DeletePage() {
		System.out.println("coming to controller and return delete page");
		return "DeleteSupplier";
	}

	@RequestMapping(value = "/deleteSupplier", method = RequestMethod.POST)
	public String DeleteActionPage(@RequestParam("id") int id) {

		System.out.println("coming to controller and call remove supplier return allsupplier");
		supplierService.removeSupplier(id);
		return "Suppliers";
	}

	
	
	
	
	
	
	@RequestMapping(value = "/supedit/{supplier_id}", method = RequestMethod.GET)
	public ModelAndView EditPage(@PathVariable("supplier_id") int id) {
		System.out.println("coming to edit controller and return model and view update supplier");
		Supplier s = supplierService.getSupplierBySupplier_Id(id);

		return new ModelAndView("updateSupplier", "supplier", s);
	}

	@RequestMapping(value = "updateSupplier", method = RequestMethod.POST)
	public String EditActionPage(@Valid @ModelAttribute("supplier") Supplier s, BindingResult result, Model model) {
		System.out.println("post method updatesupplier");
		if (result.hasErrors()) {

			return "updateSupplier";
		}

		else {
			supplierService.updateSupplier(s);
			return "Suppliers";
		}

	}
}

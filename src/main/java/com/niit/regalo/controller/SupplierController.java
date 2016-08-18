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

import com.niit.regalo.dao.SupplierDAO;
import com.niit.regalo.model.Supplier;
import com.niit.regalo.service.SupplierService;

@Controller
public class SupplierController {
	@Autowired
	private SupplierService supplierService;
	
	private Supplier supplier;

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
	public String DeletePage(@PathVariable("supplier_id") int id) {
		System.out.println("coming to controller and return delete page");
		supplierService.removeSupplier(id);
		return "Suppliers";
	}

	@RequestMapping(value = "/supedit/{supplier_id}", method = RequestMethod.GET)
	public ModelAndView EditPage(@PathVariable("supplier_id") int id) {
		System.out.println("coming to edit controller and return model and view update supplier");
		Supplier s = supplierService.getSupplierBySupplier_Id(id);

		return new ModelAndView("updateSupplier", "supplier", s);
	}

	@RequestMapping(value = "/supedit/updateSupplier", method = RequestMethod.POST)
	public String EditSupplierPage(@Valid @ModelAttribute("supplier") Supplier s, BindingResult result, Model model) {
		System.out.println("post method updatesupplier");
		if (result.hasErrors()) {

			return "updateSupplier";
		}

		else {
			supplierService.updateSupplier(s);
			return "Suppliers";
		}

	}

	
	/*@RequestMapping("supedit/{supplier_id}")
	public ModelAndView updateSupplier(@PathVariable ("supplier_id") int id)
	{
		ModelAndView mv = new ModelAndView("updateSupplier");
		Supplier s = supplierService.getSupplierBySupplier_Id(id);
//		mv.addObject("supplier_id", supplier.getSupplier_id());
		mv.addObject("supplier_name", supplier.getSupplier_name());
		mv.addObject("Address", supplier.getSupplier_address());
		mv.addObject("supplier_email", supplier.getSupplier_email());
		mv.addObject("supplier_contact", supplier.getSupplier_contact());
		supplierService.removeSupplier(id);
		mv.addObject("supplier", supplierService.listSuppliers());
		return mv;
	}
	
	
	@RequestMapping("supdelete/{supplier_id}")
	public ModelAndView deleteSupplier(@PathVariable ("supplier_id") int id)
	{
		System.out.println("hello");
		System.out.println(id);
		ModelAndView mv = new ModelAndView("Suppliers");
		supplierService.removeSupplier(id);
		mv.addObject("supplier", supplierService.listSuppliers());
		return mv;	
	}*/
}

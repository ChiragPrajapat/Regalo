package com.niit.regalo.service;

import java.util.List;

import com.niit.regalo.model.Category;

public interface CategoryService {

		public void addCategory(Category c);
	
		public List<Category> listCategory();
		
		public void removeCategory(int category_id);
		
			
		}
	

	
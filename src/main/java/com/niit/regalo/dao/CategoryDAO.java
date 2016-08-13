package com.niit.regalo.dao;

import java.util.List;

import com.niit.regalo.model.Category;

public interface CategoryDAO {

		public void addCategory(Category p);
		public List<Category> listCategory();

		public void removeCategory(int category_id);
		
	}

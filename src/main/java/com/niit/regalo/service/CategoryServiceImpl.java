package com.niit.regalo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.regalo.dao.CategoryDAO;
import com.niit.regalo.model.Category;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDAO categoryDao;

	/*public void setCategoryDAO(Category category) {
		this.categoryDao = category;
	}*/

	@Transactional
	public void addCategory(Category c) {
		this.categoryDao.addCategory(c);
	}



		@Transactional
	public List<Category> listCategory() {
		return this.categoryDao.listCategory();
	}

	
	@Transactional
	public void removeCategory(int category_id) {
		this.categoryDao.removeCategory(category_id);
	}

}

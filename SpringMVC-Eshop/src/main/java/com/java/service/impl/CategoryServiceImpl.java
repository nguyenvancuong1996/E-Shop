package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.dao.CategoryDao;
import com.java.entity.CategoryModel;
import com.java.service.CategoryService;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDao categoryDao;

	@Transactional
	public void create(CategoryModel categoryModel) {
		categoryDao.create(categoryModel);
	}

	@Transactional
	public List<CategoryModel> getAllCategory() {
		return categoryDao.getAllCategory();
	}

	@Transactional
	public boolean delete(long categoryId) {
		return categoryDao.delete(categoryId);
	}

	@Transactional
	public CategoryModel findById(long productId) {
		return categoryDao.findById(productId);
	}

}
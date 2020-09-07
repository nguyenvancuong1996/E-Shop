package com.java.dao;

import java.util.List;
import com.java.entity.CategoryModel;

public interface CategoryDao {

	void create(CategoryModel categoryModel);

	public boolean delete(final long categoryId);

	public CategoryModel findById(final long categoryId);

	List<CategoryModel> getAllCategory();
}

package com.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.entity.CategoryModel;
import com.java.javabean.CategoryData;
import com.java.service.CategoryService;

@Controller
public class CategoryPageController {
	@Autowired
	private CategoryService categoryService;

	@GetMapping("/addCategory")
	public String addCategory(final Model model) {
		model.addAttribute("categoryData", new CategoryData());
		return "add_category";
	}

	@PostMapping("/addCategory")
	public String addCategory(final Model model, @ModelAttribute("categoryData") final CategoryData categoryData) {
		CategoryModel categoryModel = new CategoryModel();
		categoryModel.setCategoryName(categoryData.getName());
		categoryService.create(categoryModel);
		return "redirect:/";
	}

	@GetMapping(value = "/listCategory")
	public String getAllCategory(final Model model) {
		List<CategoryModel> listCategory = categoryService.getAllCategory();
		model.addAttribute("listCategory", listCategory);
		return "category";
	}

	@GetMapping(value = "/deleteCategory")
	public String deleteCategory() {
		return "delete_category";
	}

	@PostMapping(value = "/deleteCategory")
	public String deleteCategory(@RequestParam("categoryId") final Integer categoryId) {
		categoryService.delete(categoryId);
		return "redirect:/";
	}
}

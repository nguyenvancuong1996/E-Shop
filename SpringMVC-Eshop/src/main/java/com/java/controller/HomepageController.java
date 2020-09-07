package com.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.java.entity.CategoryModel;
import com.java.service.CategoryService;

@Controller
public class HomepageController {
	@Autowired
	private CategoryService categoryService;

	@GetMapping(value = "/homepage")
	public String viewHome(final Model model) {
		List<CategoryModel> categoriesList = categoryService.getAllCategory();
		model.addAttribute("listCategory", categoriesList);
		return "homepage";
	}

}

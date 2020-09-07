package com.java.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.entity.CategoryModel;
import com.java.entity.ProductModel;
import com.java.javabean.ProductData;
import com.java.service.CategoryService;
import com.java.service.ProductService;

@Controller
public class ProductPageController {
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	@GetMapping("/addProduct")
	public String addProduct(final Model model) {
		model.addAttribute("productData", new ProductData());
		return "add_product";
	}

	@PostMapping("/addProduct")
	public String addProduct(@ModelAttribute("productData") final ProductData productData) {
		ProductModel productModel = new ProductModel();
		productModel.setProductName(productData.getName());
		productModel.setProductImage(productData.getImage());
		productModel.setProductPrice(productData.getPrice());
		productModel.setProductDescription(productData.getDescription());
		final int id = (int) productData.getId();
		CategoryModel categoryModel = new CategoryModel();
		categoryModel.setId(id);
		productModel.setCategory(categoryModel);
		productService.create(productModel);
		return "redirect:/";
	}

	@GetMapping("/getProduct")
	public String getProductByCategory(@RequestParam(required = true) long id, final Model model) {
		ProductModel productModel = productService.findById(id);
		model.addAttribute("ProductModel", productModel);
		return "productDetail";
	}

	@GetMapping(value = "/listProduct")
	public String getAllProduct(final Model model) {
		List<ProductModel> products = productService.getAllProduct();
		model.addAttribute("listProduct", products);
		return "product";
	}

	@ModelAttribute("categories")
	public Map<Integer, String> getCategories() {
		Map<Integer, String> categories = new HashMap<Integer, String>();
		List<CategoryModel> categoriesList = categoryService.getAllCategory();
		if (categoriesList == null) {
			return categories;
		}
		for (int i = 0; i < categoriesList.size(); i++) {
			CategoryModel categoryModel = categoriesList.get(i);
			categories.put((int) categoryModel.getId(), categoryModel.getCategoryName());
		}
		return categories;
	}

	@GetMapping(value = "/deleteProduct")
	public String deleteProduct() {
		return "delete_product";
	}

	@PostMapping(value = "/deleteProduct")
	public String deleteProduct(@RequestParam("productId") final Integer productId) {
		productService.delete(productId);
		return "redirect:/";
	}

}

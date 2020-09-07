package com.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.dao.ProductDao;
import com.java.entity.ProductModel;
import com.java.service.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao productDao;

	@Transactional
	public void create(ProductModel productModel) {
		productDao.create(productModel);
	}

	@Transactional
	public boolean delete(long productId) {
		return productDao.delete(productId);
	}

	@Transactional
	public ProductModel findById(long productId) {
		return productDao.findById(productId);
	}

	@Transactional
	public List<ProductModel> getAllProduct() {
		return productDao.getAllProduct();
	}
}

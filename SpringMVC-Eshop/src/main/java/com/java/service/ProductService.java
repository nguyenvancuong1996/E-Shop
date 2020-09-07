package com.java.service;

import java.util.List;

import com.java.entity.ProductModel;

public interface ProductService {
	public void create(ProductModel productModel);

	public boolean delete(final long productId);

	public ProductModel findById(final long productId);

	public List<ProductModel> getAllProduct();
}

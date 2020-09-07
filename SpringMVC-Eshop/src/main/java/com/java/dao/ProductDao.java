package com.java.dao;

import java.util.List;

import org.hibernate.SessionFactory;

import com.java.entity.ProductModel;

public interface ProductDao {
	public void setSessionFactory(SessionFactory sessionFactory);

	public void create(ProductModel productModel);

	public boolean delete(final long productId);

	public ProductModel findById(final long productId);

	public List<ProductModel> getAllProduct();
}

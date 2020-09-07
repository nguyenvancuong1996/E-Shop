package com.java.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.dao.ProductDao;
import com.java.entity.ProductModel;

@Repository("productDao")
@Transactional
public class ProductDaoImpl implements ProductDao {
	private SessionFactory sessionFactory;

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void create(ProductModel productModel) {
		final Session session = sessionFactory.getCurrentSession();
		session.save(productModel);
	}

	public boolean delete(final long productId) {
		final Session session = sessionFactory.getCurrentSession();
		final ProductModel productModel = session.get(ProductModel.class, productId);
		if (productModel == null) {
			System.out.println("Delete Failed");
			return false;
		}
		session.delete(productModel);
		session.flush();
		System.out.println("Delete OK" + productModel);
		return true;
	}

	public ProductModel findById(final long productId) {
		final Session session = this.sessionFactory.getCurrentSession();
		final String queryString = "FROM ProductModel WHERE id = :id";
		final Query query = session.createQuery(queryString);
		query.setParameter("id", productId);
		return (ProductModel) query.uniqueResult();
	}

	public List<ProductModel> getAllProduct() {
		final Session session = this.sessionFactory.getCurrentSession();
		final String hql = "FROM ProductModel";
		final Query query = session.createQuery(hql);
		return (List<ProductModel>) query.list();
	}

	public static void main(String[] args) {
		try {
			System.out.println(new ProductDaoImpl().getAllProduct().size());
		} catch (NullPointerException ex) {
			System.out.println("Null");
		}
	}
}

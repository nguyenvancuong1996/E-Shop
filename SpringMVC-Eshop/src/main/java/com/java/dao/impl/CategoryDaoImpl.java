package com.java.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.dao.CategoryDao;
import com.java.entity.CategoryModel;

@Repository("categoryDao")
@Transactional
public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void create(CategoryModel categoryModel) {
		final Session session = sessionFactory.getCurrentSession();
		session.save(categoryModel);
	}

	public List<CategoryModel> getAllCategory() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM CategoryModel";
		Query query = session.createQuery(hql);
		return (List<CategoryModel>) query.list();
	}

	public boolean delete(long categoryId) {
		final Session session = sessionFactory.getCurrentSession();
		final CategoryModel categoryModel = session.get(CategoryModel.class, categoryId);
		if (categoryModel == null) {
			System.out.println("Delete failed");
			return false;
		}
		session.delete(categoryModel);
		session.flush();
		System.out.println("Delete ok" + categoryModel);
		return true;
	}

	public CategoryModel findById(long categoryId) {
		final Session session = this.sessionFactory.getCurrentSession();
		final String queryString = "FROM CategoryModel WHERE id = :id";
		final Query query = session.createQuery(queryString);
		query.setParameter("id", categoryId);
		return (CategoryModel) query.uniqueResult();
	}
}

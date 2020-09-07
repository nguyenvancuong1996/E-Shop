package com.java.dao.impl;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.java.dao.CustomerDao;
import com.java.entity.CustomerModel;

@Repository("customerDao")
@Transactional
public class CustomerDaoImpl implements CustomerDao {
	@Autowired
	private SessionFactory sessionFactory;

	public List<CustomerModel> getAllCustomers() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM CustomerModel";
		Query query = session.createQuery(hql);
		return (List<CustomerModel>) query.list();
	}

	public void createCustomer(CustomerModel customerModel) {
		final Session session = sessionFactory.getCurrentSession();
		session.save(customerModel);
	}

	public boolean editCustomer(CustomerModel customerModel) {
		Session session = sessionFactory.getCurrentSession();
		customerModel.setFirstName("Le Thanh Tung");
		session.update(customerModel);
		System.out.println("Update thanh cong");
		return true;
	}

	public boolean deleteCustomer(Integer customerId) {
		Session session = sessionFactory.getCurrentSession();
		final CustomerModel customerModel = session.get(CustomerModel.class, customerId);
		if (customerModel == null) {
			System.out.println("Xoa khong thanh cong");
			return false;
		}
		session.delete(customerModel);
		session.flush();
		System.out.println("Xoa thanh cong" + customerModel);
		return true;

	}

	public Optional<CustomerModel> getCustomerByEmail(final String email) {
		final Session session = this.sessionFactory.getCurrentSession();
		final String queryString = "FROM CustomerModel WHERE email = :email";
		final Query query = session.createQuery(queryString);
		query.setParameter("email", email);
		return query.uniqueResultOptional();
	}
}
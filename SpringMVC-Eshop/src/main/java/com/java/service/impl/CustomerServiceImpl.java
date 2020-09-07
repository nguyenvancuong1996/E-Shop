package com.java.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.dao.CustomerDao;
import com.java.entity.CustomerModel;
import com.java.exception.UserAlreadyExistException;
import com.java.service.CustomerService;
import com.java.session.SessionService;

@Service("customerService")
@Transactional
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerDao customerDao;
	@Autowired
	private SessionService sessionService;

	public Optional<CustomerModel> getCurrentCustomer() {
		return Optional.ofNullable((CustomerModel) sessionService.getAttribute("customerModel"));
	}

	public List<CustomerModel> getAllCustomers() {
		return customerDao.getAllCustomers();
	}

	public boolean deleteCustomer(Integer customerId) {
		return customerDao.deleteCustomer(customerId);
	}

	public boolean editCustomer(CustomerModel customerModel) {
		return customerDao.editCustomer(customerModel);
	}

	public void createCustomer(CustomerModel customerModel) {
		try {
			customerDao.createCustomer(customerModel);
		} catch (final Exception e) {
			throw new UserAlreadyExistException("User already exist: " + customerModel.getEmail());
		}
	}

	public Optional<CustomerModel> getCustomerByEmail(final String email) {
		return customerDao.getCustomerByEmail(email);
	}
}

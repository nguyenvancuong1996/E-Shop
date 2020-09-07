package com.java.service;

import java.util.List;
import java.util.Optional;

import com.java.entity.CustomerModel;

public interface CustomerService {
	List<CustomerModel> getAllCustomers();

	void createCustomer(final CustomerModel customerModel);

	boolean editCustomer(final CustomerModel customerModel);

	boolean deleteCustomer(final Integer customerId);

	Optional<CustomerModel> getCustomerByEmail(final String email);

	Optional<CustomerModel> getCurrentCustomer();

}

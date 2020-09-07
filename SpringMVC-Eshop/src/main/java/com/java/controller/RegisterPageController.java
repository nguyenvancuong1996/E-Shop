package com.java.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.common.collect.ImmutableMap;
import com.java.entity.CustomerModel;
import com.java.exception.UserAlreadyExistException;
import com.java.form.RegisterForm;
import com.java.service.CustomerService;

@Controller
public class RegisterPageController {
	@Resource(name = "customerService")
	private CustomerService customerService;

	@GetMapping("/register")
	public String register(final Model model) {
		model.addAttribute("registerForm", new RegisterForm());
		return "register";
	}

	@PostMapping("/register")
	public String register(final Model model, @ModelAttribute("registerForm") @Valid final RegisterForm registerForm,
			final BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Please correct the following errors !");
			return "register";
		} else {
			final CustomerModel customerModel = new CustomerModel();
			customerModel.setEmail(registerForm.getEmail());
			customerModel.setEncodedPassword(registerForm.getPassword());
			customerModel.setFirstName(registerForm.getFirstName());
			customerModel.setLastName(registerForm.getLastName());
			customerModel.setPhoneNumber(registerForm.getPhoneNumber());
			customerModel.setGender(registerForm.getGender());
			customerService.createCustomer(customerModel);
			try {
				customerService.createCustomer(customerModel);
			} catch (final UserAlreadyExistException e) {
				errors.rejectValue("email", "", "An account already exists for this email address");
				return "register";
			}
			return "redirect:/getAllCustomers";
		}
	}

	@RequestMapping(value = "/getAllCustomers", method = RequestMethod.GET)
	public String getAllCustomers(final Model model) {
		List<CustomerModel> customers = customerService.getAllCustomers();
		model.addAttribute("customers", customers);
		return "show_all_customers";
	}

	@ModelAttribute("genders")
	public Map<String, String> getGenders() {
		return ImmutableMap.of("M", "Male", "F", "Female");
	}
}
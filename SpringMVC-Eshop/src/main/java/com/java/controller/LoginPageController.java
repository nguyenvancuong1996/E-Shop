package com.java.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.java.entity.CustomerModel;
import com.java.form.LoginForm;

@Controller
public class LoginPageController {

	@GetMapping(value = "/login")
	public String login(final Model model) {
		model.addAttribute("loginForm", new LoginForm());
		return "login";
	}

	@GetMapping(value = "/logout")
	public String logout(final HttpSession session) {
		session.removeAttribute("username");
		return "redirect:/";
	}

	@PostMapping(value = "/login")
	public String doLogin(final Model model, @ModelAttribute("loginForm") final LoginForm loginForm,
			BindingResult errors, HttpSession session) {
		List<CustomerModel> users = (List<CustomerModel>) session.getAttribute("users");
		if (users == null || users.isEmpty()) {
			model.addAttribute("message", "Account or password is incorrect");
			return "login";
		}
		for (int i = 0; i < users.size(); ++i) {
			CustomerModel customerModel = users.get(i);
			if (customerModel.getEmail().equals(loginForm.getEmail())
					&& customerModel.getEncodedPassword().equals(loginForm.getPassword())) {
				session.setAttribute("username", customerModel.getEmail());
				return "redirect:/welcome";
			}
		}
		model.addAttribute("message","Account or password is incorrect");
		return "login";
	}
}

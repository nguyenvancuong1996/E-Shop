package com.java.javabean;

import java.io.Serializable;

import lombok.Data;

@Data
public class RegisterData implements Serializable {
	private static final long serialVersionUID = 6828028200243352493L;

	private String email;

	private String password;

	private String firstName;

	private String lastName;

	private String gender;

	private String phoneNumber;

}

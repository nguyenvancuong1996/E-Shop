package com.java.form;

import com.java.form.validation.constraint.FieldsValueMatch;
import com.java.form.validation.constraint.PhoneNumber;
import lombok.Data;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@FieldsValueMatch(field = "password", fieldMatch = "checkedPassword", message = "Please confirm your password")
@Data
public class RegisterForm {

	@NotBlank(message = "{register.email.invalid}")
	@Email(message = "{register.email.invalid}")
	private String email;

	@NotBlank(message = "{register.pwd.invalid}")
	@Size(min = 6, max = 256, message = "{register.pwd.invalid}")
	private String password;

	@NotBlank(message = "{register.checkPwd.invalid}")
	private String checkedPassword;

	@NotBlank(message = "{register.firstName.invalid}")
	private String firstName;

	@NotBlank(message = "{register.lastName.invalid}")
	private String lastName;

	@NotBlank(message = "{register.gender.invalid}")
	@Pattern(regexp = "^[m|M|f|F]$", message = "Incorrect gender")
	private String gender;

	@NotBlank(message = "{register.phone.invalid}")
	@PhoneNumber(message = "{register.phone.invalid}")
	private String phoneNumber;

}
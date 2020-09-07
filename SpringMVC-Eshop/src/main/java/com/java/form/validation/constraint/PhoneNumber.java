package com.java.form.validation.constraint;

import com.java.form.validation.PhoneNumberValidator;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint(validatedBy = PhoneNumberValidator.class)
@Target({ ElementType.METHOD, ElementType.FIELD })
@Retention(RetentionPolicy.RUNTIME)
public @interface PhoneNumber {

	String message() default "Incorrect phone number";

	Class<?>[] groups() default {};

	Class<? extends Payload>[] payload() default {};
}

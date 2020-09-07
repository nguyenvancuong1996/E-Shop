package com.java.form.validation;

import com.java.form.validation.constraint.PhoneNumber;
import org.apache.commons.lang3.StringUtils;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PhoneNumberValidator implements ConstraintValidator<PhoneNumber, String> {

	private static final Pattern PHONE_REGEX = Pattern
			.compile("^\\s*(?:\\+?(\\d{1,3}))?[-. (]*(\\d{3})[-. )]*(\\d{3})[-. ]*(\\d{4})(?: *x(\\d+))?\\s*$");

	public boolean isValid(final String value, final ConstraintValidatorContext context) {
		if (StringUtils.isBlank(value)) {
			return false;
		}
		final Matcher matcher = PHONE_REGEX.matcher(value);
		return matcher.find();
	}
}

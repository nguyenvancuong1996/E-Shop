package com.java.exception;

public class UserAlreadyExistException extends RuntimeException {

	private static final long serialVersionUID = -619839484210762956L;

	public UserAlreadyExistException(final String message) {
        super(message);
    }

    public UserAlreadyExistException(final String message, final Throwable cause) {
        super(message, cause);
    }

}

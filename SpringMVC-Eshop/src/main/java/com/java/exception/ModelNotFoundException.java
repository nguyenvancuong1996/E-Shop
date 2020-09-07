package com.java.exception;

public class ModelNotFoundException extends RuntimeException {

    private static final long serialVersionUID = -1428272736655020569L;

    public ModelNotFoundException(final String message) {
        super(message);
    }

    public ModelNotFoundException(final String message, final Throwable cause) {
        super(message, cause);
    }

}

package com.java.session.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.java.session.SessionService;

@Service("sessionService")
@Transactional
public class DefaultSessionService implements SessionService {

	public HttpSession getCurrentSession() {
		final RequestAttributes requestAttributes = RequestContextHolder.currentRequestAttributes();
		final ServletRequestAttributes attributes = (ServletRequestAttributes) requestAttributes;
		final HttpServletRequest request = attributes.getRequest();
		return request.getSession(true);
	}

	public void setAttribute(final String name, final Object value) {
		this.getCurrentSession().setAttribute(name, value);
	}

	public <T> T getAttribute(final String name) {
		return (T) this.getCurrentSession().getAttribute(name);
	}

	public void removeAttribute(final String name) {
		this.getCurrentSession().removeAttribute(name);
	}
}
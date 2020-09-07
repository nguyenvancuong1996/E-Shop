package com.java.session;

import javax.servlet.http.HttpSession;

public interface SessionService {

    HttpSession getCurrentSession();

    void setAttribute(String name, Object value);

    <T> T getAttribute(String name);

    void removeAttribute(String name);

}

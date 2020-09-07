package com.java.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	private static final SessionFactory sessionFactory = buildSessionFactory();

    private static SessionFactory buildSessionFactory() {
		try {
			Configuration  configuration = new Configuration().configure( "/src/main/resources/hibernate.cfg.xml");
            return new Configuration().configure().buildSessionFactory();
		} catch (Throwable ex) {
			System.err.println("Initial	SessionFactory creation faile." + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public static void shutdown() {
        		getSessionFactory().close();}
}

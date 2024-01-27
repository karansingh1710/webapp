package com.karan.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.karan.DAO.User;

import org.hibernate.Transaction;

import org.hibernate.Session;

public class UtilClass {
	private static Configuration con = new Configuration().configure().addAnnotatedClass(User.class);
	private static SessionFactory sef = con.buildSessionFactory();
	static Session ses = sef.openSession();

	public static boolean userExist(String username, String password) {
		User user = ses.find(User.class, username);
		System.out.println(user);
		if(user==null) {
			return false;
		}
		else if (user.getPassword().equals(password)) {
			return true;
		}
		return false;
	}
	
	public static boolean addUser(User user) {
		try {
			Transaction tr=ses.beginTransaction();
			ses.save(user);
			tr.commit();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}
}

package com.karan.controller;

import java.io.IOException;

import com.karan.DAO.User;
import com.karan.util.UtilClass;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegisterServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		User user=new User();
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);
		
		if(UtilClass.addUser(user)) {
			response.sendRedirect("login.jsp?status=registered");
		}else {
			response.sendRedirect("register.jsp?status=exists");
		}
	}

}

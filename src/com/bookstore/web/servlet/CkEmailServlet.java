package com.bookstore.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.domain.User;
import com.bookstore.exception.UserException;
import com.bookstore.service.UserService;



public class CkEmailServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		UserService ps = new UserService(); 
		try {
			User user =	ps.findUserByEmail(email);
			if(user!=null){
				out.print(true);
			}else{
				out.print(false);
			}
		} catch (UserException e) {
			e.printStackTrace();
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

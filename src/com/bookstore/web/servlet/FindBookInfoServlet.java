package com.bookstore.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.domain.Product;
import com.bookstore.service.ProductService;

public class FindBookInfoServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			String id = request.getParameter("id");
			
			ProductService bs = new ProductService();
			Product book = bs.findBookById(id);
			
			request.setAttribute("b", book);
			request.getRequestDispatcher("/product_info.jsp").forward(request, response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}

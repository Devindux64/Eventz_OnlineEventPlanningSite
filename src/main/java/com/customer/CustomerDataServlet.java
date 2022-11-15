package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CustomerData
 */
@WebServlet("/CustomerData")
public class CustomerDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String Name = request.getParameter("name");
		String Email = request.getParameter("email");
		String PhoneNo = request.getParameter("number");
		String UserName = request.getParameter("user");
		String Password = request.getParameter("pass"); 
		
		try {
			
			boolean isTrue;
	
			isTrue = CustomerDBUtil.insertCus(Name,Email,PhoneNo,UserName,Password);
			
			if(isTrue == true) {
				
				RequestDispatcher Dis = request.getRequestDispatcher("login.jsp");
				Dis.forward(request, response);
				
				}else {
					RequestDispatcher Dis2 = request.getRequestDispatcher("unsuccsessful.jsp");
					Dis2.forward(request, response);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		
	}

}

package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DelCusServlet")
public class DelCusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("CID");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.deleteCus(id);
		
		if(isTrue) {
			RequestDispatcher disp = request.getRequestDispatcher("createacc.jsp");
			disp.forward(request, response);
		}else {
			
			List <Customer> cusDetails = CustomerDBUtil.getCusDetails(id);
			request.setAttribute("CusDetails", cusDetails);
			RequestDispatcher disp = request.getRequestDispatcher("useraccount.jsp");
			disp.forward(request, response);
		}
		
	}
 
}

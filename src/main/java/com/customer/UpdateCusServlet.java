package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateCusServlet")
public class UpdateCusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
    	String id = request.getParameter("CID");
    	String name = request.getParameter("name");
    	String email = request.getParameter("email");
    	String phone = request.getParameter("phone");
    	String user = request.getParameter("user");
    	String pass = request.getParameter("pass");
    	
    	
    	boolean isTrue;
    	
    	isTrue = CustomerDBUtil.updateCus(id, name, email, phone, user, pass);
    	
    	if(isTrue) {
    		
    		List <Customer> cusDetails = CustomerDBUtil.getCusDetails(id);
    		request.setAttribute("cusDetail", cusDetails);
    		
    		RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
    		dis.forward(request, response);
    	}
    	else {
    		List <Customer> cusDetails = CustomerDBUtil.getCusDetails(id);
    		request.setAttribute("cusDetail", cusDetails);
    		
    		RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
    		dis.forward(request, response);
    	}
    }
}

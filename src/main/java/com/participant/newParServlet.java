package com.participant;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.Customer;
import com.customer.CustomerDBUtil;

/**
 * Servlet implementation class newParServlet
 */
@WebServlet("/newParServlet")
public class newParServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String phone = request.getParameter("number");
		String nic = request.getParameter("nic");
		
		String code = request.getParameter("code");
		String tPrice = request.getParameter("ticketprice");
		
		
		try {
			
			boolean isTrue;
			
			isTrue = participantDButil.newParticipant(name, age, email, phone, nic);
			
			if(isTrue) {
				
				List <Participant> parDetails = participantDButil.showParticpant(nic);
				request.setAttribute("ParticipantDetails", parDetails);
				request.setAttribute("code", code);
				request.setAttribute("TicketPrice", tPrice);

				
				
				RequestDispatcher dis = request.getRequestDispatcher("participantAcc.jsp");
				dis.forward(request, response);
				
			} else {
				
				RequestDispatcher dis = request.getRequestDispatcher("unsuccsessful.jsp");
				dis.forward(request, response);
			}	
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

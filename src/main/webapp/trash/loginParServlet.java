package com.participant;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginParServlet")
public class loginParServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		boolean isTrue;
		
		String nic = request.getParameter("nic");
		
		isTrue = participantDButil.validate(nic);
		
		if(isTrue) {
			
			List <Participant> parDetails = participantDButil.showParticpant(nic);
			request.setAttribute("ParticipantDetails", parDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("participantAcc.jsp");
			dis.forward(request, response);
			
		} else {
			
		}

		
		

//			List <Participant> parDetails = participantDButil.showParticpant(nic);
//			request.setAttribute("ParticipantDetails", parDetails);
//			
//			RequestDispatcher dis = request.getRequestDispatcher("participantAcc.jsp");
//			dis.forward(request, response);
			
		
	}

}

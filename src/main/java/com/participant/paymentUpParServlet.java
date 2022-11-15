package com.participant;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class paymentUpParServlet
 */
@WebServlet("/paymentUpParServlet")
public class paymentUpParServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nic = request.getParameter("nic");
		String code = request.getParameter("code");
		String tPrice = request.getParameter("ticketprice");
		
		
		boolean isTrue = participantDButil.updatePar(nic);
		
		if(isTrue) {
			
			List <Participant> parDetails = participantDButil.showParticpant(nic);
			request.setAttribute("ParticipantDetails", parDetails);
			request.setAttribute("code", code);
			request.setAttribute("TicketPrice", tPrice);

			
			RequestDispatcher dis = request.getRequestDispatcher("participantAcc.jsp");
			dis.forward(request, response);
			
		} else {
			
			List <Participant> parDetails = participantDButil.showParticpant(nic);
			request.setAttribute("ParticipantDetails", parDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("participantAcc.jsp");
			dis.forward(request, response);
		}
		
	}

}

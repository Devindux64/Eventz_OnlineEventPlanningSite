package com.participant;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delParServlet")
public class delParServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String age = request.getParameter("age");
		String nic = request.getParameter("nic");
		
		int intID = Integer.parseInt(id);

		boolean isTrue;
				
				isTrue = participantDButil.deletePar(intID, name, age, email, phone, nic);
				
				if(isTrue) {
					
					RequestDispatcher dis = request.getRequestDispatcher("enterParCode.jsp");
					dis.forward(request, response);
					
					
				} else {
					
					List <Participant> parDetails = participantDButil.showParticpant(nic);
					request.setAttribute("ParticipantDetails", parDetails);
					
					RequestDispatcher dis = request.getRequestDispatcher("participantAcc.jsp");
					dis.forward(request, response);
					
				}
			}

}

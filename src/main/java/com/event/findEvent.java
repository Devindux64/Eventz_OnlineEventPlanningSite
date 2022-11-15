package com.event;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.participant.participantDButil;


@WebServlet("/findEvent")
public class findEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String id = request.getParameter("code");
		
		boolean istrue;
    	
    	istrue = participantDButil.validate(id);
    	
		if(istrue) {
			
			List <event> evDetails  = participantDButil.findEvent(id);
			request.setAttribute("EventDetails", evDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("eventList.jsp");
			dis.forward(request, response);
			
			
		}else {
			out.println("<script type = text/javascript>");
			out.println("alert('Your Event Code is incorrect!');");
			out.println("location = 'enterParCode.jsp'");
			out.println("</script>");
		}
	}

}

package com.participant;

import java.sql.Array;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import com.customer.DbConnect;
import com.event.event;

public class participantDButil {
	
    public static final Logger LOG = Logger.getLogger(participantDButil.class.getName());
	
	private static Boolean isSuccess;
	private static Connection con = null; 
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
//overloaded method to validate event code (Integer) entered by potential participants
	
	public static boolean validate (String eventcode) { 
		
		try {

			con = DbConnect.getCon();
			stmt = con.createStatement();
			String sql = "select * from confirmedevents where eventcode= '"+eventcode+"'";
			rs = stmt.executeQuery(sql);
			
			LOG.info("validate success");
			
			if(rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			LOG.log(Level.SEVERE,e.getMessage());
		}
		
		return isSuccess;
	}
		
//method to insert new participant into database after confirmation with the UI	
	
	public static boolean newParticipant(String name, String age, String email, String phone, String nic){
		
		boolean isSuccess = false;
		
		try {
			
			con = DbConnect.getCon();
			stmt = con.createStatement();
			
			String sql = "insert into participant values (0,'"+name+"','"+age+"', '"+email+"', '"+phone+"', '"+nic+"','Unpaid')";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			LOG.log(Level.SEVERE,e.getMessage());
		}
		
		return isSuccess;
		
	}

//method to retrieve event information from provided unique code to potential participants
	
	public static List <event> findEvent (String id) {
		
		ArrayList<event> EV = new ArrayList<event>();

		try {
			
			con = DbConnect.getCon();
			stmt = con.createStatement();
			String sql = "select * from event, confirmedevents where confirmedevents.eventcode = '"+id+"'  and event.eid = confirmedevents.eid ";
			
			rs = stmt.executeQuery(sql);
		
			while(rs.next()) {
				int eid = rs.getInt(1);
				String type = rs.getString(2);
				String category = rs.getString(3);
				String budget = rs.getString(4);
				String desc = rs.getString(5);
				int code = rs.getInt(8);
				
				event E1 = new event (eid, type, category, budget, desc, code);
				
				EV.add(E1);
				 
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			LOG.log(Level.SEVERE,e.getMessage());
		}
		
		return EV;
	}
	
//method to retrieve information of participant that has been inserted into database
	
	public static List <Participant> showParticpant(String nic){
		ArrayList<Participant> Par = new ArrayList<Participant>();
		
		try {
			
			con = DbConnect.getCon();
			stmt = con.createStatement();
			String sql = "select * from Participant where nic = '"+nic+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int PID = rs.getInt(1);
				String name = rs.getString(2);
				String age = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String niC = rs.getString(6);
				String paid = rs.getString(7);
				
				
				Participant P1 = new Participant(PID, name, email, phone, age, niC, paid);
				
				Par.add(P1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			LOG.log(Level.SEVERE,e.getMessage());
		}
		
		return Par;
	}
	
//overloaded method to update all data of participant inserted into database
	
	public static boolean updatePar (int id, String name, String age, String email, String phone, String nic) {
		
		try {
			
			con = DbConnect.getCon();
			stmt = con.createStatement();
			
			String sql = "update participant set name = '"+name+"', age = '"+age+"', email = '"+email+"', phone = '"+phone+"', nic = '"+nic+"' where PID = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			LOG.log(Level.SEVERE,e.getMessage());
		}
		
		return isSuccess;
	}

	
//method to delete participant details from the database
	
	public static boolean deletePar (int id, String name, String age, String email, String phone, String nic) {
		
		
		try {
			
			con = DbConnect.getCon();
			stmt = con.createStatement();
			
			String sql = "delete from participant where PID = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs>0) {
				
				isSuccess = true;
				
			} else {
				
				isSuccess = false;
				
			}
			 
			
		} catch (Exception e) {
			e.printStackTrace();
			LOG.log(Level.SEVERE,e.getMessage());
		}
		
		return isSuccess;
	}
	
//overloaded method to update participant database with payment details
	
	public static boolean updatePar(String nic) {
		
		try {
			
			con = DbConnect.getCon();
			stmt  = con.createStatement();
			
			String sql = "update participant set Payment = 'Paid' where nic = '"+nic+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0 ) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			LOG.log(Level.SEVERE,e.getMessage());
		}
		
		return isSuccess;
		
	}
	
	
	
	//overloaded method to validate NIC (String) entered by existing participants	

//	public static boolean validate (String NIC) {
//		
//		try {
//
//			con = DbConnect.getCon();
//			stmt = con.createStatement();
//			String sql = "select * from participant where nic= '"+NIC+"'";
//			rs = stmt.executeQuery(sql);
//			
//	
//			if(rs.next()) {
//				isSuccess = true;
//			} else {
//				isSuccess = false;
//			}
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		return isSuccess;
//	}
//

}

package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class CustomerDBUtil {
	
	private static Boolean isSuccess = null;
	private static Connection con = null; 
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
//	public static boolean test (String id) throws SQLException {
//		con = DbConnect.getCon();
//		stmt = con.createStatement();
//		String sql = "Select * from Customer where username = CID001";
//		
//		rs = stmt.executeQuery(sql);
//		
//		if(rs.next()) {
//			isSuccess = true;
//		}else {
//			isSuccess = false;
//		}
//		
//		return isSuccess;
//	}
	
	//Validation method
	
	public static boolean Validate (String User, String Pass) {
		
		try {
			con = DbConnect.getCon();
			stmt = con.createStatement();
			String sql = "select * from customer where username = '"+User+"' and password = '"+Pass+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//get customer details for successful login
	
	public static List <Customer> getCustomer(String username){
		
		ArrayList<Customer> Cus = new ArrayList<Customer>();
		
		try {
			
			con = DbConnect.getCon();
			stmt = con.createStatement();
			String sql = "select * from customer where username  = '"+username+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String user = rs.getString(5);
				String pass = rs.getString(6);
				
				Customer C1 = new Customer(id,name,email,phone,user,pass);
				
				Cus.add(C1);
						
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return Cus;
		
	}
	
	
	
//	public static List <Customer> validate (String username, String password){
//		
//		ArrayList <Customer> C1 = new ArrayList<>();
//		
//		//validate credentials
//		try {
//			con = DbConnect.getCon();
//			stmt = con.createStatement();
//			
//			String sql = "select * from customer where  Username = '"+username+"' and Password = '"+password+"'";
//			
//			rs = stmt.executeQuery(sql);		
//			
//			
//			if (rs.next()) {
//				int id = rs.getInt(1);
//				String name = rs.getString(2);
//				String email = rs.getString(3);
//				String phoneno = rs.getString(4);
//				String user1 = rs.getString(5);
//				String pass1 = rs.getString(6);
//				
//				Customer C = new Customer(id,name,email,phoneno,user1,pass1);
//				
//				C1.add(C);
//			
//			}
//			
//		} catch (Exception e) { 
//			e.printStackTrace();
//		}
//		
//		
//		return C1;
//	}
//	
	//Insert Customer method
	public static boolean insertCus(String name, String email, String phoneNo, String username, String password){
	
		boolean isSuccess = false;
		
		//inserting data
				
				try {
					con = DbConnect.getCon();
					stmt = con.createStatement();
					
					String sql = "insert into Customer values (0,'"+name+"','"+email+"','"+phoneNo+"','"+username+"','"+password+"')";
					
					int rs = stmt.executeUpdate(sql);
					
					if(rs > 0) {
						isSuccess = true;
					}
					else {
						isSuccess = false;
					}
					
				} catch (Exception e) {
					e.printStackTrace();
				}
		
		return isSuccess;
		
	}

	public static boolean updateCus(String id, String name, String email, String phoneNo, String username, String password) {
		
		try {
			
			con = DbConnect.getCon();
			stmt = con.createStatement();
			String sql = "update customer set name='"+name+"',email='"+email+"',PhoneNo='"+phoneNo+"',username='"+username+"',password='"+password+"'"
					+"where cid = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}

	public static List <Customer> getCusDetails(String id){
		
		int intID = Integer.parseInt(id);
		
		ArrayList <Customer> cus = new ArrayList<Customer>();
		
		try {
			
			con = DbConnect.getCon();
			stmt = con.createStatement();
			String sql = "select * from customer where CID = '"+intID+"'";
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				int iD = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phoneno = rs.getString(4);
				String user1 = rs.getString(5);
				String pass1 = rs.getString(6);
				
				Customer C = new Customer(iD,name,email,phoneno,user1,pass1);
				
				cus.add(C);
				
				System.out.println("no is " + intID);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}

	public static boolean deleteCus(String id) {
		
		int intID = Integer.parseInt(id);
		
		try {
			
			con = DbConnect.getCon();
			stmt = con.createStatement();
			String sql = "Delete from customer where CID = '"+intID+"'";
			
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				return isSuccess = true;
			} else {
				return isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
 

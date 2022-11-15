package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DbConnect {

	private static String url = "jdbc:mysql://localhost:3306/eventsite";
	private static String user = "root";
	private static String pass = "YourSequel@1975";
	private static Connection con;
	
	public static Connection getCon() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");					//database driver
			con = DriverManager.getConnection(url, user, pass);			//creating connection to database via assigned variables as parameters
			
			System.out.println("success");

		} catch (Exception e) {
			System.out.println("Database Connection is not Successful: " + e.getMessage());
		}
	
		return con;
	}
	
	
	
}

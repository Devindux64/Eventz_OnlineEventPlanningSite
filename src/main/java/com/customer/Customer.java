package com.customer;

import Person.Person;

public class Customer extends Person{


	private String UserName; 
	private String Password;
	
	
	
	public Customer(int id, String name, String email, String phone, String userName, String password) {
		super(id, name, email, phone);
		UserName = userName;
		Password = password;
	}
	
	


	public int getID() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getUserName() {
		return UserName;
	}

	public String getPassword() {
		return Password;
	}

	
	
}

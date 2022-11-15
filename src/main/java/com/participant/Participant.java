package com.participant;

import Person.Person;

public class Participant extends Person{
	private String age;
	private String nic;
	private String paid;
	
	public Participant(int id, String name, String email, String phone, String age, String nic, String paid) {
		super(id,name,email,phone);
		this.age = age;
		this.nic = nic;
		this.paid = paid;
		
	}

	public int getId() {
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
	
	public String getAge() {
		return age;
	}

	public String getNic() {
		return nic;
	}

	public String getPaid() {
		return paid;
	}

	public void setPaid(String paid) {
		this.paid = paid;
	}
	
	
	
	

}

package com.event;

public class event {

	private int EID;
	private String Etype;
	private String Ecategory;
	
	private String Ebudget;
	private String Edescription;
	
	private int Eventcode;
	
	public event(int eID, String etype, String ecategory, String ebudget, String edescription, int eventcode) {
		super();
		EID = eID;
		Etype = etype;
		Ecategory = ecategory;
		Ebudget = ebudget;
		Edescription = edescription;
		Eventcode = eventcode;
	}

	public int getEID() {
		return EID;
	}

	public String getEtype() {
		return Etype;
	}

	public String getEcategory() {
		return Ecategory;
	}

	public String getEbudget() {
		return Ebudget;
	}

	public String getEdescription() {
		return Edescription;
	}
	
	public int getEventcode() {
		return Eventcode;
	}
	
	
}

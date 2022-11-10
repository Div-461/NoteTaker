package com.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Register {
	
	@Id
	@GeneratedValue
	private int id;
	private String username;
	private String useremail;
	private String userpassword;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public Register(int id,String username, String useremail, String userpassword) {
		super();
		this.id = id;
		this.username = username;
		this.useremail = useremail;
		this.userpassword = userpassword;
	}
	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}

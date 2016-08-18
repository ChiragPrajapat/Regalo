package com.niit.regalo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="User")
public class User {
	

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="user_id")
	private int user_id;
	
//	@NotEmpty(message = "Name should not be empty")
	@Column(name = " firstname")
	private String user_firstname;
	@Column(name = "lastname")
	private String user_lastname;

	
//	@NotEmpty(message = "User name should not be empty")
	@Column(name = "username")
	private String user_username;

//	@NotEmpty(message = "password should not be empty")
//	@Size(min = 6, max = 15)
	@Column(name = "password")
	private String user_password;

//	@NotEmpty(message = "address should not be empty")
	@Column(name = "address")
	private String user_address;
	@Column(name = "gender")
	private String user_gender;
	@Column(name = "email" ,unique=true)
//	@NotEmpty(message = "Email address should not be empty")
//	@Email(message = "Enter Valid Email address")
	private String user_email;
	@Column(name = "contact")
//	@NotEmpty
	private String user_contact;
	@Column(name="Enabled")
	boolean enabled =true;
	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String toString() {
		return user_id + " " + user_firstname + " " + user_lastname;
	}
	
	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_firstname() {
		return user_firstname;
	}

	public void setUser_firstname(String user_firstname) {
		this.user_firstname = user_firstname;
	}

	public String getUser_lastname() {
		return user_lastname;
	}

	public void setUser_lastname(String user_lastname) {
		this.user_lastname = user_lastname;
	}

	public String getUser_username() {
		return user_username;
	}

	public void setUser_username(String user_username) {
		this.user_username = user_username;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public String getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_contact() {
		return user_contact;
	}

	public void setUser_contact(String user_contact) {
		this.user_contact = user_contact;
	}
}

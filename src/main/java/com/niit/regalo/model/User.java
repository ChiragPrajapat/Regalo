package com.niit.regalo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int user_id;
	
	@NotEmpty(message = "Name should not be empty")
	@Column(name = " firstname")
	private String user_firstname;
	@Column(name = "lastname")
	private String user_lastname;

	
	@NotEmpty(message = "User name should not be empty")
	@Column(name = "username")
	private String user_username;

	@NotEmpty(message = "password should not be empty")
	@Size(min = 6, max = 15)
	@Column(name = "password")
	private String user_password;

	@NotEmpty(message = "address should not be empty")
	@Column(name = "address")
	private String user_address;
	@Column(name = "gender")
	private String user_gender;
	@Column(name = "email")
	@NotEmpty(message = "Email address should not be empty")
	@Email(message = "Enter Valid Email address")
	private String user_email;
	@Column(name = "contact")
	@NotNull
	@Size(min = 10, max = 10)
	private int user_contact;

	public String toString() {
		return user_id + " " + user_firstname + " " + user_lastname;
	}
}

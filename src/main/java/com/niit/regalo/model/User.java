package com.niit.regalo.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="User")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="userId")
//	@OneToOne(mappedBy="UserId" , fetch=FetchType.EAGER)
	private int userId;
	
	@NotEmpty(message = "Name should not be empty")
	@Column(name = " firstname")
	private String user_firstname;
	@Column(name = "lastname")
	private String user_lastname;
//public Cart getCart() {
//		return cart;
//	}
//
//	public void setCart(Cart cart) {
//		this.cart = cart;
//	}
//
//@OneToOne(cascade=CascadeType.ALL)
//@JoinColumn(name="userId")
//	private Cart cart;
//	private Set<UserRoles> userRoles;
	
	@NotEmpty(message = "User name should not be empty")
	@Column(name = "username")
	private String username;

	@NotEmpty(message = "password should not be empty")
	@Size(min = 6, max = 15)
	@Column(name = "password")
	private String password;
	@NotEmpty(message = "address should not be empty")
	@Column(name = "address")
	private String user_address;
	@Column(name = "gender")
	private String user_gender;
	@Column(name = "email" ,unique=true)
	@NotEmpty(message = "Email address should not be empty")
	@Email(message = "Enter Valid Email address")
	private String user_email;
	@Column(name = "contact")
	@NotEmpty
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
		return userId + " " + user_firstname + " " + user_lastname;
	}
	
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userid) {
		this.userId = userid;
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



	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

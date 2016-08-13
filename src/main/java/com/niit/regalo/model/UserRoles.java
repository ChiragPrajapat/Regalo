package com.niit.regalo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class UserRoles {
@Id
@Column(name="U_id")
@GeneratedValue(strategy = GenerationType.AUTO)
	private int u_id;

@Column(name="AUTHORITY")
	private String authority;

@ManyToOne
@JoinColumn(name="user_id")
	private int user_id;


public int getU_id() {
	return u_id;
}
public void setU_id(int u_id) {
	this.u_id = u_id;
}
public String getAuthority() {
	return authority;
}
public void setAuthority(String authority) {
	this.authority = authority;
}
public int getUser_id() {
	return user_id;
}
public void setUser_id(int user_id) {
	this.user_id = user_id;
}
	
}

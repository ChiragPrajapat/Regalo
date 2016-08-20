package com.niit.regalo.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="User_Roles")
public class UserRoles {
@Id
@Column(name="U_id")
@GeneratedValue(strategy = GenerationType.AUTO)
private int u_id;

@Column(name="authority")
	private String authority;
//@ManyToOne(cascade={CascadeType.ALL})
//@JoinColumn(name="user_id", updatable=false , insertable=false)
//private User user;
@Column(name="userid")
	private int userid;


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
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
	
}

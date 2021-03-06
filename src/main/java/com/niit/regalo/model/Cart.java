package com.niit.regalo.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Cart")
public class Cart implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cartId;
//	=@OneToMany(mappedBy="Cart", cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	//@OneToOne(fetch=FetchType.EAGER)
//	@JoinColumn(name="UserId")
	
	private int productId;
//	
//	public User getUser() {
//		return user;
//	}
//	public void setUser(User user) {
//		this.user = user;
//	}
	private int quantity;
	private double price;
	private String address;
	private String Contact;
	private String productname;
/*//	@JoinColumn(name="UserId")
	private int userId;
//	@OneToOne
//	@JoinColumn(name="userId" ,insertable=false ,  updatable=false)
//	private User user;
	
	
//	public int getUserId() {
//		return userId;
//	}
	public void setUserId(int userId) {
		this.userId = userId;
	}*/
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact() {
		return Contact;
	}
	public void setContact(String contact) {
		Contact = contact;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	
	
	}
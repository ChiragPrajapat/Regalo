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
public class Supplier {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	private int supplier_id;
	@Column
	@NotEmpty(message = "Supplier name should not be empty")
	private String supplier_name;
	@Column
	@NotNull(message = "password should not be empty")
	@Size(min = 6, max = 15)
	private String supplier_password;
	@Column
	@NotEmpty(message = "address should not be empty")
	private String supplier_address;
	@Column

	@NotNull(message = "Email address should not be empty")
	@Email(message = "Enter Valid Email address")
	private String supplier_email;
	@Column
	@NotNull
	@Size(min = 10, max = 10)
	private int supplier_contact;
	
	public int getSupplier_id() {
		return supplier_id;
	}

	public void setSupplier_id(int supplier_id) {
		this.supplier_id = supplier_id;
	}

	public String getSupplier_name() {
		return supplier_name;
	}

	public void setSupplier_suppliername(String supplier_name) {
		this.supplier_name = supplier_name;
	}

	public String getSupplier_password() {
		return supplier_password;
	}

	public void setSupplier_password(String supplier_password) {
		this.supplier_password = supplier_password;
	}

	public String getSupplier_address() {
		return supplier_address;
	}

	public void setSupplier_address(String supplier_address) {
		this.supplier_address = supplier_address;
	}

	public String getSupplier_email() {
		return supplier_email;
	}

	public void setSupplier_email(String supplier_email) {
		this.supplier_email = supplier_email;
	}

	public int getSupplier_contact() {
		return supplier_contact;
	}

	public void setSupplier_contact(int supplier_contact) {
		this.supplier_contact = supplier_contact;
	}
	
	public String toString() {
		return supplier_id + " " + supplier_name;
	}


}

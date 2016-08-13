package com.niit.regalo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="Category")
public class Category {
	



	@Id
	@Column(name="Id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int category_id;
	@Column(name="name")
	@NotEmpty(message = "Name should not be empty")
	private String category_name;
	@Column(name="description")
	private String category_description;
	
	


	
	public int getCategory_id() {
		return category_id;
	}






	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}






	public String getCategory_name() {
		return category_name;
	}






	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}






	public String getCategory_description() {
		return category_description;
	}






	public void setCategory_description(String category_description) {
		this.category_description = category_description;
	}




	
	

	public String toString() {
		return category_id + " " + category_name;
	}



}

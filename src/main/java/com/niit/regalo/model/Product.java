package com.niit.regalo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int product_id;
	@NotEmpty(message = "Name should not be empty")
	private String product_name;
	@NotEmpty(message = "Supplier should not be empty")
	private String product_supplier;
	@NotNull
	@Min(1)
	private int product_price;

	private String product_description;
	@NotEmpty
	private String product_category;
//	@NotNull
//	@Min(1)
//	private int stock;
//	public int getStock() {
//		return stock;
//	}
//
//	public void setStock(int stock) {
//		this.stock = stock;
//	}

	@Column(name = "ImagePath")
	private String image;

	@Transient
	private MultipartFile file;
@Transient
	private MultipartFile storeFile;
	
	public Product() {

	}

	public Product(int product_id, String product_name, String product_supplier, int product_price,
			String product_description, String product_category) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_supplier = product_supplier;
		this.product_price = product_price;
		this.product_description = product_description;
		this.product_category = product_category;
	}

	public String getProduct_description() {
		return product_description;
	}

	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}

	public String getProduct_category() {
		return product_category;
	}

	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_supplier() {
		return product_supplier;
	}

	public void setProduct_supplier(String product_supplier) {
		this.product_supplier = product_supplier;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public String toString() {
		return product_id + " " + product_name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

}

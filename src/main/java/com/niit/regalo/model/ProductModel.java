package com.niit.regalo.model;

import java.util.ArrayList;
import java.util.List;



public class ProductModel {
	ArrayList<Product> list = new ArrayList<Product>();

	public ProductModel() {
		list.add(new Product("1", "Coffie Mug", "Archis gallery", 350, "personalize mug", "birthday"));
		list.add(new Product("2", "Chocolate box", " Gifts store", 1350, "Rich almond chocolates", "birthday"));
		list.add(
				new Product("3", "Photo Frame", "Fairy Land", 750, "Beautiful Glass foldable Photo frame", "birthday"));
		list.add(new Product("4", "mobile", "Reliance Digital", 10350, "An android smartphone", "christmas"));
		list.add(new Product("5", "teddy bear", "Archis gallery", 900, "white teddy bears", "wedding"));
		list.add(new Product("6", "laptop", "Reliance Digital", 50350, "dell laptop", "christmas"));
		list.add(
				new Product("7", "coloured Coffie Mug", "Archis gallery", 350, "personalize coloured mug", "birthday"));

	}
	public ArrayList<Product> getByProduct_category(String product_category)
	
	{
		ArrayList<Product> catPrd = new ArrayList<Product>();
		for (Product product : list)
		{
			if(product.getProduct_category().equals(product_category))
			{
				catPrd.add(product);
			}
			
			
		}
		return catPrd;
	}
	
	public List<Product> getAllProduct()

{
	
		return list;
	}

	
	}

package com.model;

public class Category {
	long id_category;
	String name_category;

	public Category() {

	}

	public Category(long id_category, String name_category) {
		this.id_category = id_category;
		this.name_category = name_category;
	}

	public long getId_category() {
		return id_category;
	}

	public void setId_category(long id_category) {
		this.id_category = id_category;
	}

	public String getName_category() {
		return name_category;
	}

	public void setName_category(String name_category) {
		this.name_category = name_category;
	}

	@Override
	public String toString() {
		return "Category [id_category=" + id_category + ", name_category=" + name_category + "]\n";
	}

}

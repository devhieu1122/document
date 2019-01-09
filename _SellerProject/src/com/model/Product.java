package com.model;

import java.sql.Date;

public class Product {
	long id_product;
	long id_category;
	long id_producer;
	String name;
	long price;
	int quantity;
	String image;
	String discriptions;
	Date time_update;
	int promotion;
	Date start_promotion;
	Date end_promotion;

	public Product() {
	}

	public Product(long id_product, long id_category, long id_producer, String name, long price, int quantity,
			String image, String discriptions, Date time_update, int promotion, Date start_promotion,
			Date end_promotion) {
		super();
		this.id_product = id_product;
		this.id_category = id_category;
		this.id_producer = id_producer;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.image = image;
		this.discriptions = discriptions;
		this.time_update = time_update;
		this.promotion = promotion;
		this.start_promotion = start_promotion;
		this.end_promotion = end_promotion;
	}

	public long getId_product() {
		return id_product;
	}

	public void setId_product(int id_product) {
		this.id_product = id_product;
	}

	public long getId_category() {
		return id_category;
	}

	public void setId_category(int id_category) {
		this.id_category = id_category;
	}

	public long getId_producer() {
		return id_producer;
	}

	public void setId_producer(int id_producer) {
		this.id_producer = id_producer;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDiscriptions() {
		return discriptions;
	}

	public void setDiscriptions(String discriptions) {
		this.discriptions = discriptions;
	}

	public Date getTime_update() {
		return time_update;
	}

	public void setTime_update(Date time_update) {
		this.time_update = time_update;
	}

	public int getPromotion() {
		return promotion;
	}

	public void setPromotion(int promotion) {
		this.promotion = promotion;
	}

	public Date getStart_promotion() {
		return start_promotion;
	}

	public void setStart_promotion(Date start_promotion) {
		this.start_promotion = start_promotion;
	}

	public Date getEnd_promotion() {
		return end_promotion;
	}

	public void setEnd_promotion(Date end_promotion) {
		this.end_promotion = end_promotion;
	}

	@Override
	public String toString() {
		return "Product [id_product=" + id_product + ", id_category=" + id_category + ", id_producer=" + id_producer
				+ ", name=" + name + ", price=" + price + ", quantity=" + quantity + ", image=" + image
				+ ", discriptions=" + discriptions + ", time_update=" + time_update + ", promotion=" + promotion
				+ ", start_promotion=" + start_promotion + ", end_promotion=" + end_promotion + "]\n";
	}

}

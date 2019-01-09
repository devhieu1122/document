package com.model;

public class Producer {
	long id_producer;
	long id_category;
	String name_producer;
	String address;
	String phone;

	public Producer() {
	}

	public Producer(long id_producer, long id_category, String name_producer, String address, String phone) {
		super();
		this.id_producer = id_producer;
		this.id_category = id_category;
		this.name_producer = name_producer;
		this.address = address;
		this.phone = phone;
	}

	public long getId_producer() {
		return id_producer;
	}

	public void setId_producer(long id_producer) {
		this.id_producer = id_producer;
	}

	public String getName_producer() {
		return name_producer;
	}

	public void setName_producer(String name_producer) {
		this.name_producer = name_producer;
	}
	public long getId_category() {
		return id_category;
	}

	public void setId_category(long id_category) {
		this.id_category = id_category;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}

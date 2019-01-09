package com.model;

import java.sql.Timestamp;

public class Bill {
	long id_bill;
	long id_user;
	double total;
	String payment;
	String address;
	Timestamp date;
	String name;
	String phone;

	public Bill() {

	}

	public Bill(long id_bill, long id_user, double total, String payment, String address, Timestamp date, String name,
			String phone) {
		super();
		this.id_bill = id_bill;
		this.id_user = id_user;
		this.total = total;
		this.payment = payment;
		this.address = address;
		this.date = date;
		this.name = name;
		this.phone = phone;
	}

	public long getId_bill() {
		return id_bill;
	}

	public void setId_bill(long id_bill) {
		this.id_bill = id_bill;
	}

	public long getId_user() {
		return id_user;
	}

	public void setId_user(long id_user) {
		this.id_user = id_user;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}

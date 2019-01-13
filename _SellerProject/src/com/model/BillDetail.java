package com.model;

public class BillDetail {
	long id_billDetail;
	long id_bill;
	long id_product;
	long price;
	int quantity;

	public BillDetail() {

	}

	public BillDetail(long id_billDetail, long id_bill, long id_product, long price, int quantity) {
		super();
		this.id_billDetail = id_billDetail;
		this.id_bill = id_bill;
		this.id_product = id_product;
		this.price = price;
		this.quantity = quantity;
	}

	public long getId_billDetail() {
		return id_billDetail;
	}

	public void setId_billDetail(long id_billDetail) {
		this.id_billDetail = id_billDetail;
	}

	public long getId_bill() {
		return id_bill;
	}

	public void setId_bill(long id_bill) {
		this.id_bill = id_bill;
	}

	public long getId_product() {
		return id_product;
	}

	public void setId_product(long id_product) {
		this.id_product = id_product;
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

}

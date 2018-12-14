package com.DAO;

import java.util.List;

import com.model.Product;

public interface IProductDAO {
	public void addProduct(Product p);

	public List<Product> getList();

	public List<Product> getListByCategory(int id_category);

	public Product getProduct(int id_product);

	public List<Product> searchList(String name_product, String name_category);
}

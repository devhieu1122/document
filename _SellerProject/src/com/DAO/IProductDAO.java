package com.DAO;
import java.util.ArrayList;
import java.util.List;

import com.model.Product;

public interface IProductDAO {
	public void addProduct(Product p);

	public List<Product> getList();

	public List<Product> getListByCategory(long id_category);

	public List<Product> getListByProducer(long id_producer);

	public Product getProduct(long id_product);

	public List<Product> searchList(String name_product, String name_category);

	public List<Product> getListPage(ArrayList<Product> arr, int start, int end);

	public int countByCategory(long id_category);
	
	public List<Product> getListProductByCategory(long id_category, int start, int end);
}

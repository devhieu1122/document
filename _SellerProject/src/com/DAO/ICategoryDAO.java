package com.DAO;

import java.util.List;

import com.model.Category;

public interface ICategoryDAO {
	//add new a Category
	public void addCategory(Category c);
	//Xóa 1 category 
	public void deleteCategory(long id_category);
	//Lấy danh sách category
	public List<Category> getList();
	//Lấy ra 1 category
	public Category getCategory(long id_category);
	//Cập nhật category sau khi thay đổi
	public void updateCategory(Category c);

}

package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.db.SQLConnection;
import com.model.Category;
import com.mysql.jdbc.PreparedStatement;

public class CategoryDAO implements ICategoryDAO {
	Connection _conn = null;
	String sql = null;
	PreparedStatement ps = null;

	@Override
	public void addCategory(Category c) {
		sql = "INSERT INTO category VALUE(?,?)";
		try {
			_conn = SQLConnection.connect();
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setInt(1, c.getId_category());
			ps.setString(2, c.getName_category());
			ps.executeUpdate();
			_conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteCategory(int id_category) {
		sql = "DELETE FROM category id_category WHERE id_category=?";
		try {
			_conn = SQLConnection.connect();
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setInt(1, id_category);
			ps.executeUpdate();
			_conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Category> getList() {
		sql = "select * from category";
		List<Category> _list = new ArrayList<>();
		try {
			_conn = SQLConnection.connect();
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int id_category = rs.getInt("id_category");
				String name_category = rs.getString("name_category");

				_list.add(new Category(id_category, name_category));
			}
			_conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return _list;
	}

	@Override
	public Category getCategory(int id_category) {
		sql = "select * from category where id_categoy=?";
		Category _category = new Category();
		_conn = SQLConnection.connect();

		try {
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setInt(1, id_category);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id_cat = rs.getInt("id_category");
				String name_cat = rs.getString("name_category");
				_category = new Category(id_cat, name_cat);
			}
			_conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return _category;
	}

	@Override
	public void updateCategory(Category c) {
		sql = "update category set id_category=? name_category=?";
		_conn = SQLConnection.connect();
		try {
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setInt(1, c.getId_category());
			ps.setString(2, c.getName_category());
			ps.executeUpdate();
			_conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static void main(String[] args) {
		CategoryDAO cat = new CategoryDAO();
		Category category = new Category();
		System.out.println(cat.getList());
	}

}

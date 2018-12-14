package com.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.db.SQLConnection;
import com.model.Product;
import com.mysql.jdbc.PreparedStatement;

public class ProductDAO implements IProductDAO {
	Connection _conn = null;
	String sql = null;
	PreparedStatement ps = null;

	@Override
	public void addProduct(Product p) {
		_conn = SQLConnection.connect();
		sql = "insert into `product` value(?,?,?,?,?,?,?,?,?,?,?,?";
		try {
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setInt(1, p.getId_product());
			ps.setInt(2, p.getId_category());
			ps.setInt(3, p.getId_producer());
			ps.setString(4, p.getName());
			ps.setLong(5, p.getPrice());
			ps.setInt(6, p.getQuantity());
			ps.setString(7, p.getImage());
			ps.setString(8, p.getDiscriptions());
			ps.setDate(9, p.getTime_update());
			ps.setInt(10, p.getPromotion());
			ps.setDate(11, p.getStart_promotion());
			ps.setDate(12, p.getEnd_promotion());

			ps.executeUpdate();
			_conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public List<Product> getList() {
		_conn = SQLConnection.connect();
		sql = "select * from product";
		List<Product> list = new ArrayList<Product>();
		try {
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id_product = rs.getInt("id_product");
				int id_cat = rs.getInt("id_category");
				int id_producer = rs.getInt("id_producer");
				String name = rs.getString("name_product");
				long price = rs.getLong("price");
				int quanlity = rs.getInt("quanlity");
				String image = rs.getString("images");
				String discriptions = rs.getString("discriptions");
				Date time = rs.getDate("time_update");
				int promotion = rs.getInt("promotion");
				Date start = rs.getDate("start_promotion");
				Date end = rs.getDate("end_promotion");
				list.add(new Product(id_product, id_cat, id_producer, name, price, quanlity, image, discriptions, time,
						promotion, start, end));
			}
			_conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Product> getListByCategory(int id_category) {
		_conn = SQLConnection.connect();
		sql = "select * from product where id_category=?";
		List<Product> list = new ArrayList<Product>();

		try {
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setInt(1, id_category);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id_product = rs.getInt("id_product");
				int id_cat = rs.getInt("id_category");
				int id_producer = rs.getInt("id_producer");
				String name = rs.getString("name_product");
				long price = rs.getLong("price");
				int quanlity = rs.getInt("quanlity");
				String image = rs.getString("images");
				String discriptions = rs.getString("discriptions");
				Date time = rs.getDate("time_update");
				int promotion = rs.getInt("promotion");
				Date start = rs.getDate("start_promotion");
				Date end = rs.getDate("end_promotion");
				list.add(new Product(id_product, id_cat, id_producer, name, price, quanlity, image, discriptions, time,
						promotion, start, end));
			}
			_conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public Product getProduct(int id_product) {
		_conn = SQLConnection.connect();
		sql = "select * from `product` where 'id_product'=?";
		Product p = new Product();
		try {
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setInt(1, id_product);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id_product");
				int id_cat = rs.getInt("id_category");
				int id_producer = rs.getInt("id_producer");
				String name = rs.getString("name_product");
				long price = rs.getLong("price");
				int quanlity = rs.getInt("quanlity");
				String image = rs.getString("images");
				String discriptions = rs.getString("discriptions");
				Date time = rs.getDate("time_update");
				int promotion = rs.getInt("promotion");
				Date start = rs.getDate("start_promotion");
				Date end = rs.getDate("end_promotion");
				p = new Product(id, id_cat, id_producer, name, price, quanlity, image, discriptions, time, promotion,
						start, end);
			}
			_conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return p;
	}

	@Override
	public List<Product> searchList(String name_product, String name_category) {
		_conn=SQLConnection.connect();
		if(!name_category.equals("")&&!name_product.equals("")) {
			sql = "select from product, category where name_product = N'"+name_product+"'and product.id_category = category.id_category and name-category =N'"+name_category+"'";
		}else {
			if(!name_product.equals("")) {
				sql ="select * from product, category where  product.id_category = category.id_category and name-category =N'" + name_category+"'";
			}else {
				if(name_category.equals("")) {
					sql = "select * from product, category where name_product =N'" +name_product +"'and product.id_category = category.id_category";
				}
			}
		}
		 
		List<Product> list = new ArrayList<Product>();
		
		try {
			ps= (PreparedStatement) _conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				int id = rs.getInt("id_product");
				int id_cat = rs.getInt("id_category");
				int id_producer = rs.getInt("id_producer");
				String name = rs.getString("name_product");
				long price = rs.getLong("price");
				int quanlity = rs.getInt("quanlity");
				String image = rs.getString("images");
				String discriptions = rs.getString("discriptions");
				Date time = rs.getDate("time_update");
				int promotion = rs.getInt("promotion");
				Date start = rs.getDate("start_promotion");
				Date end = rs.getDate("end_promotion");
				list.add(new Product(id, id_cat, id_producer, name, price, quanlity, image, discriptions, time,
						promotion, start, end));
			}
			_conn.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public static void main(String[] args) {
		ProductDAO p = new ProductDAO();
//		System.out.println(p.getListByCategory(1).toString());
		System.out.println(p.getProduct(2).toString());
	}

}

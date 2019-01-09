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
			ps.setLong(1, p.getId_product());
			ps.setLong(2, p.getId_category());
			ps.setLong(3, p.getId_producer());
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
				long id_product = rs.getLong("id_product");
				long id_cat = rs.getLong("id_category");
				long id_producer = rs.getLong("id_producer");
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
	public List<Product> getListByCategory(long id_category) {
		_conn = SQLConnection.connect();
		sql = "select * from product where id_category=?";
		List<Product> list = new ArrayList<Product>();

		try {
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setLong(1, id_category);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				long id_product = rs.getLong("id_product");
				long id_cat = rs.getLong("id_category");
				long id_producer = rs.getLong("id_producer");
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
	public List<Product> getListByProducer(long id_producer) {
		_conn = SQLConnection.connect();
		sql = "select * from product where id_producer=?";
		List<Product> list = new ArrayList<Product>();

		try {
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product());
			}
			_conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public Product getProduct(long id_product) {
		_conn = SQLConnection.connect();
		sql = "select * from `product` where `id_product`=?";
		Product p = new Product();
		try {
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setLong(1, id_product);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				long id = rs.getLong("id_product");
				long id_cat = rs.getLong("id_category");
				long id_producer = rs.getLong("id_producer");
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
		_conn = SQLConnection.connect();
		if (!name_category.equals("") && !name_product.equals("")) {
			sql = "select * from `product`, `category` where `name_product` = N'" + name_product
					+ "'and product.id_category = category.id_category and `name_category` =N'" + name_category + "'";
		} else {
			if (!name_product.equals("")) {
				sql = "select * from `product`, `category` where  product.id_category = category.id_category and name_category =N'"
						+ name_category + "'";
			} else {
				if (name_category.equals("")) {
					sql = "select * from product, category where name_product =N'" + name_product
							+ "'and product.id_category = category.id_category";
				}
			}
		}

		List<Product> list = new ArrayList<Product>();

		try {
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				long id = rs.getLong("id_product");
				long id_cat = rs.getLong("id_category");
				long id_producer = rs.getLong("id_producer");
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

	public int countListPage(long id_category, int first, int end) throws SQLException {
		int count = 0;
		_conn = SQLConnection.connect();
		sql = "select count(`id_product`) from `product` where `id_category` = ? ";
		ps = (PreparedStatement) _conn.prepareStatement(sql);
		ps.setLong(1, id_category);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			count = rs.getInt(1);
		}
		_conn.close();
		return count;
	}

	@Override
	public List<Product> getListPage(ArrayList<Product> arr, int start, int end) {
		List<Product> list = new ArrayList<Product>();
		for (int i = start; i < end; i++) {
			list.add(arr.get(i));
		}
		return list;
	}

	// đếm số sản phẩm theo id thể loại//
	@Override
	public int countByCategory(long id_category) {
		int count = 0;
		_conn = SQLConnection.connect();
		sql = "select count(`id_product`) from `product` where `id_category` = ? ";
		try {
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setLong(1, id_category);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				count = rs.getInt(1);
			}
			_conn.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}

	@Override
	public List<Product> getListProductByCategory(long id_category, int start, int end) {
		_conn = SQLConnection.connect();
		sql = "select * from `product` where `id_category`=? LIMIT ?,?";
		List<Product> list = new ArrayList<Product>();

		try {
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setLong(1, id_category);
			ps.setLong(2, start);
			ps.setLong(3, end);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				long id_product = rs.getLong("id_product");
				long id_cat = rs.getLong("id_category");
				long id_producer = rs.getLong("id_producer");
				String name = rs.getString("name_product");
				long price = rs.getLong("price");
				int quanlity = rs.getInt("quanlity");
				String image = rs.getString("images");
				String discriptions = rs.getString("discriptions");
				Date time = rs.getDate("time_update");
				int promotion = rs.getInt("promotion");
				Date start_promotion = rs.getDate("start_promotion");
				Date end_promotion = rs.getDate("end_promotion");
				list.add(new Product(id_product, id_cat, id_producer, name, price, quanlity, image, discriptions, time,
						promotion, start_promotion, end_promotion));
			}
			_conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;

	}

	public static void main(String[] args) {
		ProductDAO p = new ProductDAO();
		// System.out.println(p.getListByCategory(1).toString());
		// System.out.println(p.getProduct(2).toString());
		// System.out.println(p.searchList("Samsung", "Điện thoại"));

		/*List<Product> list = p.getListPage((ArrayList<Product>) p.getListByCategory(1), 0, 5);

		for (Product p1 : list) {

			System.out.println(p1.getName());
			System.out.println(p1.getPrice());
		}

		System.out.println(p.countByCategory(1));
		System.out.println(p.getListProductByCategory(1, 0, 8));*/
		System.out.println(p.getListByCategory(3));
	}

}

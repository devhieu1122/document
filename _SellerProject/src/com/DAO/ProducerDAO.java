package com.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.model.*;

import com.db.SQLConnection;
import com.mysql.jdbc.PreparedStatement;

public class ProducerDAO {
	String sql = null;
	Connection _connect = null;
	PreparedStatement ps = null;

	public List<Producer> getListByCategory(long id_category) {
		_connect = SQLConnection.connect();
		sql = "select * from producer where id_category=?";
		List<Producer> list = new ArrayList<Producer>();

		try {
			ps = (PreparedStatement) _connect.prepareStatement(sql);
			ps.setLong(1, id_category);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				long id = rs.getLong("id_producer");
				long id_cat = rs.getLong("id_category");
				String name = rs.getString("name");
				String address = rs.getString("address");
				String phone = rs.getString("phone");
				list.add(new Producer(id, id_cat, name, address, phone));
			}
			_connect.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}
	public static void main(String[] args) {
		ProducerDAO pDAO = new ProducerDAO();
		System.out.println(pDAO.getListByCategory(1));
		System.out.println("Hello");
	}
}

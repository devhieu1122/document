package com.DAO;

import java.sql.Connection;
import java.sql.SQLException;

import com.db.SQLConnection;
import com.model.Bill;
import com.mysql.jdbc.PreparedStatement;

public class BillDAO {
	public void insertBill(Bill bill) {
		Connection connect = SQLConnection.connect();
		String sql = "insert into bill values(?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = (PreparedStatement) connect.prepareStatement(sql);
			ps.setLong(1, bill.getId_bill());
			ps.setLong(2, bill.getId_user());
			ps.setDouble(3, bill.getTotal());
			ps.setString(4, bill.getPayment());
			ps.setString(5, bill.getAddress());
			ps.setTimestamp(6, bill.getDate());
			ps.setString(7, bill.getName());
			ps.setString(8, bill.getPhone());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {

	}
}

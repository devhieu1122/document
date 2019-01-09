package com.DAO;

import java.sql.Connection;
import java.sql.SQLException;

import com.db.SQLConnection;
import com.model.BillDetail;
import com.mysql.jdbc.PreparedStatement;

public class DetailBillDAO {
	public void insertBillDetail(BillDetail bDetail) {
		Connection connect = SQLConnection.connect();
		String sql = "insert into billDetail values (?,?,?,?,?)";
		try {
			PreparedStatement ps = (PreparedStatement) connect.prepareCall(sql);
			ps.setLong(1, bDetail.getId_billDetail());
			ps.setLong(2, bDetail.getId_bill());
			ps.setLong(3, bDetail.getId_product());
			ps.setDouble(4, bDetail.getPrice());
			ps.setInt(5, bDetail.getQuantity());
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

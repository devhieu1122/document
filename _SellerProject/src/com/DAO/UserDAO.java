package com.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import com.db.SQLConnection;
import com.model.User;
import com.mysql.jdbc.PreparedStatement;
import com.tool.MD5_MaHoaPass;

public class UserDAO implements IUserDAO {
	Connection _conn = null;
	String sql = null;
	PreparedStatement ps;

	@Override
	public void _addUser(User _user) {
		sql = "insert into user value(?,?,?,?,?,?,?,?,?,?)";

		try {
			_conn = (Connection) SQLConnection.connect();
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setInt(1, _user.get_userId());
			ps.setString(2, _user.get_userName());
			ps.setString(3, _user.get_name());
			ps.setString(4, _user.get_pass());
			ps.setDate(5, _user.get_birth());
			ps.setString(6, _user.get_gender());
			ps.setString(7, _user.get_email());
			ps.setString(8, _user.get_noPhone());
			ps.setString(9, _user.get_address());
			ps.setInt(10, _user.get_role());
			ps.executeUpdate();
			_conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean _checkUser(String _userName) {
		sql = "select * from user where username=?";

		try {
			_conn = (Connection) SQLConnection.connect();
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setString(1, _userName);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				_conn.close();
				return true;
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}
	@Override
	public boolean _checkEmail(String email) {
		sql = "select * from user where email=?";

		try {
			_conn = (Connection) SQLConnection.connect();
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				_conn.close();
				return true;
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public boolean _login(String _userName, String _password) {
		sql = "SELECT * FROM user WHERE username=? AND password=?";
		try {
			_conn = (Connection) SQLConnection.connect();
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setString(1, _userName);
			ps.setString(2, _password);
			ResultSet rs = ps.executeQuery();
/*			while (rs != null && rs.next()) {
				_user = new User();
				_user.set_userId(rs.getObject("userId").toString() != null ? Integer.valueOf(rs.getObject("userId").toString()) : null);
				_user.set_userName(rs.getObject("username") != null ? rs.getObject("username").toString() : "");
				_user.set_name(rs.getObject("name").toString() != null ? rs.getObject("name").toString() : "");
				_user.set_pass(rs.getObject("password").toString() != null ? rs.getObject("password").toString() : "");
				_user.set_birth(rs.getDate("birth"));
				_user.set_gender(rs.getObject("gender").toString()!=null ?rs.getObject("email").toString():"");
				_user.set_email(rs.getObject("email").toString() != null ? rs.getObject("email").toString() : "");
				_user.set_noPhone(rs.getObject("phone").toString() != null ? rs.getObject("phone").toString() : "");
				_user.set_address(rs.getObject("address").toString() != null ? rs.getObject("address").toString() : "");
				_user.set_role(rs.getObject("role").toString() != null ? Integer.valueOf(rs.getObject("role").toString()) : 0);
			}*/
			if(rs.next()){
			_conn.close();
			return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public void updateUser(User _user) {
		sql = "update user set userId=?, name=?, password=?, birth=?, gender=?, email=?,phone=?, address=?, role=? where username=? ";
		try {
			_conn = (Connection) SQLConnection.connect();
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setInt(1, _user.get_userId());
			ps.setString(2, _user.get_name());
			ps.setString(3, _user.get_pass());
			ps.setDate(4, _user.get_birth());
			ps.setString(5, _user.get_gender());
			ps.setString(6, _user.get_email());
			ps.setString(7, _user.get_noPhone());
			ps.setString(8, _user.get_address());
			ps.setInt(9, _user.get_role());
			ps.setString(10, _user.get_userName());
			ps.executeUpdate();
			_conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public User getUser(String _Iname) {
		sql = "select * from user where username=?";
		User _user = new User();
		try {
			_conn = (Connection) SQLConnection.connect();
			ps = (PreparedStatement) _conn.prepareStatement(sql);
			ps.setString(1, _Iname);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				int _userId = rs.getInt("userId");
				String _userName = rs.getString("username");
				String _name = rs.getString("name");
				String _pass = rs.getString("password");
				Date _birth = rs.getDate("birth");
				String _gender = rs.getString("gender");
				String _email = rs.getString("email");
				String _noPhone = rs.getString("phone");
				String _address = rs.getString("address");
				int _role = rs.getInt("role");
				_user = new User(_userId, _userName, _name, _pass, _birth, _gender, _email, _noPhone, _address, _role);
			}
			_conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return _user;
	}
	
	/*public boolean delete(String userName) {
		sql = "delete from user where userId=?";
		
		User _user = new User();
		try {
			_conn = SQLConnection.connect();
			ps=(PreparedStatement) _conn.prepareStatement(sql);
			ps.setString(1, userName);
			ResultSet rs = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/

	// test
	public static void main(String[] args){
		UserDAO _dao = new UserDAO();
		String pass = "12345";
		Date birth = null;
		
//		_dao._addUser(new User(4, "nguyenhieu2pro2", "Nguyen Hieu", "123456", null, "nam", "nguyenhieu2pro@gmail.com", "0164470022", null, 1));
//		System.out.println(_dao._checkUser("dfg"));
//		_dao.updateUser(new User(4, "dfg", "Nguyen Hieu", MD5_MaHoaPass.maHoaDuLieu("123456"), null, "nam", "hieubungke1122@gmail.com", "0164470022", null, 1));
		
//		System.out.println(_dao.getUser("nguyen hieu"));
		System.out.println(_dao._login("nguyenvana", MD5_MaHoaPass.maHoaDuLieu("12345")));
		/*UserDAO userDAO = new UserDAO();
		String username= "nguyenhieu2pro";
		User user= userDAO.getUser(username);
		System.out.println(user.get_name());*/
	}

}

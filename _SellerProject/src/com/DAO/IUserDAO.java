package com.DAO;


import com.model.User;

public interface IUserDAO {
public void _addUser(User _user);
public boolean _checkUser(String _userName) ;
public boolean _login(String _userName, String _password);
public void updateUser(User _user);
public User getUser(String _userName);
}

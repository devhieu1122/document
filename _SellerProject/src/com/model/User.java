package com.model;

import java.sql.Date;

public class User {
	private int _userId;
	private String _userName;
	private String _name;
	private String _pass;
	private java.sql.Date _birth;
	private String _gender;
	private String _email;
	private String _noPhone;
	private String _address;
	private int _role;

	public User() {

	}

	public User(int _userId, String _userName, String _name, String _pass, Date _birth, String _gender, String _email,
			String _noPhone, String _address, int _role) {
		super();
		this._userId = _userId;
		this._userName = _userName;
		this._name = _name;
		this._pass = _pass;
		this._birth = _birth;
		this._gender = _gender;
		this._email = _email;
		this._noPhone = _noPhone;
		this._address = _address;
		this._role = _role;
	}

	public int get_userId() {
		return _userId;
	}

	public void set_userId(int _userId) {
		this._userId = _userId;
	}

	public String get_userName() {
		return _userName;
	}

	public void set_userName(String _userName) {
		this._userName = _userName;
	}

	public String get_name() {
		return _name;
	}

	public void set_name(String _name) {
		this._name = _name;
	}

	public String get_pass() {
		return _pass;
	}

	public void set_pass(String _pass) {
		this._pass = _pass;
	}

	public java.sql.Date get_birth() {
		return _birth;
	}

	public void set_birth(java.sql.Date _birth) {
		this._birth = _birth;
	}

	public String get_gender() {
		return _gender;
	}

	public void set_gender(String _gender) {
		this._gender = _gender;
	}

	public String get_email() {
		return _email;
	}

	public void set_email(String _email) {
		this._email = _email;
	}

	public String get_noPhone() {
		return _noPhone;
	}

	public void set_noPhone(String _noPhone) {
		this._noPhone = _noPhone;
	}

	public String get_address() {
		return _address;
	}

	public void set_address(String _address) {
		this._address = _address;
	}

	public int get_role() {
		return _role;
	}

	public void set_role(int _role) {
		this._role = _role;
	}

	@Override
	public String toString() {
		return "id: " + _userId + " username: " + _userName + " name: " + _name + " pass: " + _pass + " birth: " + _birth
				+ " gender: " + _gender + " email: " + _email + " address: " + _address + " role: " + _role;
	}

}
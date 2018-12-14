package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class SQLConnection {
    static Connection _conn;

    public static Connection connect(){
    	String _url = "jdbc:mysql://localhost:3306/seller?useUnicode=true&characterEncoding=utf-8";
        String _user = "root";
        String _password = "";
       
            try {
				Class.forName("com.mysql.jdbc.Driver");
			_conn = DriverManager.getConnection(_url, _user,_password);
			} catch (Exception e) {
				e.printStackTrace();
			}
            return _conn;
         

    }

    public static void main(String[] args){
       Connection _conn = SQLConnection.connect();
       if(_conn !=null) {
    	   System.out.println("successful");
       }
       else {
    	   System.out.println("fail");
       }
    }

}

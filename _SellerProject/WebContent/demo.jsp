<%@page import="com.model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.CategoryDAO"%>
<%@page import="com.db.SQLConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>Insert title here</title>
</head>
<body>
<%CategoryDAO cat = new CategoryDAO();
List<Category> list = new ArrayList<Category>();
list =cat.getList();
%>
<%for(Category ca:list) {%>
<h2><%=ca.getId_category() %></h2>
<span><%=ca.getName_category() %></span>
<%} %>
</body>
</html>
<%@page import="com.model.Cart"%>
<%@page import="com.DAO.UserDAO"%>
<%@page import="com.model.User"%>
<%@page import="java.io.IOException"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page import="com.DAO.ProducerDAO"%>
<%@page import="com.model.Producer"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="com.model.Product"%>
<%@page import="com.DAO.ProductDAO"%>
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
	<jsp:include page="header.jsp"></jsp:include>
	<%--<%
			UserDAO userDAO = new UserDAO();
	String username = null;
			 Cookie[] cookies = request.getCookies();
			if (cookies != null) {
				for (Cookie cookie : cookies) {
					if (cookie.getName().equals("username"))
						username = cookie.getValue();
				}
			}
			if (username != null) {
				User use = userDAO.getUser(username);
				
	
		
		
		<%--<%ProductDAO DAO=new ProductDAO();
			Product p=DAO.getProduct(1);
			Cart cart= (Cart) request.getAttribute("cart");
			if(cart==null){
				cart= new Cart();
				request.setAttribute("cart", cart);
			}
		%> --%>
		<%-- <p><a href="ServletCart?command=plus&id_product=<%=p.getId_category() %>"><%=p.getId_category() %>
				<h2><%=p.getName()%></h2>
		
		</a></p> --%>
		
		<%
		User user = new UserDAO().getUser((String) session.getAttribute("username"));
		%>
		
		<h2><%=user.get_userId() %></h2>
		 
</body>
</html>
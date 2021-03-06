<%@page import="com.model.User"%>
<%@page import="com.DAO.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/update_user.css.css" rel='stylesheet' type='text/css' />
<title>Đăng kí tài khoản</title>
</head>
<body>
	<%
		String err = "";
		if (request.getAttribute("err") != null) {
			err = (String) request.getAttribute("err");
		}
		String username= request.getParameter("username");
		UserDAO userDAO = new UserDAO();
		User user= userDAO.getUser(username);
	%>

	<!--/start-login-two-->
	<div class="login-02">
		<div class="two-login  hvr-float-shadow">
			<div class="two-login-head">
				<img src="images/top-note.png" alt="" />
				<h2>Cập nhật thông tin</h2>
				<lable></lable>
			</div>
			<form action="UpdateUser" method="post">
				<li style="color: red"><%=err%></li>
				Tên đăng nhập
				<li><input type="text" class="text"
					value="<%=user.get_userName()%>" readonly name="username"><a
					href="#" class=" icon2 user2"></a></li>
				Mật khẩu
				<li><input type="password" value="" 
					name="password"><a href="#" class=" icon2 lock2"></a></li>
				Ngày sinh
				<li><input type="date" value="<%=user.get_birth()%>"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = '<%=user.get_birth() %>';}"
					name="birth"><a href="#" class=" icon2 lock2"></a></li>
				Giới tính
				<li><input type="text" value="<%=user.get_gender() %>"
					list="exampleList" onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = '<%=user.get_gender() %>';}"
					name="gender"> <datalist id="exampleList">
					<option value="Nam">
					<option value="Nữ">
					</datalist><a href="#" class=" icon2 lock2"></a></li>
				Email
				<li><input type="text" value="<%=user.get_email()%>" onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = '<%=user.get_email() %>';}" name="email"><a
					href="#" class=" icon2 lock2"></a></li>
				Số điện thoại
				<li><input type="text" value="<%=user.get_noPhone() %>"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = '<%=user.get_noPhone() %>';}" name="phone"><a
					href="#" class=" icon2 lock2"></a></li>
				Địa chỉ
				<li><input type="text" value="<%=user.get_address() %>"
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = '<%=user.get_address() %>';}"
					name="address"><a href="#" class=" icon2 lock2"></a></li>

				
				<div class="submit two">
					<input type="submit" value="CẬP NHẬT">
					<input type="hidden" value="<%=user.get_userId()%>" name="userId">
				</div>
				<h5>
					<a href="index.jsp">Trở về</a>
				</h5>
			</form>
		</div>
	</div>
</body>
</html>
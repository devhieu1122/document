
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="author" content="Kodinger">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Đăng nhập</title>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/my-login.css">
</head>

<body class="my-login-page">
	<%
		String err = "";
		if (request.getAttribute("err") != null) {
			err = (String) request.getAttribute("err");
		}
	%>
	
	<section class="">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand">
						<a href="index.jsp" title="Trang chủ"><img src="image/logo.jpg" alt="bootstrap 4 login page"></a>
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Đăng nhập tài khoản</h4>
							<form action="ServletLogin" method="POST"
								class="my-login-validation" novalidate="novalidate">
								<%-- <%
									String mess = "";
									if (request.getAttribute("mess") != null) {
										mess = (String) request.getAttribute("mess");
								%>
								<div>
									<label style="color: #dc3545; font-size:80%"><%=mess%></label>
								</div>
								<%
									}
								%> --%>
								<div>
									<label style="color: #dc3545; font-size:100%"><%=err%></label>
								</div>

								<div class="form-group">

									<label for="username">Tài khoản</label> <input id="username"
										type="text" class="form-control" name="username" value="" placeholder="Nhập tên tài khoản của bạn" 
										required autofocus>
									<div class="invalid-feedback">Vui lòng nhập vào tên tài
										khoản!</div>
								</div>

								<div class="form-group">
									<label for="password">Mật khẩu <a href="forgot.jsp"
										class="float-right"> Quên mật khẩu? </a>
									</label> <input id="password" type="password" class="form-control"
										name="password" placeholder="Nhập mật khẩu" required data-eye >
									<div class="invalid-feedback">Vui lòng nhập mật khẩu!</div>
								</div>
								<!-- <div class="form-group">
									<div class="custom-checkbox custom-control">
										<input type="checkbox" name="remember" id="remember"
											class="custom-control-input"> <label for="remember"
											class="custom-control-label">Remeber Me</label>
									</div>
 -->								</div>

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block">
										Đăng nhập</button>
								</div>
								<div class="mt-4 text-center">
									Bạn chưa có tài khoản? <a href="register.jsp">Tạo tài khoản</a>
								</div>
							</form>
						</div>
					</div>
					<!-- <div class="footer">Copyright &copy; 2018 &mdash; Công Ty Cổ
						Phần HTDStore</div> -->
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="js/my-login.js"></script>

	
</body>
</html>

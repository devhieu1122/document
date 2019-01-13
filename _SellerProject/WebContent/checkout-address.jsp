<%@page import="com.model.Cart"%>
<%@page import="com.model.User"%>
<%@page import="com.DAO.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Giao hàng</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon
		============================================ -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/my-login.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%
		UserDAO userDAO = new UserDAO();

		/* String username = null;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("username"))
					username = cookie.getValue();
			}
		} */
		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
	%>
	<!-- MAIN-CONTENT-SECTION START -->
	<section class="main-content-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<!-- BSTORE-BREADCRUMB START -->
					<div class="bstore-breadcrumb">
						<a href="index.jsp">Trang chủ</a> <span><i
							class="fa fa-caret-right	"></i></span> <span>Giao hàng: <%=cart.countItem() %></span>
					</div>
					<!-- BSTORE-BREADCRUMB END -->
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<h2 class="page-title">Giao hàng: <%=session.getAttribute("username") %></h2>
				</div>
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<!-- SHOPING-CART-MENU START -->
					<div class="shoping-cart-menu">
						<ul class="step">
							<li class="step-todo first step-done"><span><a
									href="cart.jsp">01. Tóm tắt</a></span></li>
							<li class="step-todo second step-done"><span><a
									href="checkout-signin.jsp">02. Đăng nhập</a></span></li>
							<li class="step-todo third step-done"><span><a
									href="checkout-address.jsp">03. Thanh toán</a></span></li>
							<li class="step-current four"><span>04. Địa chỉ</span></li>
							<!-- <li class="step-todo last" id="step_end">
									<span>05. Thanh toán</span>
								</li> -->
						</ul>
					</div>
					<!-- SHOPING-CART-MENU END -->
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"
					style="margin: 0 auto;">
					<!-- REGISTERED-ACCOUNT START -->
					<div class="primari-box checkout-address">
						<form class="checkout-address-box" id="checkout-box" method="post"
							action="ServletCheckout">
							<h3 class="box-subheading">Thông tin địa chỉ giao hàng của bạn</h3>
							<div class="form-content">
								<div class="form-group primary-form-group">
									<label for="">Địa chỉ nhận hàng của bạn:<span style="color:red">*</span> </label> <input type="text" 
										name="address"  class="form-control input-feild"
										placeholder="Số nhà, đường, phường, quận,..." required>
								</div>
								<div class="form-group primary-form-group">
									<label for="">Họ và tên:<span style="color:red">*</span></label> <input type="text"
										name="name" class="form-control input-feild"
										placeholder="Họ và tên của người nhận hàng" required>
								</div>
								<div class="form-group primary-form-group">
									<label for="">Số điện thoại:<span style="color:red">*</span></label> <input type="text"
										name="phone" class="form-control input-feild"
										placeholder="Số điện thoại của người nhận hàng" required>
								</div>

								<div class="submit-button" style="text-align: center">
									<button id="signinCreate" class="btn main-btn" type="submit">
										<span> <i class="fa fa-lock submit-icon"></i> Đặt hàng ngay
										</span>
									</button>
								</div>
							</div>
						</form>
					</div>
					<!-- REGISTERED-ACCOUNT END -->
				</div>

				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<!-- <div class="add-new-address">
						<a href="my-cart-step-2-info.jsp" class="new-address-link">Tạo
							địa chỉ mới<i class="fa fa-chevron-right"></i>
						</a>
						<div class="form-group p-info-group type-address-group">
							<label>Nếu bạn có thắc mắc gì vui lòng nhập vào đây!!</label>
							<textarea class="form-control input-feild " name="addcomment"></textarea>
						</div>
					</div> -->
					<!-- ADDRESS AREA START -->
					<!-- RETURNE-CONTINUE-SHOP START -->
					<div class="returne-continue-shop ship-address">
						<a href="index.jsp" class="continueshoping"><i
							class="fa fa-chevron-left"></i>Tiếp tục mua sắm</a> 
							<!-- <a href="checkout-shipping.jsp" class="procedtocheckout">Tiếp
							tục<i class="fa fa-chevron-right"></i>
						</a> -->
					</div>
					<!-- RETURNE-CONTINUE-SHOP END -->
				</div>
			</div>
		</div>
	</section>
	<!-- MAIN-CONTENT-SECTION END -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- COPYRIGHT-AREA START -->
	<footer class="copyright-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="copy-right">
						<address>
							Copyright © 2015 <a href="http://bootexperts.com/">BootExperts</a>
							All Rights Reserved
						</address>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- COPYRIGHT-AREA END -->
	<!-- JS 
		===============================================-->
	<!-- jquery js -->
	<script src="js/vendor/jquery-1.11.3.min.js"></script>

	<!-- fancybox js -->
	<script src="js/jquery.fancybox.js"></script>

	<!-- bxslider js -->
	<script src="js/jquery.bxslider.min.js"></script>

	<!-- meanmenu js -->
	<script src="js/jquery.meanmenu.js"></script>

	<!-- owl carousel js -->
	<script src="js/owl.carousel.min.js"></script>

	<!-- nivo slider js -->
	<script src="js/jquery.nivo.slider.js"></script>

	<!-- jqueryui js -->
	<script src="js/jqueryui.js"></script>

	<!-- bootstrap js -->
	<script src="js/bootstrap.min.js"></script>

	<!-- wow js -->
	<script src="js/wow.js"></script>
	<script>
		new WOW().init();
	</script>

	<!-- Google Map js -->
	<script src="https://maps.googleapis.com/maps/api/js"></script>
	<script>
		function initialize() {
			var mapOptions = {
				zoom : 8,
				scrollwheel : false,
				center : new google.maps.LatLng(35.149868, -90.046678)
			};
			var map = new google.maps.Map(document.getElementById('googleMap'),
					mapOptions);
			var marker = new google.maps.Marker({
				position : map.getCenter(),
				map : map
			});

		}
		google.maps.event.addDomListener(window, 'load', initialize);
	</script>
	<!-- main js -->
	<script src="js/main.js"></script>
	<script src="js/my-login.js"></script>

</body>

</html>
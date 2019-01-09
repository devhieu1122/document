<%@page import="com.model.User"%>
<%@page import="com.DAO.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">    
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Shipping Address</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- Favicon
		============================================ -->
		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
		
		
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <%
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
				User user =  userDAO.getUser(username);				
        %>
		<section class="main-content-section">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<!-- BSTORE-BREADCRUMB START -->
						<div class="bstore-breadcrumb">
							<a href="index.jsp">Trang chủ</a>
							<span><i class="fa fa-caret-right	"></i></span>
							<span>Địa chỉ</span>
						</div>
						<!-- BSTORE-BREADCRUMB END -->
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<h2 class="page-title">Địa chỉ</h2>
					</div>	
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<!-- SHOPING-CART-MENU START -->
						<div class="shoping-cart-menu">
							<ul class="step">
								<li class="step-todo first step-done">
									<span><a href="cart.jsp">01. Tóm tắt</a></span>
								</li>
								<li class="step-todo second step-done">
									<span><a href="checkout-signin.jsp">02. Đăng nhập</a></span>
								</li>
								<li class="step-current third">
									<span>03. Địa chỉ</span>
								</li>
								<li class="step-todo four">
									<span>04. Giao hàng</span>
								</li>
								<li class="step-todo last" id="step_end">
									<span>05. Thanh toán</span>
								</li>
							</ul>									
						</div>
						<!-- SHOPING-CART-MENU END -->
					</div>
					<!-- ADDRESS AREA START --> 
					<div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
						<div class="form-group primary-form-group p-info-group deli-address-group">
							<label>Chọn địa chỉ giao hàng của bạn:</label>
							<div class="birth-day delivery-address">
								<select id="deli-address" name="deliveryaddress">
									<option value="">Địa chỉ của tôi</option>
									<option value="">Đại chỉ khác</option>
								</select>												
							</div>
						</div>						
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="first_item primari-box">
							<!-- DELIVERY ADDRESS START -->
							<ul class="address">
								<li>
									<h3 class="page-subheading box-subheading">
										Thông tin địa chỉ giao hàng của bạn
									</h3>
								</li>
								<li><span class="address_name">Họ và tên:&emsp; &emsp; &emsp; &emsp;  &emsp; &emsp; &nbsp;<%=user.get_name() %></span></li>
								<li><span class="address_phone">Số điện thoại: &emsp; &emsp; &emsp; &emsp; &emsp;<%=user.get_noPhone() %></span></li>
								<li><span class="address_address1">Địa chỉ email: &emsp; &emsp; &emsp; &emsp; &nbsp; &nbsp; &nbsp;<%=user.get_email() %></span></li>
								<li><span class="address_address2">Địa chỉ giao hàng: &emsp; &emsp; &emsp; &nbsp;<%=user.get_address() %></span></li>

								<li class="update-button">
									<a href="my-cart-step-2-info.jsp">Chỉnh sửa<i class="fa fa-chevron-right"></i></a>
								</li>								
							</ul>	
							<!-- DELIVERY ADDRESS END -->
						</div>						
					</div>
					
					<%} %>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="add-new-address">
							<a href="my-cart-step-2-info.jsp" class="new-address-link">Tạo địa chỉ mới<i class="fa fa-chevron-right"></i></a>
							<div class="form-group p-info-group type-address-group">
								<label>Nếu bạn có thắc mắc gì vui lòng nhập vào đây!!</label>
								<textarea class="form-control input-feild " name="addcomment"></textarea>
							</div>							
						</div>
						<!-- ADDRESS AREA START --> 
						<!-- RETURNE-CONTINUE-SHOP START -->
						<div class="returne-continue-shop ship-address">
							<a href="index.jsp" class="continueshoping"><i class="fa fa-chevron-left"></i>Tiếp tục mua sắm</a>
							<a href="checkout-shipping.jsp" class="procedtocheckout">Tiếp tục<i class="fa fa-chevron-right"></i></a>
						</div>	
						<!-- RETURNE-CONTINUE-SHOP END -->		
					</div>					
				</div>
			</div>
		</section>
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- FOOTER-TOP-AREA END -->
		<!-- COPYRIGHT-AREA START -->
		<footer class="copyright-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="copy-right">
							<address>Copyright © 2015 <a href="http://bootexperts.com/">BootExperts</a> All Rights Reserved</address>
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
				zoom: 8,
				scrollwheel: false,
				center: new google.maps.LatLng(35.149868, -90.046678)
			  };
			  var map = new google.maps.Map(document.getElementById('googleMap'),
				  mapOptions);
			  var marker = new google.maps.Marker({
				position: map.getCenter(),
				map: map
			  });

			}
			google.maps.event.addDomListener(window, 'load', initialize);				
		</script>
		<!-- main js -->
        <script src="js/main.js"></script>
    </body>

</html>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.model.Item"%>
<%@page import="java.util.Map"%>
<%@page import="com.model.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Cart</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon
		============================================ -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
<link rel="stylesheet" href="css/hder.css">
</head>
<body>
	<!-- <jsp:include page="header.jsp"></jsp:include> -->
	<%
		String username = null;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("username"))
					username = cookie.getValue();
				}
			}
			
		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
	%>
	<section class="main-content-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<!-- BSTORE-BREADCRUMB START -->
					<div class="bstore-breadcrumb">
						<a href="index.jsp">Trang chủ</a> <span><i
							class="fa fa-caret-right	"></i></span> <span>Giỏ hàng của bạn</span>
					</div>
					<!-- BSTORE-BREADCRUMB END -->
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<!-- SHOPPING-CART SUMMARY START -->
					<h2 class="page-title">
						Tóm tắt giỏ hàng <span class="shop-pro-item">Giỏ hàng của
							bạn có 2 sản phẩm</span>
					</h2>
					<!-- SHOPPING-CART SUMMARY END -->
				</div>

				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<!-- SHOPING-CART-MENU START -->
					<div class="shoping-cart-menu">
						<ul class="step">
							<li class="step-current first"><span>01. Tóm tắt</span></li>
							<li class="step-todo second"><span>02. Đăng nhập</span></li>
							<li class="step-todo third"><span>03. Địa chỉ</span></li>
							<li class="step-todo four"><span>04. Giao hàng</span></li>
							<li class="step-todo last" id="step_end"><span>05.
									Thanh toán</span></li>
						</ul>
					</div>
					<!-- SHOPING-CART-MENU END -->
					<!-- CART TABLE_BLOCK START -->
					<div class="table-responsive">
						<!-- TABLE START -->
						<table class="table table-bordered" id="cart-summary">
							<!-- TABLE HEADER START -->
							<thead>
								<tr>
									<th class="cart-product">Sản phẩm</th>
									<th class="cart-description">Mô tả</th>
									<th class="cart-avail text-center">Availability</th>
									<th class="cart-unit text-right">Giá</th>
									<th class="cart_quantity text-center">Số lượng</th>
									<th class="cart-delete">&nbsp;</th>
									<th class="cart-total text-right">Tổng cộng</th>
								</tr>
							</thead>
							<!-- TABLE HEADER END -->
							<!-- TABLE BODY START -->
							<tbody>
								<!-- SINGLE CART_ITEM START -->
								<%
									for(Map.Entry<Long, Item> clist : cart.getCartItems().entrySet()){
								%> 
								
								<tr>
									<td class="cart-product"><a href="product.jsp?id_product=<%=clist.getValue().getProduct().getId_product()%>"><img alt="Blouse"
											src="<%=clist.getValue().getProduct().getImage()%> "></a></td>
									<td class="cart-description">
										<p class="product-name">
											<a href="product.jsp?id_product=<%=clist.getValue().getProduct().getId_product()%>"> <%=clist.getValue().getProduct().getName() %></a>
										</p> <small>SKU : demo_1</small> <small><a href="#">Size
												: S, Color : Orange</a></small>
									</td>
									<td class="cart-avail"><span class="label label-success">In
											stock</span></td>
									<td class="cart-unit">
										<ul class="price text-right">
											<li class="price"><%=new DecimalFormat("###,###,###").format(clist.getValue().getProduct().getPrice()) %></li>
										</ul>
									</td>
									<td class="cart_quantity text-center">
										<div class="cart-plus-minus-button">
											<input class="cart-plus-minus" type="text" name="qtybutton"
												value="<%=clist.getValue().getQuantity()%>">
										</div>
									</td>
									<td class="cart-delete text-center"><span> <a
											href="ServletCart?command=remove&id_product=<%=clist.getValue().getProduct().getId_product() %>" class="cart_quantity_delete" title="Delete"><i
												class="fa fa-trash-o"></i></a>
									</span></td>
									<td class="cart-total"><span class="price"> <%=new DecimalFormat("###,###,###").format(clist.getValue().getProduct().getPrice()*clist.getValue().getQuantity()) %></span></td>
								</tr>
								<%
									} 
								%> 
								<!-- SINGLE CART_ITEM END -->
								<!-- SINGLE CART_ITEM START -->
								
							</tbody>
							<!-- TABLE BODY END -->
							<!-- TABLE FOOTER START -->
							<tfoot>
								<tr class="cart-total-price">
									<td class="cart_voucher" colspan="3" rowspan="4"></td>
									<td class="text-right" colspan="3">Tổng sản phẩm</td>
									<td id="total_product" class="price" colspan="1"> <%=cart.countQuantity() %> </td>
								</tr>
								<tr>
									<td class="text-right" colspan="3">Phí giao hàng</td>
									<td id="total_shipping" class="price" colspan="1">0</td>
								</tr>
								<tr>
									<td class="text-right" colspan="3">Mã giảm giá</td>
									<td class="price" colspan="1">0</td>
								</tr>
								<tr>
									<td class="total-price-container text-right" colspan="3">
										<span>Thành tiền</span>
									</td>
									<td id="total-price-container" class="price" colspan="1">
										<span id="total-price"><%=new DecimalFormat("###,###,###").format(cart.totalCart())%></span>
									</td>
								</tr>
							</tfoot>
							<!-- TABLE FOOTER END -->
						</table>
						<!-- TABLE END -->
					</div>
					<!-- CART TABLE_BLOCK END -->
				</div>
				<% 
					if(username!=null){
				%>
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<!-- RETURNE-CONTINUE-SHOP START -->
					<div class="returne-continue-shop">
						<a href="index.jsp" class="continueshoping"><i
							class="fa fa-chevron-left"></i>Tiếp tục mua sắm</a> <a
							href="checkout-address.jsp" class="procedtocheckout">Tiếp tục<i
							class="fa fa-chevron-right"></i></a>
					</div>
					<!-- RETURNE-CONTINUE-SHOP END -->
				</div>
				<%}else{%>
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<!-- RETURNE-CONTINUE-SHOP START -->
					<div class="returne-continue-shop">
						<a href="index.jsp" class="continueshoping"><i
							class="fa fa-chevron-left"></i>Tiếp tục mua sắm</a> <a
							href="checkout-signin.jsp" class="procedtocheckout">Tiếp tục<i
							class="fa fa-chevron-right"></i></a>
					</div>
					<!-- RETURNE-CONTINUE-SHOP END -->
				</div>
				<%}%>
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
</body>

</html>
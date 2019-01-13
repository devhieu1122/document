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
<title>Checkout</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">



</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%
		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
	%>

	<!-- MAIN-MENU-AREA END -->
	<!-- MAIN-CONTENT-SECTION START -->
	<section class="main-content-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<!-- BSTORE-BREADCRUMB START -->
					<div class="bstore-breadcrumb">
						<a href="index.jsp">Trang chủ</a> <span><i
							class="fa fa-caret-right"></i></span> <span>Phương thức thanh
							toán</span>
					</div>
					<!-- BSTORE-BREADCRUMB END -->
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<h2 class="page-title">
						Chọn phương thức thanh toán <span class="shop-pro-item">Bạn
							có : <%=cart.countItem()%> sản phẩm trong giỏ hàng
						</span>
					</h2>
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
									href="checkout-address.jsp">03. Địa chỉ</a></span></li>
							<li class="step-todo four step-done"><span><a
									href="checkout-shipping.jsp">04. Giao hàng</a></span></li>
							<li class="step-current last" id="step_end"><span>05.
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
									<th class="cart-availability text-center">Availability</th>
									<th class="cart-unit text-right">Giá</th>
									<th class="cart_quantity text-center">Số lượng</th>
									<th class="cart-total text-right">Tổng cộng</th>
								</tr>
							</thead>
							<!-- TABLE HEADER END -->
							<!-- TABLE BODY START -->
							<tbody>
								<%
									for (Map.Entry<Long, Item> clist : cart.getCartItems().entrySet()) {
								%>

								<!-- SINGLE CART_ITEM START -->
								<tr>
									<td class="cart-product"><a href="#"> <img alt="Faded"
											src="<%=clist.getValue().getProduct().getImage()%>">
									</a></td>
									<td class="cart-description">
										<p class="product-name">
											<a href="#"><%=clist.getValue().getProduct().getName()%></a>
										</p> <small>SKU : demo_1</small> <small><a href="#">Size
												: S, Color : Orange</a></small>
									</td>
									<td class="cart-avail"><span class="label label-success">In
											stock</span></td>
									<td class="cart-unit">
										<ul class="price text-right">
											<li class="price special-price"><%-- <%=cart.totalPromotion()%> --%></li>
											<li class="price-percent-reduction">&nbsp;-<%=clist.getValue().getProduct().getPromotion()%>%&nbsp;
											</li>
											<li class="old-price"><%=clist.getValue().getProduct().getPrice()%></li>
										</ul>
									</td>
									<td class="cart_quantity text-center"><span><%=clist.getValue().getQuantity()%></span></td>
									<td class="cart-total"><span class="price"><%-- <%=cart.totalCart()%> --%></span></td>
								</tr>
								<!-- SINGLE CART_ITEM END -->

							</tbody>
							<!-- TABLE BODY END -->
							<!-- TABLE FOOTER START -->
							<tfoot>
								<tr>
									<td class="text-right" colspan="4">Tổng sản phẩm</td>
									<td class="price" colspan="2"><%=cart.countQuantity()%></td>
								</tr>
								<tr>
									<td class="text-right" colspan="4">Giảm giá</td>
									<td class="price" colspan="2"><%=clist.getValue().getProduct().getPromotion()%></td>
								</tr>
								<tr>
									<td class="text-right" colspan="4">Phí vận chuyển</td>
									<td class="price" colspan="2">0</td>
								</tr>
								<!-- <tr>
										<td class="text-right" colspan="4">Total vouchers</td>
										<td class="price" colspan="2">$0.00</td>
									</tr> -->
								<tr>
									<td class="total-price-container text-right" colspan="4">
										<span>Thành tiền</span>
									</td>
									<td id="total-price-container" class="price" colspan="2">
										<span id="total-price">$64.86</span>
									</td>
								</tr>
								<%
									}
								%>
							</tfoot>
							<!-- TABLE FOOTER END -->
						</table>
						<!-- TABLE END -->
					</div>
					<!-- CART TABLE_BLOCK END -->
				</div>
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<!-- FOUR-PAYMENT-METHOD START -->
					<div class="four-payment-method">
						<!-- SINGLE-PAYMENT-METHOD START -->
						<div class="single-payment-method payment-method-one">
							<a href="ServletCheckout">Thanh toán khi nhận hàng</span><i
								class="fa fa-chevron-right"></i></a>
						</div>
						<!-- SINGLE-PAYMENT-METHOD END -->
						<!-- SINGLE-PAYMENT-METHOD START -->
						<div class="single-payment-method payment-method-two">
							<a href="#">Thanh toán qua thẻ ngân hàng (Sắp ra mắt)</span><i
								class="fa fa-chevron-right"></i></a>
						</div>
						<!-- SINGLE-PAYMENT-METHOD END -->
						<!-- SINGLE-PAYMENT-METHOD START -->
						<div class="single-payment-method payment-method-three">
							<a href="#">Thanh toán bằng Internet Banking (Sắp ra mắt)</span><i
								class="fa fa-chevron-right"></i></a>
						</div>
						<!-- SINGLE-PAYMENT-METHOD END -->
						<!-- SINGLE-PAYMENT-METHOD START -->
						<div class="single-payment-method payment-method-four">
							<a href="#">Thanh toán bằng thẻ tín dụng (Sắp ra mắt)</span><i
								class="fa fa-chevron-right"></i></a>
						</div>
						<!-- SINGLE-PAYMENT-METHOD END -->
					</div>
					<!-- FOUR-PAYMENT-METHOD END -->
				</div>
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<!-- RETURNE-CONTINUE-SHOP START -->
					<div class="returne-continue-shop">
						<a href="index.jsp" class="continueshoping"><i
							class="fa fa-chevron-left"></i>Tiếp tục mua sắm</a>
					</div>
					<!-- RETURNE-CONTINUE-SHOP END -->
				</div>
			</div>
		</div>
	</section>
	<!-- MAIN-CONTENT-SECTION END -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- FOOTER-TOP-AREA END -->
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
	<!-- <script src="js/vendor/jquery-1.11.3.min.js"></script>
		
		fancybox js
		        <script src="js/jquery.fancybox.js"></script>
		
		bxslider js
		        <script src="js/jquery.bxslider.min.js"></script>
		
		meanmenu js
		        <script src="js/jquery.meanmenu.js"></script>
		
		owl carousel js
		        <script src="js/owl.carousel.min.js"></script>
		
		nivo slider js
		        <script src="js/jquery.nivo.slider.js"></script>
		
		jqueryui js
		        <script src="js/jqueryui.js"></script>
		
		bootstrap js
		        <script src="js/bootstrap.min.js"></script>
		
		wow js
		        <script src="js/wow.js"></script>		
		<script>
			new WOW().init();
		</script>
		
		Google Map js
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
		main js
		        <script src="js/main.js"></script> -->
</body>

</html>
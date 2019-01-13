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
									<span>03. Thanh toán</span>
								</li>
								<li class="step-todo four">
									<span>04. Địa chỉ</span>
								</li>
								<!-- <li class="step-todo last" id="step_end">
									<span>05. Thanh toán</span>
								</li> -->
							</ul>									
						</div>
						<!-- SHOPING-CART-MENU END -->
					</div>
					<!-- ADDRESS AREA START --> 
					<!-- <div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
						<div class="form-group primary-form-group p-info-group deli-address-group">
							<label>Chọn địa chỉ giao hàng của bạn:</label>
							<div class="birth-day delivery-address">
								<select id="deli-address" name="deliveryaddress">
									<option value="">Địa chỉ của tôi</option>
									<option value="">Đại chỉ khác</option>
								</select>												
							</div>
						</div>						
					</div> -->
				</div>
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<!-- PRODUCT-DELIVERY-OPTION START -->
						<div class="product-delivery-option">
							<div class="product-delivery-address">
								<p>Lựa chọn loại hình thanh toán</p>
							</div>
							<!-- PRODUCT-DELIVERY-ITEM START -->
							<div class="product-delivery-item">
								<div class="product-delivery-single-item">
									<div class="table-responsive">
										<!-- PRODUCT-DELIVERY SINGLE OPTION START -->
									    <table class="table table-bordered delivery-table">
											<tr>
												<td class="delivery-option-radio">
													<div class="dalivery-radio">
														<span class="radio-box">
															<input type="radio" value="Thanh toán khi nhận hàng" name="payment" checked="checked">
														</span>
													</div>
												</td>											
												<td class="delivery-method-icon">
													<img src="image/icon/bank.png" alt="" />
												</td>
												<td class="carrey-info">
													<strong>Thanh toán tại nhà</strong><br>
													Bạn sẽ thanh toán khi nhận hàng <br />
												</td>
												<!-- <td class="carrey-cost">Miền phí</td> -->
											</tr>
									    </table>
										<!-- PRODUCT-DELIVERY SINGLE OPTION END -->
									</div>
									<div class="table-responsive">
										<!-- PRODUCT-DELIVERY SINGLE OPTION START -->
									    <table class="table table-bordered delivery-table">
											<tr>
												<td class="delivery-option-radio">
													<div class="dalivery-radio">
														<span class="radio-box">
															<input type="radio" value="Chuyển khoản" name="payment">
														</span>
													</div>
												</td>											
												<td class="delivery-method-icon">
													<img src="image/icon/delivery-method.jpg" alt="" />
												</td>
												<td class="carrey-info">
													<strong>Chuyển khoản</strong><br>
													Đang cập nhật
												</td>
												<!-- <td class="carrey-cost">
													20.000 
												</td> -->
											</tr>
									    </table>
										<!-- PRODUCT-DELIVERY SINGLE OPTION END -->
									</div>
								</div>
							</div>
							<!-- PRODUCT-DELIVERY-ITEM START -->
							<!-- TERMS-OF-SERVICE START -->
							<div class="terms-of-service">
								<p>Điều khoản dịch vụ</p>
								<div class="custom-checkbox custom-control">
										<input type="checkbox" name="agree" id="agree"
											class="custom-control-input" required> <label
											for="agree" class="custom-control-label">Tôi đồng ý <a href="#">Điều khoản</a>
										</label>
										<div class="invalid-feedback">Bạn phải đồng ý với các điều khoản của chúng tôi</div>
								</div>

							</div>
							<!-- TERMS-OF-SERVICE END -->
						</div>
						<!-- PRODUCT-DELIVERY-OPTION END -->
						<!-- RETURNE-CONTINUE-SHOP START -->
						<div class="returne-continue-shop">
							<a href="index.jsp" class="continueshoping"><i class="fa fa-chevron-left"></i>Tiếp tục mua sắm</a>
							<a href="checkout-address.jsp?payment" class="procedtocheckout">Tiếp tục<i class="fa fa-chevron-right"></i></a>
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
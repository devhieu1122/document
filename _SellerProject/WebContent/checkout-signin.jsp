<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	%>
<!doctype html>
<html lang="en">
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Kiểm tra đăng nhập</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- Favicon
		============================================ -->
		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
		
    </head>
    <body>
      <jsp:include page="header.jsp"></jsp:include>
      <%String err= "";
      if(request.getAttribute("err")!=null){
    	  err=(String) request.getAttribute("err");
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
							<a href="index.jsp">Trang chủ</a>
							<span><i class="fa fa-caret-right	"></i></span>
							<span>Đăng nhập</span>
						</div>
						<!-- BSTORE-BREADCRUMB END -->
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<h2 class="page-title">Đăng nhập</h2>
					</div>	
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<!-- SHOPING-CART-MENU START -->
						<div class="shoping-cart-menu">
							<ul class="step">
								<li class="step-todo first step-done">
									<span><a href="cart.jsp">01. Tóm tắt</a></span>
								</li>
								<li class="step-current second">
									<span>02. Đăng nhập</span>
								</li>
								<li class="step-todo third">
									<span>03. Địa chỉ</span>
								</li>
								<li class="step-todo four">
									<span>04. Giao hàng</span>
								</li>
								<li class="step-todo last" id="step_end">
									<span><em>05.</em> Thanh toán</span>
								</li>
							</ul>									
						</div>
						<!-- SHOPING-CART-MENU END -->
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<!-- CREATE-NEW-ACCOUNT START -->
						<div class="create-new-account">
							<form class="new-account-box primari-box" id="create-new-account" method="post" action="#">
								<h3 class="box-subheading">Tạo tài khoản</h3>
								<div class="form-content">
									<p>Bạn chưa có tài khoản?</p>
									
									<div class="submit-button">
										<a href="register.jsp" id="SubmitCreate" class="btn main-btn">
											<span>
												<i class="fa fa-user submit-icon"></i>
												Tại tài khoản mới
											</span>											
										</a>
									</div>
								</div>
							</form>							
						</div>
						<!-- CREATE-NEW-ACCOUNT END -->
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<!-- REGISTERED-ACCOUNT START -->
						<div class="primari-box registered-account">
							<form class="new-account-box" id="accountLogin" method="post" action="ServletCartLogin">
								<h3 class="box-subheading">Bạn đã có tài khoản</h3>
								<div class="form-content">
									<div class="form-group primary-form-group">
										<label for="loginemail">Tên đăng nhập</label>
										<input type="text" value="" name="username" id="loginemail" class="form-control input-feild" placeholder="Nhập tên tài khoản của bạn">
									</div>
									<div class="form-group primary-form-group">
										<label for="password">Mật khẩu</label>
										<input type="password" value="" name="password" id="password" class="form-control input-feild" placeholder="Nhập mật khẩu">
									</div>
									<%
										String mess = "";
										if (request.getAttribute("mess") != null) {
											mess = (String) request.getAttribute("mess");
									%>
										<div>
											<label style="color: #dc3545; font-size:80%"><%=mess%></label>
										</div>
									<%
										}
									%> 
									<div>
									<label style="color: #dc3545; font-size:100%"><%=err%></label>
									</div>
									<div class="forget-password">
										<p><a href="forgot.jsp">Quên mật khẩu?</a></p>
									</div>
									<div class="submit-button" >
										<button  id="signinCreate" class="btn main-btn" type="submit">
										<span>
											<i class="fa fa-lock submit-icon"></i>
											 Đăng nhập
										</span>
										</button>
									</div>
								</div>
							</form>							
						</div>
						<!-- REGISTERED-ACCOUNT END -->
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
							<address>Copyright © 2015 <a href="http://bootexperts.com/">BootExperts</a> All Rights Reserved</address>
						</div>
						<div class="scroll-to-top">
							<a href="#" class="bstore-scrollertop"><i class="fa fa-angle-double-up"></i></a>
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
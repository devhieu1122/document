<%@page import="com.DAO.ProductDAO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.model.Item"%>
<%@page import="java.util.Map"%>
<%@page import="com.model.Cart"%>
<%@page import="com.model.Producer"%>
<%@page import="com.DAO.ProducerDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>HTDStore - Điện thoại, laptop, phụ kiện chính hãng</title>
	<LINK REL="SHORTCUT ICON" HREF="image/logo/logo.png">


		<!-- FONTS
		============================================ -->
		<link href='http://fonts.googleapis.com/css?family=Oswald:400,700'
			rel='stylesheet' type='text/css'>
			<link
				href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600'
				rel='stylesheet' type='text/css'>
				<link
					href='http://fonts.googleapis.com/css?family=Bitter:400,700,400italic&amp;subset=latin,latin-ext'
					rel='stylesheet' type='text/css'>

					<!-- animate CSS
		============================================ -->
					<link rel="stylesheet" href="css/animate.css">

						<!-- FANCYBOX CSS
		============================================ -->
						<link rel="stylesheet" href="css/jquery.fancybox.css">

							<!-- BXSLIDER CSS
		============================================ -->
							<link rel="stylesheet" href="css/jquery.bxslider.css">

								<!-- MEANMENU CSS
		============================================ -->
								<link rel="stylesheet" href="css/meanmenu.min.css">

									<!-- JQUERY-UI-SLIDER CSS
		============================================ -->
									<link rel="stylesheet" href="css/jquery-ui-slider.css">

										<!-- NIVO SLIDER CSS
		============================================ -->
										<link rel="stylesheet" href="css/nivo-slider.css">

											<!-- OWL CAROUSEL CSS 	
		============================================ -->
											<link rel="stylesheet" href="css/owl.carousel.css">

												<!-- OWL CAROUSEL THEME CSS 	
		============================================ -->
												<link rel="stylesheet" href="css/owl.theme.css">

													<!-- BOOTSTRAP CSS 
		============================================ -->
													<link rel="stylesheet" href="css/bootstrap.min.css">

														<!-- FONT AWESOME CSS 
		============================================ -->
														<link rel="stylesheet" href="css/font-awesome.min.css">

															<!-- NORMALIZE CSS 
		============================================ -->
															<link rel="stylesheet" href="css/normalize.css">

																<!-- MAIN CSS 
		============================================ -->
																<link rel="stylesheet" href="css/main.css">

																	<!-- STYLE CSS 
		============================================ -->
																	<link rel="stylesheet" href="css/hder.css">

																		<!-- RESPONSIVE CSS 
		============================================ -->
																		<link rel="stylesheet" href="css/responsive.css">

																			<!-- IE CSS 
		============================================ -->
																			<link rel="stylesheet" href="css/ie.css">

																				<!-- MODERNIZR JS 
		============================================ -->
																				<script src="js/vendor/modernizr-2.6.2.min.js"></script>
</head>
<body>
	<%
		ProducerDAO producerDAO = new ProducerDAO();
		CategoryDAO catDAO = new CategoryDAO();
		ProductDAO productDAO	= new ProductDAO();
		
		
		Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
	%>
	<div class="header-top">
		<%
			String username = null;
			Cookie[] cookies = request.getCookies();
			if (cookies != null) {
				for (Cookie cookie : cookies) {
					if (cookie.getName().equals("username"))
						username = cookie.getValue();
				}
			}
			if (username != null) {
		%>
		<div class="container">
			<div class="row">
				<!-- HEADER-LEFT-MENU START -->
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="header-left-menu">
						<div class="welcome-info">
							Welcome <a href="update_user.jsp?username=<%=username%>"><span><%=username%></span></a>
						</div>
						<div class="currenty-converter">
							<form method="post" action="#" id="currency-set">
								<div class="current-currency">
									<span class="cur-label">Welcome </span><strong><%=username%></strong>
								</div>
								<ul class="currency-list currency-toogle">
									<li><a title="Thông tin tài khoản" href="#">Thông tin
											tài khoản</a></li>
									<li><a title="Đổi mật khẩu" href="#">Đổi mật khẩu</a></li>
								</ul>
							</form>
						</div>
						<div class="selected-language">
							<div class="current-lang">
								<span class="current-lang-label">Ngôn ngữ : </span><strong>Tiếng
									Việt</strong>
							</div>
							<ul class="languages-choose language-toogle">
								<li><a href="#" title="English"> <span>Tiếng
											Việt (Mặc định)</span>
								</a></li>
								<li><a href="#" title="English"> <span>English</span>
								</a></li>
								<li><a href="#" title="Français (French)"> <span>Français</span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- HEADER-LEFT-MENU END -->
				<!-- HEADER-RIGHT-MENU START -->
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="header-right-menu">
						<nav>
						<ul class="list-inline">
							<li><a href="checkout.jsp">Check Out</a></li>
							<li><a href="wishlist.jsp">Wishlist</a></li>
							<li><a href="update_user.jsp?username=<%=username%>">My
									Account</a></li>
							<li><a href="cart.jsp">My Cart</a></li>
							<li><a href="ServletLogout">Đăng xuất</a></li>
						</ul>
						</nav>
					</div>
				</div>
				<!-- HEADER-RIGHT-MENU END -->
			</div>
		</div>
		<%
			} else {
		%>
		<div class="container">
			<div class="row">
				<!-- HEADER-LEFT-MENU START -->
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="header-left-menu">
						<div class="welcome-info">
							Welcome <span>BootExperts</span>
						</div>
						<div class="currenty-converter">
							<form method="post" action="#" id="currency-set">
								<div class="current-currency">
									<span class="cur-label">Currency : </span><strong>USD</strong>
								</div>
								<ul class="currency-list currency-toogle">
									<li><a title="Dollar (USD)" href="#">Dollar (USD)</a></li>
									<li><a title="Euro (EUR)" href="#">Euro (EUR)</a></li>
								</ul>
							</form>
						</div>
						<div class="selected-language">
							<div class="current-lang">
								<span class="current-lang-label">Language : </span><strong>English</strong>
							</div>
							<ul class="languages-choose language-toogle">
								<li><a href="#" title="English"> <span>English</span>
								</a></li>
								<li><a href="#" title="Français (French)"> <span>Français</span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- HEADER-LEFT-MENU END -->
				<!-- HEADER-RIGHT-MENU START -->
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="header-right-menu">
						<nav>
						<ul class="list-inline">
							<li><a href="login.jsp">Check Out</a></li>
							<li><a href="wishlist.jsp">Wishlist</a></li>
							<!-- <li><a href="login.jsp">My Account</a></li> -->
							<li><a href="cart.jsp">My Cart</a></li>
							<li><a href="login.jsp">Sign in</a></li>
						</ul>
						</nav>
					</div>
				</div>
				<!-- HEADER-RIGHT-MENU END -->
			</div>
		</div>
		<%
			}
		%>
	</div>
	<!-- HEADER-TOP END -->
	<!-- HEADER-MIDDLE START -->
	<section class="header-middle">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<!-- LOGO START -->
				<div class="logo">
					<a href="index.jsp"><img src="img/logo.png" alt="bstore logo" /></a>
				</div>
				<!-- LOGO END -->
				<!-- HEADER-RIGHT-CALLUS START -->
				<div class="header-right-callus">
					<h3>Tư vấn miễn phí</h3>
					<span>0344-704-400</span>
				</div>
				<!-- HEADER-RIGHT-CALLUS END -->
				<!-- CATEGORYS-PRODUCT-SEARCH START -->
				<div class="categorys-product-search">
					<form action="#" method="get" class="search-form-cat">
						<div class="search-product form-group">
							<select name="catsearch" class="cat-search">
								<option value="">Thể loại</option>
								<option value="2">--Apple</option>
								<option value="3">---Samsung</option>
								<option value="4">--OPPO</option>
								<option value="5">----Nokia</option>
								<option value="6">--Huawei</option>
								<option value="7">----Asus</option>
								<option value="8">---Xaomia</option>
								<option value="9">--LG</option>
								<option value="10">--Sony</option>
								<option value="11">---Masttel</option>
								<option value="12">--Dell</option>
								<option value="13">--Lenovo</option>
								<option value="14">-----HP</option>
								<option value="15">--MSI</option>
								
							</select> <input type="text" class="form-control search-form" name="s"
								placeholder="Enter your search key ... " />
							<button class="search-button" value="Search" name="s"
								type="submit">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</form>
				</div>
				<!-- CATEGORYS-PRODUCT-SEARCH END -->
			</div>
		</div>
	</div>
	</section>
	<!-- HEADER-MIDDLE END -->
	<!-- MAIN-MENU-AREA START -->
	<header class="main-menu-area">
	<div class="container">
		<div class="row">
			<!-- SHOPPING-CART START -->
			<div
				class="col-lg-3 col-md-3 col-sm-12 col-xs-12 pull-right shopingcartarea">
				<%
					if (cart.countItem() > 0){
				%>
				<div class="shopping-cart-out pull-right">
					<div class="shopping-cart">
						<a class="shop-link" href="cart.jsp" title="View my shopping cart">
							<i class="fa fa-shopping-cart cart-icon"></i> <b>Giỏ hàng của
								tôi</b> <span class="ajax-cart-quantity"><%=cart.countItem() %>
						</span>
						</a>

						<div class="shipping-cart-overly">
							<%for (Map.Entry<Long, Item> clist : cart.getCartItems().entrySet()) {%>
							<div class="shipping-item">
								<span class="cross-icon"><a
									href="ServletCart?command=remove&id_product=<%=clist.getValue().getProduct().getId_product()%>"><i
										class="fa fa-times-circle"></i></a></span>
								<div class="shipping-item-image">
									<a
										href="product.jsp?id_product=<%=clist.getValue().getProduct().getId_product()%>"><img
										src="<%=clist.getValue().getProduct().getImage() %>"
										alt="shopping image" /></a>
								</div>
								<div class="shipping-item-text">
									<span><%=clist.getValue().getQuantity()%> <span
										class="pro-quan-x">x</span> <a
										href="product.jsp?id_product=<%=clist.getValue().getProduct().getId_product()%>"
										class="pro-cat"></a></span> <span class="pro-quality"><a
										href="#"><%=clist.getValue().getProduct().getName()%></a></span>
									<p><%=new DecimalFormat("###,###,###").format(clist.getValue().getProduct().getPrice())  %>
										&emsp;VNĐ
									</p>
								</div>
							</div>
							<%}%>
							<div class="shipping-total-bill">
								<div class="cart-prices">
									<span class="shipping-cost">0</span> <span>Phí giao hàng</span>
								</div>
								<div class="total-shipping-prices">
									<span class="shipping-total"> <%=new DecimalFormat("###,###,###").format(cart.totalCart()) %>&emsp;VNĐ
									</span> <span>Tổng cộng</span>
								</div>
							</div>
							<div class="shipping-checkout-btn">
								<a href="checkout.jsp">Check out <i
									class="fa fa-chevron-right"></i></a>
							</div>
						</div>

					</div>
				</div>
				<%
					}else{ 
				%>
				<div class="shopping-cart-out pull-right">
					<div class="shopping-cart">
						<a class="shop-link" title=""> <i
							class="fa fa-shopping-cart cart-icon"></i> <b>Giỏ hàng của
								tôi</b> <span class="ajax-cart-quantity"><%=cart.countItem() %></span>
						</a>
					</div>
				</div>
				<%
					} 
				%>
			</div>
			<!-- SHOPPING-CART END -->
			<!-- MAINMENU START -->
			<div
				class="col-lg-9 col-md-9 col-sm-12 col-xs-12 no-padding-right menuarea">
				<div class="mainmenu">
					<nav>
					<ul class="list-inline mega-menu">
						<li><a href="index.jsp">Trang chủ</a> <!-- DROPDOWN MENU START -->
							<div class="home-var-menu">
								<!-- <ul class="home-menu">
									<li><a href="index.jsp">Home variation 1</a></li>
								</ul> -->
							</div> <!-- DROPDOWN MENU END --></li>
						<%
								for(Category cat : catDAO.getList()){
									
							%>
						<li><a
							href="category.jsp?id_category=<%=cat.getId_category()%>&pages=1"><%=cat.getName_category()%></a>
							<!-- DRODOWN-MEGA-MENU START -->
							<div class="drodown-mega-menu">
								<div class="left-mega col-xs-6">
									<div class="mega-menu-list">
										<a class="mega-menu-title" href="shop-gird.jsp">Hãng sản
											xuất</a>

										<ul>
											<%
											for(Producer producer : producerDAO.getListByCategory(cat.getId_category())){
											%>
											<li><a href="shop-gird.jsp"><%=producer.getName_producer() %></a></li>
											<%
												}	
											%>
										</ul>
									</div>
								</div>
								<div class="right-mega col-xs-6">
									<div class="mega-menu-list">
										<a class="mega-menu-title" href="shop-gird.jsp">Giá</a>
										<ul>
											<li><a href="shop-gird.jsp">Dưới 5 triệu</a></li>
											<li><a href="shop-gird.jsp">Từ 5 đến 10 triệu</a></li>
											<li><a href="shop-gird.jsp">Từ 10 triệu đến 15 triệu</a></li>
											<li><a href="shop-gird.jsp">Từ 15 triệu đến 20 triệu</a></li>
											<li><a href="shop-gird.jsp">Từ 20 triệu đến 30 triệu</a></li>
											<li><a href="shop-gird.jsp">Trên 30 triệu</a></li>
										</ul>
									</div>
								</div>
							</div> <!-- DRODOWN-MEGA-MENU END --></li>
							
							<%
								}	
							%>

						<li><a href="#">Delivery</a></li>
						<li><a href="#">Thông tin về chúng tôi</a></li>
					</ul>
					</nav>
				</div>
			</div>
			<!-- MAINMENU END -->
		</div>
		<div class="clean"></div>
	</div>
	</header>
	<!-- jquery js -->
	<script src="js/vendor/jquery-1.11.3.min.js"></script>

	<!-- fancybox js -->
	<script src="js/jquery.fancybox.js"></script>


	<!-- meanmenu js -->
	<script src="js/jquery.meanmenu.js"></script>


	<!-- jqueryui js -->
	<script src="js/jqueryui.js"></script>

	<!-- bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
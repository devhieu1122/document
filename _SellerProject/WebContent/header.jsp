<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>HTDStore - Điện thoại, laptop, phụ kiện chính hãng</title>
	<LINK REL="SHORTCUT ICON" HREF="image/logo/logo.png">

		<link rel="stylesheet"
			href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
			<!--Slide product--->
			<link rel="stylesheet"
				href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
				<script
					src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
				<script
					src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

				<link href="css/header.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<!----------START HEADER------------->
	<div class="header">
		<div class="f-header">
			<div class="f-logo">
				<a href="index.jsp"><img src="image/logo/logo.svg" alt="" /><span>Store.com.vn</span></a>
			</div>
			<!-- end div logo-->
			<div class="f-search">
				<form action="" method="get">
					<input class="text-search" type="text"
						placeholder="Nhập tên điện thoại laptop, phụ kiện,... cần tìm" />
					<button class="button-search" type="submit">
						<!--<i class="icon-search"></i>-->
						<i class="fas fa-search "></i>
					</button>
				</form>
			</div>
			<!--End div search-->
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


			<div class="f-menu">
				<ul>
					<%-- <%
						if (session.getAttribute("username") != null) {
					%>
					<li><a style="color: blue;">Chào : <%=session.getAttribute("username")%></a>
						<p>
							<a href="ServlerLogin?command=dangxuat">Đăng xuất</a>
						</p></li>
					<%
						}
					%>
					 --%>
					
					
					
					<li><a href="logout.jsp"><span>Đăng
								xuất</span></a></li>
	
					<li><a href="update_user.jsp?username=<%=username%>"></a><span><%=username%></span></li>
					<!-- <span><a href="ServletLogout">dang xuat</a></span> 
					<li><a href="LogoutServlet"><span>Logout</span></a></li> -->



					<!-- <li><a href="#" title="Điện thoại trợ giá"> <i class="icon-dttrogia"></i>
							<img src="image/icon/icon_trogia.gif" alt="Not found resource" srcset="" />
							<i class="fas fa-mobile-alt fa-stack-3x"></i> <span> Điện
								thoại trợ giá</span>
					</a></li> -->

					<li><a href="KhuyenMai.jsp" title="Khuyến mãi"> <!-- <i class="icon-dttrogia"></i>-->
							<i class="fas fa-gift"></i> <span> Khuyến mãi</span>
					</a></li>
					<li><a href="#" title="Hỏi đáp"> <!-- <i class="icon-dttrogia"></i>-->
							<i class="far fa-question-circle"></i> <span> Hỏi đáp</span>
					</a></li>
					<li><a href="order.jsp" title="Giỏ hàng của bạn"> <!-- <i class="icon-dttrogia"></i>-->
							<i class="fas fa-shopping-cart "></i> <!--<img src="image/icon/icon_trogia.gif" alt="Not found resource" srcset="" /> -->
							<span> Giỏ hàng</span>
					</a></li>
				</ul>
				<!---------------END F-MENU----------------->
			</div>
			<%
				} else {
			%>
			<div class="f-menu">
				<ul>
					<!-- <li><a href="#" title="Điện thoại trợ giá"> <i class="icon-dttrogia"></i>
							<img src="image/icon/icon_trogia.gif" alt="Not found resource" srcset="" />
							<i class="fas fa-mobile-alt fa-stack-3x"></i> <span> Điện
								thoại trợ giá</span>
					</a></li> -->
					<li><a href="login.jsp" title="Dang nhap"> <i
							class="fas fa-mobile-alt fa-stack-3x"></i> <span>Login</span>
					</a></li>
					<li><a href="register.jsp" title="Dang ky"> <i
							class="fas fa-mobile-alt fa-stack-3x"></i> <span>Dang ky</span>
					</a></li>

					<li><a href="KhuyenMai.jsp" title="Khuyến mãi"> <!-- <i class="icon-dttrogia"></i>-->
							<i class="fas fa-gift"></i> <span> Khuyến mãi</span>
					</a></li>
					<li><a href="#" title="Hỏi đáp"> <!-- <i class="icon-dttrogia"></i>-->
							<i class="far fa-question-circle"></i> <span> Hỏi đáp</span>
					</a></li>
					<li><a href="order.jsp" title="Giỏ hàng của bạn"> <!-- <i class="icon-dttrogia"></i>-->
							<i class="fas fa-shopping-cart "></i> <!--<img src="image/icon/icon_trogia.gif" alt="Not found resource" srcset="" /> -->
							<span> Giỏ hàng</span>
					</a></li>
				</ul>
				<!---------------END F-MENU----------------->
			</div>
			<%
				}
			%>
			<!-------------END-F-HEADER------------->
		</div>



		<nav>
		<div class="m-container">
			<ul class="menu-main">
				<li><a href="index.jsp" title="Trang chủ"> <i
						class="fas fa-home"></i><span>Trang chủ</span>
				</a>
					<li><a href="category.jsp" title="Điện thoại"> <i
							class="fas fa-mobile"></i><span>Điện thoại</span>
					</a>
						<div class="menu-sub">
							<div class="menu-col-1a">
								<h3 class="menu-category">Hãng sản xuất</h3>
								<ul>
									<li><a href="">Apple</a></li>
									<li><a href="">Samsung</a></li>
									<li><a href="">Oppo</a></li>
									<li><a href="">Huawei</a></li>
									<li><a href="">Xiaomi</a></li>
									<li><a href="">Vivo</a></li>
									<li><a href="">Nokia</a></li>
									<li><a href="">Asus</a></li>
									<li><a href="">Masstel</a></li>
									<li><a href="">Meizu</a></li>
									<li><a href="">Mobiistar</a></li>
									<li><a href="">Philips</a></li>
									<li><a href="">Wiko</a></li>
									<li><a href="">Intel</a></li>
									<li><a href="">Tecno</a></li>
									<li><a href="">Sony</a></li>
									<li><a href="">Honor</a></li>
									<li><a href="">Realme</a></li>
								</ul>
							</div>
							<div class="menu-col-1">
								<h3 class="menu-category">Mức giá</h3>
								<ul>
									<li><a href="">Dưới 1 triệu</a></li>
									<li><a href="">Từ 1 - 3 triệu</a></li>
									<li><a href="">Từ 3 - 6 triệu</a></li>
									<li><a href="">Từ 6 - 10 triệu</a></li>
									<li><a href="">Từ 10 - 15 triệu</a></li>
									<li><a href="">Trên 15 triệu</a></li>
								</ul>
							</div>
							<div class="menu-col-1">
								<h3 class="menu-category">Điện thoại bán chạy nhất</h3>
								<ul class="menu-bxh">
									<li class="clearfix"><a href="" class="menu-col-img"><img
											src="https://ss7.vzw.com/is/image/VerizonWireless/iPhoneX-Svr?$device-lg$"
											alt=""></a>
										<div class="bxh-price">
											<a href="#"><span>Oppo F9</span></a>
											<p>7.699.000đ</p>
										</div></li>
									<div class="m-clean"></div>
									<li class=" clearfix"><a href="" class="menu-col-img"><img
											src="https://ss7.vzw.com/is/image/VerizonWireless/iPhoneX-Svr?$device-lg$"
											alt=""></a>
										<div class="bxh-price22">
											<a href="#"><span>Oppo Neo9</span></a>
											<p>7.699.000đ</p>
										</div></li>
								</ul>
								s
							</div>
							<div class="menu-col-1">
								<img src="image/636741614288912853_Banner 248x248.jpg" alt=""
									style="width: 100%; height: 210px">
							</div>
						</div></li>
					<li><a href="" title="Tablet"> <i class="fas fa-tablet"></i>
							<span>Tablet</span>
					</a>
						<div class="menu-sub">
							<div class="menu-col-1a">
								<h3 class="menu-category">Hãng sản xuất</h3>
								<ul>
									<li><a href="">Apple (Ipad)</a></li>
									<li><a href="">Samsung</a></li>
									<li><a href="">lelnovo</a></li>
									<li><a href="">Huawei</a></li>
									<li><a href="">Masstel</a></li>
									<li><a href="">Itel</a></li>
								</ul>
							</div>
							<div class="menu-col-1">
								<h3 class="menu-category">Mức giá</h3>
								<ul>
									<li><a href="">Dưới 1 triệu</a></li>
									<li><a href="">Từ 1 - 3 triệu</a></li>
									<li><a href="">Từ 3 - 6 triệu</a></li>
									<li><a href="">Trên 15 triệu</a></li>
								</ul>
							</div>
							<div class="menu-col-1">
								<h3 class="menu-category">Điện thoại bán chạy nhất</h3>
								<ul class="menu-bxh">
									<li class="clearfix"><a href="" class="menu-col-img"><img
											src="https://ss7.vzw.com/is/image/VerizonWireless/iPhoneX-Svr?$device-lg$"
											alt=""></a>
										<div class="bxh-price">
											<a href="#"><span>Oppo F9</span></a>
											<p>7.699.000đ</p>
										</div></li>
									<div class="m-clean"></div>
									<li class=" clearfix"><a href="" class="menu-col-img"><img
											src="https://ss7.vzw.com/is/image/VerizonWireless/iPhoneX-Svr?$device-lg$"
											alt=""></a>
										<div class="bxh-price22">
											<a href="#"><span>Oppo Neo9</span></a>
											<p>7.699.000đ</p>
										</div></li>
								</ul>
								s
							</div>
							<div class="menu-col-1">
								<img
									src="image/636722577484242035_636669934945963395_H4.png.jpeg"
									alt="" style="width: 100%; height: 210px">
							</div>
						</div></li></li>
				<li><a href="" title="Laptop"> <i class="fas fa-laptop"></i><span>Laptop</span>
				</a>
					<div class="menu-sub">
						<div class="menu-col-1a">
							<h3 class="menu-category">Hãng sản xuất</h3>
							<ul>
								<li><a href="">Apple (Macbook)</a></li>
								<li><a href="">Asus</a></li>
								<li><a href="">Acer</a></li>
								<li><a href="">Dell</a></li>
								<li><a href="">HP</a></li>
								<li><a href="">Lenovo</a></li>
								<li><a href="">MSI</a></li>
								<li><a href="">Masstel</a></li>
								<li><a href="">Haler</a></li>
							</ul>
						</div>
						<div class="menu-col-1">
							<h3 class="menu-category">Mức giá</h3>
							<ul>
								<li><a href="" title="Dưới 5 triệu">Dưới 5 triệu</a></li>
								<li><a href="" title="Từ 5 - 10 triệu">Từ 5 - 10 triệu</a></li>
								<li><a href="" title="Từ 10 - 15 triệu">Từ 10 - 15
										triệu</a></li>
								<li><a href="" title="Từ 15 - 20 triệu">Từ 15 - 20
										triệu</a></li>
								<li><a href="" title="Từ 20 - 25 triệu">Từ 20 - 25
										triệu</a></li>
								<li><a href="" title="Từ 25 - 30 triệu">Từ 25 - 30
										triệu</a></li>
								<li><a href="" title="Trên 30 triệu">Trên 30 triệu</a></li>
							</ul>
						</div>
						<div class="menu-col-1">
							<h3 class="menu-category">Điện thoại bán chạy nhất</h3>
							<ul class="menu-bxh">
								<li class="clearfix"><a href="" class="menu-col-img"><img
										src="https://ss7.vzw.com/is/image/VerizonWireless/iPhoneX-Svr?$device-lg$"
										alt=""></a>
									<div class="bxh-price">
										<a href="#"><span>Oppo F9</span></a>
										<p>7.699.000đ</p>
									</div></li>
								<div class="m-clean"></div>
								<li class=" clearfix"><a href="" class="menu-col-img"><img
										src="https://ss7.vzw.com/is/image/VerizonWireless/iPhoneX-Svr?$device-lg$"
										alt=""></a>
									<div class="bxh-price22">
										<a href="#"><span>Oppo Neo9</span></a>
										<p>7.699.000đ</p>
									</div></li>
							</ul>
							s
						</div>
						<div class="menu-col-1">
							<img src="image/636659578548694071_H4-Section 1.png" alt=""
								style="width: 100%; height: 210px">
						</div>
					</div>
					<li><a href="" title="Phụ kiện"> <i
							class="fas fa-headphones-alt"></i><span>Phụ kiện</span>
					</a>
						<div class="menu-sub">
							<div class="menu-col-2a">
								<h3 class="menu-category">Các sản phẩm phụ kiện</h3>
								<ul>
									<li><a href="" title="Bao da ốp lưng">Bao da ốp lưng</a></li>
									<li><a href="" title="Sạc dự phòng">Sạc dự phòng</a></li>
									<li><a href="" title="Thẻ nhớ">Thẻ nhớ</a></li>
									<li><a href="" title="Phụ kiện Apple">Phụ kiện Apple</a></li>
									<li><a href="" title="Miếng dán màn hình">Miếng dán
											màn hình</a></li>
									<li><a href="" title="Tai nghe">Tai nghe</a></li>
									<li><a href="" title="Loa">Loa</a></li>
									<li><a href="" title="USB - Ổ cứng">USB - Ổ cứng</a></li>
									<li><a href="" title="Sạc cáp">Sạc cáp</a></li>
									<li><a href="" title="Chuột">Chuột</a></li>
									<li><a href="" title="Balo - Túi xách">Balo - Túi xách</a></li>
									<li><a href="" title="TV BOX">TV BOX</a></li>
									<li><a href="" title="Phụ kiện khác">Phụ kiện khác</a></li>
									<li><a href="" title="Máy chơi game">Máy chơi game</a></li>
								</ul>
							</div>
							<div class="menu-col-2">
								<h3 class="menu-category">Điện thoại bán chạy nhất</h3>
								<ul class="menu-bxh">
									<li class="clearfix"><a href="" class="menu-col-img"
										title="Oppo F9"><img
											src="https://ss7.vzw.com/is/image/VerizonWireless/iPhoneX-Svr?$device-lg$"
											alt=""></a>
										<div class="bxh-price">
											<a href="#"><span>Oppo F9</span></a>
											<p>7.699.000đ</p>
										</div></li>
									<div class="m-clean"></div>
									<li class=" clearfix"><a href="" class="menu-col-img"><img
											src="https://ss7.vzw.com/is/image/VerizonWireless/iPhoneX-Svr?$device-lg$"
											alt=""></a>
										<div class="bxh-price22">
											<a href="#" title="Oppo Neo9"><span>Oppo Neo9</span></a>
											<p>7.699.000đ</p>
										</div></li>
								</ul>
							</div>
							<div class="menu-col-2">
								<img src="image/636713668479090000_KM-Phu-Kien-248x248.png"
									alt="" style="width: 100%; height: 210px">
							</div>
						</div></li>
					<li><a href="" title="Máy đổi trả"> <i class="fas fa-gift"></i><span>Máy
								đổi trả</span>
					</a></li>
					<li><a href="SimSoDep.jsp" title="Sim & thẻ cào"> <i
							class="fas fa-id-card"></i><span>Sim & thẻ cào</span>
					</a>
						<li><a href="" title="Trả góp 0%"> <i class="fas fa-gift"></i><span>Trả
									góp 0%</span>
						</a>
			</ul>
		</div>
		</nav>
		<!-------------END MENU----------------->
		<!-------------END HEADER--------------->
	</div>
</body>
</html>
<%@page import="com.model.Category"%>
<%@page import="com.DAO.CategoryDAO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.ProductDAO"%>
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

				<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body style="font-size: 14px; font-family: Arial">
	<%
	ProductDAO pDAO = new ProductDAO();
	CategoryDAO catDAO = new CategoryDAO();
	%>
	<div class="main">
		<jsp:include page="header.jsp"></jsp:include>
		<!-------------START CONTENT--------------->
		<div class="content">
			<div class="c-wrap">
				<div class="ads">
					<a href="#"><img src="image/advertise/ads_big.gif" alt="" /></a>
				</div>
				<!-- end div ads-->
				<div class="c-banner">

					<div class="slideshow">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators" style="margin-bottom: -10px">
								<li data-target="#myCarousel" data-slide-to="0"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="3"></li>
								<li data-target="#myCarousel" data-slide-to="4"></li>
							</ol>
							<!-- Wrapper for slides -->
							<div class="carousel-inner">
								<div class="item">
									<a href="#" target="_blank"> <img
										src="image/slider/636739540756494153_F-H1_800x300.jpg" alt=""
										style="width: 100%; height: 343px;">
											<div class="carousel-caption"></a>
								</div>
							</div>
							<div class="item">
								<a href="" target="_blank"> <img
									src="image/slider/636753089265740085_Banner Galaxy A7 800x300.jpg"
									alt="" style="width: 100%; height: 343px;">
										<div class="carousel-caption"></a>
							</div>
						</div>
						<div class="item active">
							<a href="" target="_blank"> <img
								src="image/slider/636756302029984353_H1 iphone Xs - xam.png"
								alt="" style="width: 100%; height: 343px;">
									<div class="carousel-caption"></a>
						</div>
					</div>
					<div class="item">
						<a href="" target="_blank"> <img
							src="image/slider/636717413604561735_Section1-H1_800x300.jpg"
							alt="" style="width: 100%; height: 343px;">
								<div class="carousel-caption"></a>
					</div>
				</div>
				<div class="item">
					<a href="" target="_blank"> <img
						src="image/slider/636759062222415125_H1 (10).png" alt=""
						style="width: 100%; height: 343px;">
							<div class="carousel-caption"></a>
					<!--<h3>New York</h3>
          <p>We love the Big Apple!</p>-->
				</div>
			</div>
		</div>
		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"
			style="background: none"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" style="background: none"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	</div>
	<div class="right-banner">
		<div class="ads1">
			<a href="#" target="_blank"><img
				src="image/advertise/ads_small.png" alt=""
				style="width: 450px; height: 88px" /></a>
		</div>
		<div class="ads2">
			<a href="#" target="_blank"><img
				src="image/advertise/ads_small_2.jpeg" alt=""
				style="width: 450px; height: 88px" /></a>
		</div>
		<div class="news">
			<div class="n-title">
				<h3>
					TIN CÔNG NGHỆ <a href="#" target="_blank">xem tất cả</a>
				</h3>
			</div>
			<div class="line-news">
				<ul>
					<li><a href=""
						title="Trải nghiệm nhanh camera Mate 20 Pro: Zoom 10X ấn tượng, màu sắc chi tiết cực tốt">
							<img src="image/review/636740973380038657_HASP-Huawei-Y9-2.jpg"
							alt="" /> <span>Trải nghiệm nhanh camera Mate 20 Pro:
								Zoom 10X ấn tượng, màu sắc chi tiết cực tốt</span>
					</a></li>
					<li><a href="#"
						title="Nhà cầm quyền công nghệ: Samsung SX thâu tóm tất cả điện thoại android">
							<img src="image/review/huawei-y9-1.jpg"> <span>Nhà
									cầm quyền công nghệ: Samsung SX thâu tóm tất cả điện thoại
									android</span>
					</a></li>
				</ul>
			</div>
			<!--end div line-news-->
		</div>
		<!--end div news-->
	</div>
	<!--end div right-banner-->
	</div>
	<!-- end div c-banner-->
	<div class="clean" style="clear: both;">
		<hr width="auto" style="margin-top: -20px; display: none;" />
	</div>
	<!--clean-->
	<div class="produce">
		<%
			for (Category cat: catDAO.getList()){
		%>
		<h2><%=cat.getName_category()%></h2>
		<a href="category.jsp?id_category=<%=cat.getId_category()%>&pages=1" target="_blank">xem tất cả</a>
		<div class="clean"></div>
		<%
			
			List<Product> list = pDAO.getListProductByCategory(cat.getId_category(), 0, 6);

			for (Product p : list) {
		%>

		<div class="pro-box">
			<a href="product.jsp?id_product=<%=p.getId_product()%>">
				<div class="pro-title">
					<h3 class="pro-name" pro-name><%=p.getName()%></h3>
					<p class="pro-price" pro-price>
						<%=new DecimalFormat("###,###,###").format(p.getPrice())%><u><sup>đ</sup></u>
					</p>
					<label class="pro-news">Trả góp 0%</label>
				</div> <img class="pro-img" src="<%=p.getImage()%>" alt="<%=p.getName()%>" />
			</a>
		</div>
		<%
			}
		%>
		<div class="m-clean"></div>
		<%
			}
		%>
		<%-- <h2>Laptop</h2>
		<a href="category.jsp?id_category=<%=catDAO.getCategory(3).getId_category()%>&pages=1">xem tất cả</a>
		<div class="m-clean"></div>
		<%
		List<Product> listLap = pDAO.getListProductByCategory(3, 0, 6);

			for (Product p : listLap) {
		%>
		
		<div class="pro-box">
			<a href="product.jsp?<%=p.getId_product()%>" title="<%=p.getName()%>">
			<a href="ServletCart?command=plus&id_product=<%=p.getId_product()%>" title="<%=p.getName()%>">
				<div class="pro-title">
					<h3 class="pro-name" pro-name><%=p.getName() %></h3>
					<p class="pro-price" pro-price>
						<%=new DecimalFormat("###,###.###").format(p.getPrice())%><u><sup>đ</sup></u>
					</p>
					<label class="pro-news">Trả góp 0%</label>
				</div> <img class="pro-img"
				src="<%=p.getImage() %>"
				alt="<%=p.getName() %>" title="<%=p.getName() %>" />
			</a>
		</div>
		<%} %> --%>
		<div class="m-clean"></div>
		<h2>Phụ kiện giá tốt</h2>
		<a href="#">xem tất cả</a>
		<div class="accessories">
			<div class="acc">
				<a href=""> <img
					src="image/accessories/636524432304682928_636482583480745126_P1510979240_mieng-dan-kinh-cuong-luc-iphone-x-nillkin-amazing-h-pro-1-(1).jpg"
					alt="" />
					<div>
						<h4>MDMH Kính cường lực IPhone X</h4>
						<h6>1990.000đ</h6>
					</div>
				</a>
			</div>
			<div class="acc">
				<a href=""> <img
					src="image/accessories/MDMH Samsung A5 2017 Kính cường lực YVS-50k.jpg"
					alt="" />
					<div>
						<h4>MDMH Samsung A5 2017 Kính cường lực</h4>
						<h6>50.000đ</h6>
					</div>
				</a>
			</div>
			<div class="acc">
				<a href=""> <img
					src="image/accessories/636485998598902092_HASP_OP-LUNG-IPHONE-X-SILICON-ROCK-TRONG-00408310-180k.jpg"
					alt="" />
					<div>
						<h4>Ốp lưng IPhone X Silicon Rock</h4>
						<h6>180.000đ</h6>
					</div>
				</a>
			</div>
			<div class="acc">
				<a href=""> <img
					src="image/accessories/636441072882802013_HASP-SAC-NHANH-KHONG-DAY-NILLKIN-CHUAN-QI-DE-TRON-CO-DEN-00403948 550k.png"
					alt="" />
					<div>
						<h4>Sạc nhanh không dây Nillkin đế tròn</h4>
						<h6>550.00đ</h6>
					</div>
				</a>
			</div>
			<div class="acc">
				<a href=""> <img
					src="image/accessories/op lung iphone 7 meo than 150k.png" alt="" />
					<div>
						<h4>Ốp lưng IPhone 7 Plus mèo thần</h4>
						<h6>150.000đ</h6>
					</div>
				</a>
			</div>
			<div class="acc">
				<a href=""> <img
					src="image/accessories/sacduphongSuzumi-5200mah-139k .jpg" alt="" />
					<div>
						<h4>Sạc dự phòng Suzumi 5200 mAh</h4>
						<h6>1990.000đ</h6>
					</div>
				</a>
			</div>
		</div>
		<!--end accessories--->
		<div class="clear"></div>
	</div>
	<!--end product-->
	</div>
	<!-- end div c-wrap-->
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<jsp:include page="backToTop.jsp"></jsp:include>
	<!---------------END MAIN----------------->
</body>

</html>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.DAO.ProducerDAO"%>
<%@page import="com.model.Producer"%>
<%@page import="com.DAO.ProductDAO"%>
<%@page import="com.model.Product"%>
<%@page import="com.model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<%
	ProductDAO productDAO = new ProductDAO();
	ProducerDAO _producer = new ProducerDAO();
	CategoryDAO catDAO = new CategoryDAO();
	/* String id_category = "";
	if (request.getParameter("id_category") != null) {
		id_category = request.getParameter("id_category");
	} */

	int pages = 0, start = 0, end = 0, total = 0, size = 12;
	if (request.getParameter("pages") != null) {
		pages = Integer.parseInt(request.getParameter("pages"));
	}
	
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>HTDStore - <%-- <%=catDAO.getCategory(Integer.parseInt(id_category)).getName_category()%> --%>
		chính hãng, giá rẻ
	</title>
	<LINK REL="SHORTCUT ICON" HREF="image/logo/logo.png">

		<link rel="stylesheet"
			href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
			<link rel="stylesheet" href="css/catergory.css">
</head>

<body>
	<%
		String search ="";
		if (request.getParameter("name_search")!=null) {
			search = request.getParameter("name_search");
		}
		
		 ArrayList<Product> arr=null;
		if(session.getAttribute("list") == null){
			arr= (ArrayList<Product>) productDAO.searchByNameProduct(search);
		}else{
			arr = (ArrayList<Product>) session.getAttribute("list");
		}
		
		total = arr.size();
		if (total <= size) {
			start = 0;
			end = total;
		} else {
			start = (pages - 1) * size;
			end = size;
		}

		List<Product> list = productDAO.getListPage(arr, 1, 8);
	%>
	<div class="View-all">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="h-content">
			<div class="Link">
				<ul class="product-link">
					<li><a href="TrangChu.jsp" title="Trang chủ">Trang chủ</a></li>
					<li>
						&nbsp;/&nbsp;search
					</li>
				</ul>
			</div>
			<div class="banner-ads">
				<a href=""><img src="image/advertise/ads_big.gif"
					alt="Not found image" /></a>
			</div>
			<div class="product-bottom">
				<div class="product-bottom-1">
					<div class="boloc">
						<h2 style="margin-top: 0px; margin-bottom: 0px; font-size: 18px">Bộ
							lọc</h2>
					</div>
					<div class="chi-tiet-loc">
						<button class="collapsible">Hãng sản xuất</button>
						<div class="content">
							<div class="checkbox-hsx">
								<div class="timkiem">
									<input type="text" placeholder="Tìm thương hiệu" id="search">
										<button class="button-search" type="submit">
											<!--<i class="icon-search"></i>-->
											<i class="fas fa-search "></i>
										</button>
								</div>
								<form action="">
									<label class="c-checkbox">Tất cả <input type="checkbox"
										checked="checked"> <span class="checkmark"></span></label>
									<%-- <%
										for (Producer p : _producer.getListByCategory(Integer.parseInt(id_category))) {
									%> --%>
									<label class="c-checkbox"><a hre><%-- <%=p.getName_producer()%> --%>
											<input type="checkbox"><span class="checkmark"></span></a></label>
									<%-- <%
										}
									%> --%>
								</form>
							</div>
						</div>
						<button class="collapsible">Mức giá</button>
						<div class="content">
							<div class="checkbox-hsx">
								<form>
									<label class="c-checkbox">Tất cả <input type="checkbox"
										checked="checked"> <span class="checkmark"></span></label> <label
										class="c-checkbox">Dưới 1 triệu <input type="checkbox">
											<span class="checkmark"></span></label> <label class="c-checkbox">
										Từ 1 - 3 triệu <input type="checkbox"> <span
											class="checkmark"></span>
									</label> <label class="c-checkbox">Từ 3 - 6 triệu <input
										type="checkbox"> <span class="checkmark"></span></label> <label
										class="c-checkbox">Từ 6 - 10 triệu <input
										type="checkbox"> <span class="checkmark"></span></label> <label
										class="c-checkbox">Từ 10 - 15 triệu <input
										type="checkbox"> <span class="checkmark"></span></label> <label
										class="c-checkbox">Trên 15 triệu <input
										type="checkbox"> <span class="checkmark"></span></label>
								</form>
							</div>
						</div>
						<button class="collapsible">Màn hình</button>
						<div class="content">
							<div class="checkbox-hsx">
								<form>
									<label class="c-checkbox">Tất cả <input type="checkbox"
										checked="checked"> <span class="checkmark"></span></label> <label
										class="c-checkbox">Dưới 3 inch <input type="checkbox">
											<span class="checkmark"></span></label> <label class="c-checkbox">Khoảng
										4 inch <input type="checkbox"> <span class="checkmark"></span>
									</label> <label class="c-checkbox">Khoảng 5 inch <input
										type="checkbox"> <span class="checkmark"></span></label> <label
										class="c-checkbox">Khoảng 6 inch <input
										type="checkbox"> <span class="checkmark"></span></label>
								</form>
							</div>
						</div>
						<button class="collapsible">Hệ điều hành</button>
						<div class="content">
							<div class="checkbox-hsx">
								<form>
									<label class="c-checkbox">Tất cả <input type="checkbox"
										checked="checked"> <span class="checkmark"></span></label> <label
										class="c-checkbox">IOS <input type="checkbox">
											<span class="checkmark"></span></label> <label class="c-checkbox">Android
										<input type="checkbox"> <span class="checkmark"></span>
									</label>
								</form>
							</div>
						</div>
						<button class="collapsible">Tính năng nổi bật</button>
						<div class="content">
							<div class="checkbox-hsx">
								<form>
									<label class="c-checkbox">Tất cả <input type="checkbox"
										checked="checked"> <span class="checkmark"></span></label> <label
										class="c-checkbox">Face ID <input type="checkbox">
											<span class="checkmark"></span></label> <label class="c-checkbox">Cảm
										biến vân tay <input type="checkbox"> <span
											class="checkmark"></span>
									</label> <label class="c-checkbox">Quét mốc mắt <input
										type="checkbox"> <span class="checkmark"></span></label> <label
										class="c-checkbox">Chống nước, bụi <input
										type="checkbox"> <span class="checkmark"></span></label> <label
										class="c-checkbox">Màn hình tràn viền <input
										type="checkbox"> <span class="checkmark"></span></label> <label
										class="c-checkbox">Sạc nhanh <input type="checkbox">
											<span class="checkmark"></span></label> <label class="c-checkbox">2
										sim <input type="checkbox"> <span class="checkmark"></span>
									</label> <label class="c-checkbox">4G <input type="checkbox">
											<span class="checkmark"></span></label> <label class="c-checkbox">Quay
										Phim 4K <input type="checkbox"> <span
											class="checkmark"></span>
									</label>
								</form>
							</div>
						</div>
						<button class="collapsible">Nhu cầu sử dụng</button>
						<div class="content">
							<div class="checkbox-hsx">
								<form>
									<label class="c-checkbox">Tất cả <input type="checkbox"
										checked="checked"> <span class="checkmark"></span></label> <label
										class="c-checkbox">Tương thích game Liên Quân Mobile <input
										type="checkbox"> <span class="checkmark"></span></label> <label
										class="c-checkbox">Tương thích game PUBG Mobile <input
										type="checkbox"> <span class="checkmark"></span></label> <label
										class="c-checkbox">Tương thích Game Rules Of Survival
										<input type="checkbox"> <span class="checkmark"></span>
									</label>
								</form>
							</div>
						</div>
						<script>
							var coll = document
									.getElementsByClassName("collapsible");
							var i;

							for (i = 0; i < coll.length; i++) {
								coll[i]
										.addEventListener(
												"click",
												function() {
													this.classList
															.toggle("actives");
													var content = this.nextElementSibling;
													if (content.style.maxHeight) {
														content.style.maxHeight = null;
													} else {
														content.style.maxHeight = content.scrollHeight
																+ "px";
													}
												});
							}
						</script>
					</div>
				</div>
				<%
					if(total >0){
				%>
				<div class="product-bottom-2">
					<div class="tieu-chi-chon-san-pham" style="position: relative;">
						<div class="ten-san-pham" style="border-bottom: 1px solid #f3f3f3">
							<a href="#" style="text-transform: uppercase;"
								title="<%-- <%=catDAO.getCategory(Integer.parseInt(id_category)).getName_category()%> --%>">
								Tìm kiếm</a>
							<span>&nbsp;(<%=arr.size() %>+&nbsp;sản
								phẩm )
							</span>
						</div>
						<br>
						<div class="chon-tieu-chi">
							<span>Sắp xếp theo:</span> <select name="filter" id="filter">
								<option value="price-down" selected="selected">Giá cao
									đến thấp</option>
								<option value="price-up" hre>>Giá thấp đến cao</option>
								<option value="best-sell">Bán chạy</option>
								<option value="best-view">Xem nhiều nhất</option>
							</select>
						</div>
						<!-- chon-tieu-chi -->
					</div>
					<%-- <div class="hien-thi-danh-sach-san-pham">
					<div class="khung-anh">
						<a class="anh" href="product.jsp"> <img
							src="image/phone/ip xs .png">

								<div class="box-thong-tin-san-pham">
									<span>IPhone Xs Max 512GB</span>
									<p>43.999.000 ₫</p>
									<p><%=p. %></p>


								</div></a>
					</div>

				</div> --%>

					<div class="hien-thi-danh-sach-san-pham">
						 <%
							for (Product p : arr) {
						%>
						<div class="khung-anh">
							<a class="anh"
								href="product.jsp?id_product=<%=p.getId_product()%>"
								title="<%=p.getName()%>"> <img src="<%=p.getImage()%>"
								alt="Invalid image <%=p.getName()%>">
									<div class="box-thong-tin-san-pham">
										<span><%=p.getName()%></span>
										<p><%=new DecimalFormat("###,###,###").format(p.getPrice())%></p>
									</div></a>
						</div>

						<%
							}
						%>
						<div class="clean"></div>
						<%
							if (total <= 0) {
						%>
						<div style="padding-left: 20px;">
							<span>Không tìm thấy sản phẩm nào</span>
						</div>
						<%
							} else {
						%> 
						 <div class="trang-san-pham-tiep-theo">
							<ul class="btn-group">
								<li><a
									href="search.jsp?pages=1"><button>Đầu</button></a></li>
								<%
									for (int i = 1; i <= (total / size) + 1; i++) {
								%>
								<li><a
									href="search.jsp?pages=<%=i%>"><button><%=i%></button></a></li>
								<%
									}
								%>
								<li><a
									href="search.jsp?pages=<%=(total / size) + 1%>"><button>Cuối</button></a></li>

							</ul>
						</div> 
						<%
							}
						%> 
					</div>
				</div>
				<%
					}else{
					%>
					<div>
					<span style="font-size:30px; margin: 0 42px;">Không tìm thấy sản phẩm nào</span>
					</div>
					<%} %>
				<div class="clean"></div>
			</div>
			<!------START FOOTER--------->
			<jsp:include page="footer.jsp"></jsp:include>
			<jsp:include page="backToTop.jsp"></jsp:include>
</body>

</html>
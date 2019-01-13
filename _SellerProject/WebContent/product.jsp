<%@page import="java.text.DecimalFormat"%>
<%@page import="com.DAO.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<%
	ProductDAO pDAO = new ProductDAO();
	long id_product = 0;
	if (request.getParameter("id_product") != null) {
		id_product = Long.parseLong(request.getParameter("id_product"));
	}
%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>HDTStore - <%=pDAO.getProduct(id_product).getName()%></title>
	<LINK REL="SHORTCUT ICON" HREF="image/logo/logo.png">

				<!--Slider-->
			<script src="js/slider_head.js" type="text/javascript"></script>
			
					<!--slider-->					
							<script
								src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
							<script
								src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
							<script
								src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
							<link rel="stylesheet" type="text/css" href="css/Product.css">
								<script language="javascript">
									$(document).ready(function() {
										initSlideShow();

									});

									function initSlideShow() {
										if ($(".slideshow div").length > 1) //Only run slideshow if have the slideshow element and have more than one image.
										{
											var transationTime = 3000;//5000 mili seconds i.e 5 second
											$(".slideshow div:first").addClass(
													'active'); //Make the first image become active i.e on the top of other images
											setInterval(slideChangeImage,
													transationTime); //set timer to run the slide show.
										}
									}

									function slideChangeImage() {
										var active = $(".slideshow div.active"); //Get the current active element.
										if (active.length == 0) {
											active = $(".slideshow div:last"); //If do not see the active element is the last image.
										}

										var next = active.next().length ? active
												.next()
												: $(".slideshow div:first"); //get the next element to do the transition
										active.addClass('lastactive');
										next
												.css({
													opacity : 0.0
												})
												//do the fade in fade out transition
												.addClass('active')
												.animate(
														{
															opacity : 1.0
														},
														1500,
														function() {
															active
																	.removeClass("active lastactive");
														});

									}
								</script>
								<script language="JavaScript">
									var slideIndex = 1;
									showSlides(slideIndex);

									// Next/previous controls
									function plusSlides(n) {
										showSlides(slideIndex += n);
									}

									// Thumbnail image controls

									function showSlides(n) {
										var i;
										var slides = document
												.getElementsByClassName("mySlides");
										if (n > slides.length) {
											slideIndex = 1
										}
										if (n < 1) {
											slideIndex = slides.length
										}
										for (i = 0; i < slides.length; i++) {
											slides[i].style.display = "none";
										}

										slides[slideIndex - 1].Product.display = "block";

									}
								</script>
</head>

<body style="font-size: 14px; background: #f3f3f3">
	<%
		
	%>

	<div class="product-view">
		<!-- div toàn trang -->
		<!-- header o day -->
		<jsp:include page="header.jsp"></jsp:include>
		<!--end header-->
		<!--begin content-->
		<div class="link">
			<ul class="f-link">
				<li><a href="index.jsp">Trang chủ&nbsp;/</a></li>
				<li><a href="category.jsp">&nbsp;Điện thoại&nbsp;/</a></li>
				<li><a href="product.jsp">&nbsp;Huawei&nbsp;/</a></li>
				<li>&nbsp;<%=pDAO.getProduct(id_product).getName()%></li>
			</ul>
		</div>
		<!--noi dung trang-->
		<div class="content">
			<div class="tieu-de-top">
				<!-- Product name -->
				<div>
					<h1 class="product-name"><%=pDAO.getProduct(id_product).getName()%>&nbsp;<span
							class="id-product">&nbsp;(No.00<%=pDAO.getProduct(id_product).getId_product()%>)
						</span>
					</h1>
				</div>
				<!--detail-Rating-->
				<div class="noi-dung-danh-gia1">
					<div class="rating">
						<!-- so sao danh gia-->
						<span class="fa fa-star checked"></span> <span
							class="fa fa-star checked"></span> <span
							class="fa fa-star checked"></span> <span
							class="fa fa-star checked"></span> <span class="fa fa-star"></span>
						<span> <a href="#danh-gia-nhan-xet">58 khách hàng đánh
								giá </a> |
						</span> <span> <a href="#hoi-dap">294 câu hỏi được trả lời </a>
						</span>
					</div>
				</div>
			</div>
			<div class="info-san-pham">
				<!--Picture product-->
				<div class="khung-chua-cot-img-san-pham">
					<div class="khung-chua-img-san-pham">
						<div id="slider">
							<ul id="slideWrap">
								<li></li>
								<li></li>
								<li></li>
							</ul>
							<a id="prev" href="#">&#60;</a> <a id="next" href="#">&#62;</a>
						</div>
						<!--<div class="slider-holder">
                            <span id="slider-image-1"></span>
                            <span id="slider-image-2"></span>
                            <span id="slider-image-3"></span>
                            <span id="slider-image-4"></span>
                            <span id="slider-image-5"></span>
                            <div class="image-holder">
                                <img src="img/636737417649456436_huaweiY9-den-1.jpg" class="slider-image">
                                <img src="img/636737417649806408_huaweiY9-den-3.jpg" class="slider-image">
                                <img src="img/636737417649806408_huaweiY9-den-4.jpg" class="slider-image">
                                <img src="img/636737417649326447_huaweiY9-den-2.jpg" class="slider-image">
                                <img src="img/636737417649831406_huaweiY9-den-5.jpg" class="slider-image">
                                </div>
                                <div class="button-holder">
                                    <a href="#slider-image-1" class="slider-change"></a>
                                    <a href="#slider-image-2" class="slider-change"></a>
                                    <a href="#slider-image-3" class="slider-change"></a>
                                    <a href="#slider-image-4" class="slider-change"></a>
                                    <a href="#slider-image-5" class="slider-change"></a>
                                </div>
                            </div>-->
					</div>
					<div class="tool-img">
						<p class="dong-re-chuot">
							<span class="icon-search"></span> Click chuột vào ảnh để chuyển
							tiếp
						</p>
						<ul class="nut-chuc-nang-anh-san-pham">
							<li>
								<p class="icon-anh-360"></p>
								<p class="anh-360-do">Ảnh 360 độ</p>
							</li>
							<li><a rel="fbt3"
								href="https://www.youtube.com/embed/ZE_Ln6e1Fn0">
									<p class="icon-video"></p>
									<p class="btn-video">Video</p>
							</a></li>
							<li><a href="#hinh-anh">
									<p class="icon-xem-them"></p>
									<p class="xemthem">Xem thêm</p>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="khung-thong-tin-san-pham">
					<div class="c-price">
						<p class="title-price">
							5.160.000₫
							<del><%=new DecimalFormat("###,###,###").format(pDAO.getProduct(id_product).getPrice()) %> ₫</del>
							<label class="news">Giảm <%=pDAO.getProduct(id_product).getPromotion()%>%</label>
						</p>
					</div>
					<!--Status Product-->
					<div class="so-luong-khach-hang-dat-san-pham">
						<p class="card-recent">7 khách hàng vừa cho sản phẩm vào giỏ
							hàng 15 phút trước</p>
						<p class="giao-hang-1-gio">SẢN PHẨM NHẬN GIAO HÀNG TRONG 1 GIỜ
						</p>
					</div>
					<div class="inf-pro">
						<p class=" title-km">Khuyến mại đặc biệt (SL có hạn)</p>
						<ul class="km">
							<li>Tặng PMH 300,000đ</li>
							<li>Tặng Sạc Dự Phòng Xiaomi 5.000mAh</li>
							<li>Gói bảo hành mở rộng 15 tháng</li>
							<li>Đổi trả 45 ngày nếu lỗi NSX</li>
						</ul>
						<!--Button-->
						<div id="btn-order">
							<ul class="khung-nut-dat-hang">
								<li class="nut-mua-ngay-1-gio"><a href="ServletCart?command=plus&id_product=<%=id_product%>">
										<p>MUA NGAY</p> <span>Giao hàng trong 1 giờ hoặc nhận
											tại shop</span>
								</a></li>
								<li class="nut-tra-gop"><a>
										<p>TRẢ GÓP</p> <span>Xét duyệt nhanh qua điện thoại</span>
								</a></li>
								<li
									style="width: 218px; height: 60px; margin-bottom: 12px; float: left; width: 50%; padding: 0 6px;">
									<a class="nut-tra-gop-the">
										<p>trả góp qua thẻ</p> <span>Visa, Master Card, JCB</span>
								</a>
								</li>
							</ul>
							<p class="sdt-tu-van">
								Gọi &nbsp<strong>1800-1000</strong>&nbspđể được tư vấn (miễn phí
								cuộc gọi)
							</p>
						</div>
					</div>
				</div>
				<div class="khung-cam-ket">
					<h4 class="tieu-de-cam-ket">HTDShop cam kết:</h4>
					<ul class="dieu-cam-ket">
						<li style="width: 220px; height: 18px;"><span class="ic ck1"></span>
							<p>Hàng chính hãng</p></li>
						<li style="width: 220px; height: 18px;"><span class="ic2 ck2"
							style="width: 17px;"></span>
							<p>Bảo hành 12 tháng chính hãng</p></li>
						<li style="width: 220px; height: 36px;"><span class="ic3 ck3"></span>
							<p>Giao hàng miễn phí toàn quốc trong 60 phút</p></li>
						<li style="width: 220px; height: 36px;"><span class="ic4 ck4"></span>
							<p>Bảo hành nhanh tại HTD Shop trên toàn quốc</p></li>
					</ul>
					<p class="shop-gan">Tìm shop còn hàng gần bạn:</p>
					<div class="shop-gan-ul">
						<div class="danh-sach-thanh-pho">
							<select class="comb">
								<option>Hồ Chí Minh</option>
								<option>Hà Nội</option>
								<option>Đà Nẵng</option>
								<option>Nha Trang</option>
								<option>Hải Phòng</option>
								<option>Cà Mau</option>
							</select> <select class="comb">
								<option>Chọn Quận / Huyện</option>
								<option>Quận 1</option>
								<option>Quận 3</option>
								<option>Quận Hoàn Kiếm</option>
								<option>Quận Long Biên</option>
								<option>Quận Đồ Sơn</option>
							</select> <select class="comb">
								<option>Chọn màu kiểm tra</option>
								<option>Trắng</option>
								<option>Đỏ</option>
								<option>Vàng</option>
								<option>Lam</option>
								<option>Đen</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			<!--Chia 3 cot , trong đó khung 4 chuc nang la 2 cot con khung thong so ky thuat la 2 cot -->
			<!--Dac diem noi bat,hinh anh, hoi & dap , danh gia -->
			<div class="chia-cot">
				<div class="khung-4-chuc-nang">
					<div class="box-4-chuc-nang-big">
						<div class="box-4-chuc-nang">
							<ul class="dong-4-chuc-nang">
								<li><a href="#dac-diem-noi-bat">Đặc điểm nổi bật</a></li>
								<li><a href="#danh-gia-nhan-xet">Đánh giá, nhận xét</a></li>
								<li><a href="#hoi-dap">Hỏi & đáp</a></li>
								<li><a href="#hinh-anh">Hình ảnh</a></li>
							</ul>
							<div class="noi-dung-dac-diem-noi-bat" id="dac-diem-noi-bat">
								<!-- Slideshow container -->
								<div class="slideshow-container">
									<!-- Full-width images with number and caption text -->
									<div class="mySlides fade">
										<img src="image/review/huawei-y9-1.jpg" style="width: 100%">
									</div>
									<div class="mySlides fade">
										<img src="image/review/huawei-y9-2.jpg" style="width: 100%">
									</div>
									<div class="mySlides fade">
										<img src="image/review/huawei-y9-3.JPG" style="width: 100%">
									</div>
									<div class="mySlides fade">
										<img src="image/review/huawei-y9-4.jpg" style="width: 100%">
									</div>
									<div class="mySlides fade">
										<img src="image/review/huawei-y9-5.jpg" style="width: 100%">
									</div>
									<div class="mySlides fade">
										<img src="image/review/huawei-y9-6.jpg" style="width: 100%">
									</div>
									<!-- Next and previous buttons -->
									<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a
										class="next" onclick="plusSlides(1)">&#10095;</a>
								</div>
								<div class="danh-gia-chi-tiet"></div>
								<h3 class="dong-danh-gia">Đánh giá chi tiết Huawei Y9
									(2019)</h3>
								<!-- Button to Open the Modal -->
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#myModal"
									style="margin-left: 350px;">Xem chi tiết</button>
								<!-- The Modal -->
								<div class="modal" id="myModal">
									<div class="modal-dialog">
										<div class="modal-content"
											style="width: 872px; margin-left: -150px;">
											<!-- Modal Header -->
											<div class="modal-header" style="width: 872px">
												<h4 class="modal-title"
													style="width: 872px; font-weight: bold; font-size: 20px; text-transform: uppercase;">Đặc
													điểm nổi bật của sản phẩm</h4>
												<button type="button" class="close" data-dismiss="modal"
													style="">&times;</button>
											</div>
											<!-- Modal body -->
											<div class="modal-body" style="width: 872px">
												<p class="thongtinchitiet" style="text-align: justify;">
													<strong>Huawei Y9 2019 sở hữu màn hình siêu lớn
														tới 6,5 inch và 4 camera AI, mang đến cho bạn những trải
														nghiệm đáng kinh ngạc.</strong>
												</p>
												<img src="image/review/huawei-y9-1.jpg" width="840px"
													height="560px">
													<h2 style="text-align: justify;">
														<strong>4 camera trí tuệ nhân tạo AI, hoàn hảo
															mọi góc nhìn</strong>
													</h2>
													<p class="thongtinchitiet" style="text-align: justify;">Cả
														camera chính lẫn camera trước của Huawei Y9 2019 đều là
														những cụm camera kép chất lượng với sự hỗ trợ của trí tuệ
														nhân tạo AI. Camera trước bao gồm hai cảm biến 16MP + 2MP
														còn camera chính là 13MP + 2MP, cho bạn khả năng chụp ảnh
														xóa phông ấn tượng. AI sẽ tự động nhận diện được hơn 500
														nhóm chủ thể, thuộc 22 chủ đề khác nhau để đưa ra những
														tùy chỉnh tối ưu hóa cảnh qua thời gian thực, mang đến
														những bức ảnh đẹp và sinh động nhất.</p> <img
													src="image/review/huawei-y9-3.JPG" width="840px"
													height="560px">
														<h2 style="text-align: justify;">
															<strong>Thiết tế cá tính, trẻ trung và hiện đại</strong>
														</h2>
														<p class="thongtinchitiet" style="text-align: justify;">Huawei
															Y9 2019 nổi bật nhờ mặt lưng làm cong 3D tinh tế, kết hợp
															dải màu óng ánh, có khả năng thay đổi theo góc nhìn hết
															sức ấn tượng. Huawei cũng khéo léo sử dụng các màu sắc
															độc đáo là Đen Huyền và Xanh Saphire hiện đại, cá tính.
															Chiếc điện thoại trên tay bạn sẽ thu hút mọi ánh nhìn.</p> <img
														src="image/review/huawei-y9-5.jpg" width="840px"
														height="560px">
															<h2 style="text-align: justify;">
																<strong>Trải nghiệm màn hình siêu lớn 6,5inch</strong>
															</h2>
															<p class="thongtinchitiet" style="text-align: justify;">Một
																màn hình lớn luôn mang đến cho chúng ta những trải
																nghiệm tuyệt vời. Huawei Y9 2019 mang trên mình màn hình
																kích thước tới 6,5 inch, độ phân giải Full HD+ sắc nét
																và tỉ lệ 19,5:9 thích hợp cho xem phim. Đồng thời màn
																hình này được làm tràn viền, cho cảm giác sống động khi
																giải trí. Những hình ảnh lớn, tuyệt đẹp, sắc nét sẽ luôn
																xuất hiện trước mặt bạn.</p> <img
															src="image/review/huawei-y9-2.jpg" width="840px"
															height="560px">
																<h2 style="text-align: justify;">
																	<strong>An toàn cho mắt</strong>
																</h2>
																<p class="thongtinchitiet" style="text-align: justify;">Không
																	chỉ lớn đẹp, màn hình Huawei Y9 2019 còn rất an toàn
																	cho người sử dụng khi có chế độ Eye Comfort chuyên bảo
																	vệ mắt. Khi kích hoạt chế độ trên, hình ảnh sẽ dịu nhẹ,
																	lọc đi ánh sáng xanh độc hại để mắt bạn vẫn an toàn dù
																	sử dụng trong đêm tối. Chế độ bảo vệ mắt của Huawei Y9
																	2019 đã được chứng nhận bởi TUV Rheinland, giúp bạn
																	hoàn toàn yên tâm khi dùng.</p>
																<h2 style="text-align: justify;">
																	<strong>Hiệu năng mạnh mẽ, chuyên gia chơi
																		game</strong>
																</h2>
																<p class="thongtinchitiet" style="text-align: justify;">Huawei
																	Y9 2019 được trang bị bộ vi xử lý mới Kirin 710 do
																	chính Huawei sản xuất trên tiến trình 12nm, hiệu năng
																	cực mạnh và tiết kiệm điện. Con chip này có 8 nhân và
																	công nghệ GPU Turbo, tối ưu hiệu suất đồ họa để bạn có
																	khả năng chơi game tốt nhất. Tất nhiên là những tác vụ
																	thông thường cũng vô cùng mượt mà khi bên cạnh con chip
																	mạnh mẽ, Y9 2019 còn có tới 4GB RAM và 64GB bộ nhớ
																	trong; đảm bảo cho máy có đủ không gian đa nhiệm, cài
																	ứng dụng và lưu trữ thoải mái.</p> <img
																src="image/review/huawei-y9-4.jpg" width="840px"
																height="560px">
																	<h2 style="text-align: justify;">
																		<strong>Dung lượng pin bền bỉ</strong>
																	</h2>
																	<p class="thongtinchitiet" style="text-align: justify;">Huawei
																		Y9 2019 có mọi yếu tố để mang đến một thời lượng pin
																		tốt cho người dùng. Viên pin của máy dung lượng cực
																		cao 4000 mAh kết hợp cùng con chip tiết kiệm điện và
																		cơ chế quản lý pin thông minh sẽ giúp cho bạn thoải
																		mái sử dụng trong hơn một ngày mà không lo hết pin.</p> <img
																	src="image/review/huawei-y9-6.jpg " width="840px"
																	height="560px">
											</div>
											<!-- Modal footer -->
											<div class="modal-footer">
												<button type="button" class="btn btn-danger"
													data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="khung-danh-gia-nhan-xet" id="danh-gia-nhan-xet">
						<div class="dong-danh-gia-ten-san-pham">
							<h2>Đánh giá &amp; Nhận xét Huawei Y9 (2019)</h2>
						</div>
						<div class="khung-3-o-danh-gia">
							<div class="dinh-dang-o o-1">
								<h5 align="center" style="font-size: 20px; margin-bottom: 3px;">
									4/5</h5>
								<ul class="khung-icon-sao">
									<li><span class="fa fa-star checked"
										style="font-size: 24px"></span></li>
									<li><span class="fa fa-star checked"
										style="font-size: 24px"></span></li>
									<li><span class="fa fa-star checked"
										style="font-size: 24px"></span></li>
									<li><span class="fa fa-star checked"
										style="font-size: 24px"></span></li>
									<li><span class="fa fa-star " style="font-size: 24px"></span></li>
								</ul>
								<br>
									<p>60 đánh giá &amp; nhận xét</p>
							</div>
							<div class="dinh-dang-o o-2">
								<ul class="dinh-dang-thong-tin-o-2">
									<li><span style="width: 45px;">5 sao</span> <span
										class="thanh-ty-le-phan-tram"> <span
											style="width: 56%; background-color: #2a7709"> </span>
									</span> <span class="so-phieu"> 34 </span></li>
									<li><span style="width: 45px;">4 sao</span> <span
										class="thanh-ty-le-phan-tram"> <span
											style="width: 18%; background-color: #2a7709"> </span>
									</span> <span class="so-phieu"> 11 </span></li>
									<li><span style="width: 45px;"> 3 sao </span> <span
										class="thanh-ty-le-phan-tram"> <span
											style="width: 5%; background-color: #2a7709"> </span>
									</span> <span class="so-phieu"> 9 </span></li>
									<li><span style="width: 45px;"> 2 sao </span> <span
										class="thanh-ty-le-phan-tram"> <span
											style="width: 15%; background-color: yellow"> </span>
									</span> <span class="so-phieu"> 9 </span></li>
									<li><span style="width: 45px;"> 1 sao </span> <span
										class="thanh-ty-le-phan-tram"> <span
											style="width: 5%; background-color: red"> </span>
									</span> <span class="so-phieu"> 3 </span></li>
								</ul>
							</div>
							<div class="dinh-dang-o o-3">
								<h4 style="margin-bottom: 15px;">Bạn đã dùng sản phẩm này?</h4>
								<p class="gui-danh-gia-cua-ban">
									<span>Gửi đánh giá của bạn</span>
								</p>
							</div>
						</div>
						<div class="cham-sao-san-pham" style="display: block;">
							<h4 class="gui-nhan-xet-cua-ban">Gửi nhận xét của bạn</h4>
							<div class="khung-cmt">
								<p class="ban-cham-san-pham-nay-bao-nhieu-sao">Bạn chấm sản
									phẩm này bao nhiêu sao?</p>
								<div class="khung-sao">
									<div class="khung-dinh-dang-sao ">
										<span class="fa fa-star"></span> <span class="fa fa-star"></span>
										<span class="fa fa-star"></span> <span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
									</div>
								</div>
								<div class="chon-danh-gia-ve-san-pham" style="display: none;">
									<p>Vui lòng chọn đánh giá của bạn về sản phẩm này.</p>
								</div>
								<textarea id="txtNoteRating" name="txtNoteRating" rows="3"
									class="o-cmt "
									placeholder="Bạn có khuyên người khác mua sản phẩm này không? Tại sao?">
                                                        </textarea>
								<p style="color: #d0011b; font-size: 12px; display: none">Mời
									bạn đánh giá sản phẩm.(Tối thiểu 3 ký tự)</p>
								<div class="danh-gia-100-ky-tu ">
									<p>Một đánh giá có ích thường dài từ 100 ký tự trở lên</p>
									<ul>
										<li>
											<button type="button" style="height: 30px">Hủy</button>
										</li>
										<li>
											<button type="button"
												style="background-color: #d0021b; height: 30px">Gửi
											</button>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="box-cmt">
						<div class="comment" id="hoi-dap" style="border-bottom-width: 0px">
							<div class="hoi-dap-ve-y9">Hỏi Đáp về Huawei Y9 (2019)</div>
							<div class="cach-le-cmt">
								<div class="vien-o-cmt">
									<textarea rows="3" class="o-binh-luan" id="txa-cmt"
										placeholder="Viết bình luận của bạn (Vui lòng gõ tiếng Việt có dấu)"></textarea>
									<ul class="dinh-dang-nut-gui">
										<li>
											<button class="nut-gui" id="btn-cmt-gui" type="button">Gửi
												câu hỏi</button>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- 1 khung rieng -->
					<div class="khung-hinh-anh-thuc-te" id="hinh-anh">
						<div class="td-hinh-anh">Hình ảnh thực tế</div>
						<!-- Slideshow container -->
						<div class="slideshow-container" style="height: 132px">
							<!-- Full-width images with number and caption text -->
							<div class="mySlides fade">
								<img src="image/review/636740973398778657_HASP-Huawei-Y9-23.jpg"
									style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
									<img
									src="image/review/636740973394428657_HASP-Huawei-Y9-21.jpg"
									style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
										<img
										src="image/review/636740973393668657_HASP-Huawei-Y9-20.jpg"
										style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
											<img
											src="image/review/636740973393158657_HASP-Huawei-Y9-18.jpg"
											style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
												<img
												src="image/review/636740973392458657_HASP-Huawei-Y9-17.jpg"
												style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
													<img
													src="image/review/636740973391958657_HASP-Huawei-Y9-14.jpg"
													style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
							</div>
							<div class="mySlides fade">
								<img src="image/review/636740973380148657_HASP-Huawei-Y9-5.jpg"
									style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
									<img src="image/review/636740973380038657_HASP-Huawei-Y9-2.jpg"
									style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
										<img
										src="image/review/636741806626536086_huawei-y9-2019-11.JPG"
										style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
											<img
											src="image/review/636741806622361380_huawei-y9-2019-10.JPG"
											style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
												<img
												src="image/review/636741806597523288_huawei-y9-2019-9.JPG"
												style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
													<img
													src="image/review/636741806579199658_huawei-y9-2019-8.JPG"
													style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
							</div>
							<div class="mySlides fade">
								<img src="image/review/636741806389344242_huawei-y9-2019-5.JPG"
									style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
									<img src="image/review/636741806389319244_huawei-y9-2019-6.JPG"
									style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
										<img
										src="image/review/636741806389319244_huawei-y9-2019-4.JPG"
										style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
											<img
											src="image/review/636741806389269248_huawei-y9-2019-3.JPG"
											style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
												<img
												src="image/review/636741806389244250_huawei-y9-2019-2.JPG"
												style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
													<img
													src="image/review/636741806389244250_huawei-y9-2019-1.JPG"
													style="width: 120px; height: 100px; padding-left: 10px; padding-right: 10px">
							</div>
							<!-- Next and previous buttons -->
							<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a
								class="next" onclick="plusSlides(1)">&#10095;</a>
						</div>
					</div>
					<!-- 1 khung rieng -->
				</div>
				<!--Thong so ky thuat-->
				<div class="cot-thong-so-ky-thuat">
					<!-- chua dinh dang-->
					<div class="dong-thong-so-ky-thuat">
						<h2>Thông số kỹ thuật</h2>
					</div>
					<div class="thong-so-chi-tiet-san-pham">
						<ul>
							<li><label>Màn hình :</label>
								<p style="width: 180px; height: 18px">6.5 in, 1080 x 2340 px</p>
							</li>
							<li><label>Camera trước :</label>
								<p style="width: 180px; height: 18px">16 MP và 2 MP (2
									camera)</p></li>
							<li><label>Camera sau :</label>
								<p style="width: 180px; height: 20px;">13 MP và 2 MP (2
									camera)</p></li>
							<li><label>RAM :</label>
								<p style="width: 180px; height: 18px">4 GB</p></li>
							<li><label>Bộ nhớ trong :</label>
								<p style="width: 180px; height: 18px">64 GB</p></li>
							<li style="width: 280px; height: 64px"><label
								style="width: 120px; height: 54px">CPU :</label>
								<p style="width: 180px; height: 54px">HUAWEI Kirin 710, 8,
									4xCortex A73 2.2GHz + 4xCortex A53 1.7GHz</p></li>
							<li><label>GPU :</label>
								<p style="width: 180px; height: 18px">Adreno 616</p></li>
							<li><label>Dung lượng pin :</label>
								<p style="width: 180px; height: 18px">4000 mAh</p></li>
							<li><label>Hệ điều hành :</label>
								<p style="width: 180px; height: 18px">Android 8.1</p></li>
						</ul>
						<!-- cau-hinh-chi-tiet -->
						<button type="button" class="btn btn-info btn-lg"
							data-toggle="modal" data-target="#chctsp"
							style="width: 268px; height: 43px; padding-top: 4px; background-color: white; color: #337ab7; font-size: 12px">Xem
							cấu hình chi tiết</button>

						<!-- Modal -->
						<div class="modal fade" id="chctsp" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<h4 class="modal-title"
											style="font-weight: bold; font-size: 24px; padding-right: 15px; color: red">
											Thông số kỹ thuật</h4>
										<button type="button" class="close" data-dismiss="modal">&times;</button>

									</div>
									<div class="modal-body">
										<div class="thong-so-ky-thuat-chi-tiet-san-pham ">
											<ul>

												<li style="font-size: 18px; color: red; font-weight: bold">Màn
													hình</li>
												<li><label>Công nghệ màn hình :</label> <span>LTPS
														LCD</span></li>
												<li><label>Màu màn hình :</label> <span>16.7
														triệu màu</span></li>
												<li><label>Chuẩn màn hình :</label> <span>Full
														HD +</span></li>
												<li><label>Độ phân giải màn hình :</label> <span>1080
														x 2340 Pixels</span></li>
												<li><label>Màn hình :</label> <span>6.5 inchs</span></li>
												<li><label>Mặt kính màn hình :</label> <span>Mặt
														kính cong 2.5D</span></li>

												<li style="font-size: 18px; color: red; font-weight: bold">Camera
													Trước</li>
												<li><label>Độ phân giải :</label> <span>16 MP và
														2 MP (2 camera)</span></li>
												<li><label>Thông tin khác :</label> <span>Chế độ
														làm đẹp 3D, chế độ chân dung, flash màn hình, chụp hình
														bằng cử chỉ, mở khóa màn hình bằng khuôn mặt</span></li>

												<li style="font-size: 18px; color: red; font-weight: bold">Camera
													Sau</li>
												<li><label>Độ phân giải :</label> <span>13 MP và
														2 MP (2 camera)</span></li>
												<li><label>Quay phim :</label> <span>Full HD
														1080p@30fps</span></li>
												<li><label>Đèn Flash :</label> <span>Có</span></li>
												<li><label>Chụp ảnh nâng cao :</label> <span>Chụp
														3D toàn cảnh, chụp chân dung 3D, chụp ảnh góc rộng, chụp
														đơn sắc, hội họa ánh sáng, chụp đêm, máy ảnh chuyên
														nghiệp, chế độ chân dung, làm đẹp video, Panorama, HDR</span></li>


												<li style="font-size: 18px; color: red; font-weight: bold">Cấu
													hình phần cứng</li>
												<li><label>Tốc độ CPU :</label> <span>4xCortex
														A73 2.2GHz + 4xCortex A53 1.7GHz</span></li>
												<li><label>Số nhân :</label> <span>8</span></li>
												<li><label>Chipset :</label> <span>HUAWEI Kirin
														710</span></li>
												<li><label>RAM :</label> <span>4 GB</span></li>
												<li><label>Chip đồ họa (GPU) :</label> <span>Adreno
														616</span></li>
												<li><label>Cảm biến :</label> <span> Cảm biến
														vân tay, cảm biến tiệm cận, Cảm biến ánh sáng xung quang,
														la bàn điện tử, cam biến trọng lực, con quay hồi chuyển</span></li>


												<li style="font-size: 18px; color: red; font-weight: bold">Bộ
													nhớ &amp; Lưu trữ</li>
												<li><label>Danh bạ lưu trữ :</label> <span>Không
														giới hạn</span></li>
												<li><label>ROM :</label> <span>64 GB</span></li>
												<li><label>Bộ nhớ còn lại :</label> <span>59GB</span></li>
												<li><label>Thẻ nhớ ngoài :</label> <span>MicroSD</span>
												</li>
												<li><label>Hỗ trợ thẻ nhớ tối đa :</label> <span>400
														GB</span></li>

												<li style="font-size: 18px; color: red; font-weight: bold">Thiết
													kế &amp; Trọng lượng</li>
												<li><label>Kiểu dáng :</label> <span>Nguyên Khối
														+ Thẳng</span></li>
												<li><label>Chất liệu :</label> <span>Khung kim
														loại + mặt kính cường lực</span></li>
												<li><label>Kích thước :</label> <span>162.4mm x
														77.1mm x 8.05mm</span></li>
												<li><label>Trọng lượng :</label> <span>173g</span></li>
												<li><label>Khả năng chống nước :</label> <span>Không</span>
												</li>

												<li style="font-size: 18px; color: red; font-weight: bold">Thông
													tin pin</li>
												<li><label>Loại pin :</label> <span>Li-Po</span></li>
												<li><label>Dung lượng pin :</label> <span>4000
														mAh </span></li>
												<li><label>Pin có thể tháo rời :</label> <span>Không</span>
												</li>
												<li><label>Chế độ sạc nhanh :</label> <span>Có</span></li>

												<li style="font-size: 18px; color: red; font-weight: bold">Kết
													nối &amp; Cổng giao tiếp</li>
												<li><label>Loại SIM :</label> <span>Nano SIM</span></li>
												<li><label>Khe cắm sim :</label> <span>2</span></li>
												<li><label>Wifi :</label> <span> 802.11 b/g/n,
														Wi-Fi Direct, Wi-Fi hotspot</span></li>
												<li><label>GPS :</label> <span>A-GPS, GLONASS</span></li>
												<li><label>Bluetooth :</label> <span>A2DP, LE,
														v4.2</span></li>
												<li><label>GPRS/EDGE :</label> <span>Có</span></li>
												<li><label>NFC :</label> <span>Không</span></li>
												<li><label>Cổng sạc :</label> <span>MicroUSB</span></li>
												<li><label>Jack (Input &amp; Output) :</label> <span>3.5mm</span>
												</li>

												<li style="font-size: 18px; color: red; font-weight: bold">Giải
													trí &amp; Ứng dụng</li>
												<li><label>Xem phim :</label> <span>True</span></li>
												<li><label>Nghe nhạc :</label> <span>True</span></li>
												<li><label>Ghi âm :</label> <span>Có</span></li>
												<li><label>FM radio :</label> <span>Có</span></li>
												<li><label>Đèn pin :</label> <span>Có</span></li>
												<li><label>Chức năng khác :</label> <span>Đang
														cập nhật</span></li>

												<li style="font-size: 18px; color: red; font-weight: bold">Bảo
													hành</li>
												<li><label>Thời gian bảo hành :</label> <span>12
														Tháng</span></li>

												<li style="font-size: 18px; color: red; font-weight: bold">Hệ
													điều hành</li>
												<li><label>Hệ điều hành :</label> <span>Android
														8.1</span></li>

											</ul>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>

							</div>
						</div>
						<!-- cau-hinh-chi-tiet -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clean"></div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<jsp:include page="backToTop.jsp"></jsp:include>
</body>

</html>
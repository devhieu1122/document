<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>HTDStore - Thông tin nhận hàng</title>
	<LINK REL="SHORTCUT ICON" HREF="image/logo/logo.png">

		<link rel="stylesheet"
			href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">
			<!-- Latest compiled and minified CSS -->
			<link rel="stylesheet"
				href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

				<!-- Optional theme -->
				<link rel="stylesheet"
					href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

					<!-- Latest compiled and minified JavaScript -->
					<script
						src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

					<link rel="stylesheet" href="css/ThongTinNhanHang.css">
</head>
<body>
	<div class="view-main">
		<!--header-->

		<!--header-->

		<div class="view-ri">
			<div class="gh-cot-1">
				<div class="ttkh">
					<p class="td-ttkh">
						<span>1.</span> Thông tin khách hàng
					</p>
					<div class="ttkh-chitiet">
						<div class="ttkh-chitiets">
							<p id="CustomerName">Hacker</p>
							<p id="CustomerPhone">01226699208</p>
							<p id="CustomerEmail">HackerNumberOne@gmail.com</p>
						</div>
						<a class="ttkh-edit" href="Order.jsp"><p>Sửa thông tin</p></a>
					</div>
				</div>
				<div class="pt-nhanhang">
					<div class="ptnh">
						<span>2.</span> Phương thức nhận hàng
					</div>
					<div class="khung-nhan-hang">
						<div class="td-nhanhang">Chọn phương thức nhận hàng sẽ giúp
							bạn nhận được sản phẩm nhanh hơn</div>
						<div class="btn-nhanhang">
							<ul class="nav nav-pills mb-2" id="pills-tab" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="pills-store-tab" data-toggle="pill" href="#pills-store"
									role="tab" aria-controls="pills-store" aria-selected="true">
										<p style="height: 55px; width: 335px">
											<img src="image/icon/Shop.png">
										</p>
										<p style="display: block; text-align: center; color: #d0021b;">Nhận
											hàng tại cửa hàng HTDStore</p>
								</a></li>
								<li class="nav-item"><a class="nav-link"
									id="pills-home-tab" data-toggle="pill" href="#pills-home"
									role="tab" aria-controls="pills-home" aria-selected="false">
										<p style="height: 55px; width: 335px">
											<img src="image/icon/delivery.png">
										</p>
										<p style="display: block; text-align: center; color: #d0021b;">Giao
											hàng tận nơi, miễn phí!</p>
								</a></li>

							</ul>
							<div class="tab-content" id="pills-tabContent">
								<div class="tab-pane fade show active" id="pills-store"
									role="tabpanel" aria-labelledby="pills-store-tab">
									<div class="card">
										<div class="card-header btn" data-toggle="collapse"
											data-target="#hcm" style="font-weight: bold">Hồ Chí
											Minh</div>
										<div class="card-body collapse" data-toggle="collapse"
											aria-expanded="false" id="hcm">
											<form class="checkbox-ch ">
												<input type="radio" name="hcm" value="hcm1">Địa chỉ:
													Số 261 - 263 Khánh Hội, P. 5, Q. 4, TP. Hồ Chí Minh<br>
														<input type="radio" name="hcm" value="hcm2">Địa
															chỉ: Số 418 Nguyễn Văn Nghi, P. 7, Q. Gò Vấp , TP. Hồ Chí
															Minh<br> <input type="radio" name="hcm" value="hcm3">Địa
																	chỉ: Số 176 Ông Ích Khiêm, P. 5, Q. 11, TP. Hồ Chí Minh<br>
																		<input type="radio" name="hcm" value="hcm4">Địa
																			chỉ: Số 149 Cách Mạng Tháng Tám, P. 5, Q. 3, TP. Hồ
																			Chí Minh<br> <input type="radio" name="hcm"
																				value="hcm5">Địa chỉ: Số 44 Nguyễn Đình
																					Chiểu, P. Phú Cường, Thị xã Thủ Dầu Một, Tỉnh Bình
																					Dương<br>
											</form>
										</div>
									</div>
									<div class="card">
										<div class="card-header btn" data-toggle="collapse"
											data-target="#kh" style="font-weight: bold">Khánh Hòa</div>
										<div class="card-body collapse" data-toggle="collapse"
											aria-expanded="false" id="kh">
											<form class="checkbox-ch ">
												<input type="radio" name="kh" value="kh1">Số 77 - 79
													Thống Nhất (Ngã tư Quang Trung - Thống nhất ), P. Vạn
													thắng, TP. Nha Trang, Tỉnh Khánh Hòa<br> <input
														type="radio" name="kh" value="hcm2">Số 2 Thái
															Nguyên, P. Phương Sài, TP. Nha Trang, Tỉnh Khánh Hòa<br>
											</form>
										</div>
									</div>
									<div class="card">
										<div class="card-header btn" data-toggle="collapse"
											data-target="#hn" style="font-weight: bold">Hà Nội</div>
										<div class="card-body collapse" data-toggle="collapse"
											aria-expanded="false" id="hn">
											<form class="checkbox-ch ">
												<input type="radio" name="hn" value="hn1">Số 45 Thái
													Hà, P. Trung Liệt, Q. Đống Đa, TP. Hà Nội <br> <input
														type="radio" name="hn" value="hn2">Địa chỉ: Số 92
															Hai Bà Trưng (Ngã tư Hai Bà Trưng - Phan Bội Châu), P.
															Cửa Nam, Q. Hoàn Kiếm, TP. Hà Nội<br> <input
																type="radio" name="hn" value="hn3">Địa chỉ: Số
																	46 Hồ Tùng Mậu, P. Dịch Vọng, Q. Cầu Giấy, TP. Hà Nội<br>
																		<input type="radio" name="hn" value="hn4">Địa
																			chỉ: Số 325 Phố Huế, P. Phố Huế, Q. Hai Bà Trưng, TP.
																			Hà Nội<br> <input type="radio" name="hn"
																				value="hn5">Địa chỉ: Số 3 - 5 Đại La (Ngã tư
																					Đại La- Trương Định), P. Trương Định, Q. Hai Bà
																					Trưng, TP. Hà Nội<br>
											</form>
										</div>
									</div>
									<div class="khung-btn-xacnhan">
										<a href="ThongTinThanhToan.jsp">
											<button type="button" class="btn-continue">Tiếp tục</button>
										</a>
									</div>
								</div>
								<div class="tab-pane fade" id="pills-home" role="tabpanel"
									aria-labelledby="pills-home-tab">
									<form class="thong-tin-khach-hang">
										<div class="form-dien-tt">

											<p class="lb">Tỉnh/thành phố:</p>
											<div>
												<input class="txt" type="text" name="tinh-tp" id="ttp"
													placeholder="Khánh Hòa">
											</div>
											<p class="lb">Quận/Huyện:</p>
											<div>
												<input class="txt" type="text" name="qh" id="cqh"
													placeholder="Chọn Quận/Huyện">
											</div>
											<p class="lb">Địa chỉ:</p>
											<div>
												<input class="txt" type="text" name="dc" id="dct"
													placeholder="Nhập số nhà, tên đường, phường / xã">
											</div>

										</div>
										<div class="khung-btn-xacnhan">
											<button type="button" class="btn-continue">Tiếp tục</button>
										</div>
									</form>

								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="gh-cot-2">
				<div class="dh">
					<div class="dh-1">
						<p>Đơn Hàng</p>
					</div>
					<div class="dh-2">
						<p>
							Tên sản phẩm : <a
								href="product.jsp">Huawei Y9(2018)</a>
						</p>
						<p>
							Màu sắc : <span id="color">Xanh</span>
						</p>
						<p>
							Số lượng : <span id="countNumber">1</span>
						</p>
						<p>
							Gía tiền : <span id="sum">7.000.000 <sup>đ</sup></span>
						</p>
					</div>
					<div class="dh-3">
						<p>
							Tạm tính : <span style="font-weight: bold" id="tamtinh">7.000.000
								<sup>đ</sup>
							</span>
						</p>
					</div>
					<div class="dh-4">
						<p>
							Thành tiền : <span style="color: #d0021b; font-weight: bold"
								id="thanhTien">7.000.000 <sup>đ</sup></span>
						</p>
					</div>
				</div>
				<div style="clear: both;"></div>
			</div>
		</div>

		<!------START FOOTER--------->

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
			integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
			integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
			crossorigin="anonymous"></script>

		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
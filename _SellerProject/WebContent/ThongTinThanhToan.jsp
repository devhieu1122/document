<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>HTDStore - Thông tin thanh toán khách hàng</title>
	<LINK REL="SHORTCUT ICON" HREF="image/logo/logo.png">

		<link rel="stylesheet"
			href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
			<link rel="stylesheet"
				href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

				<link rel="stylesheet" href="css/ThongTinThanhToan.css">


					<!--interface-->
</head>
<body>
	<div class="ThongTinThanhToan">
		<!----------START HEADER------------->
		<jsp:include page="header.jsp"></jsp:include>
		<!--header-->
		<div class="main-tttt">
			<div class="tttt-col-1">
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
						<p class="ttkh-edit">
							<a href="Order.html">Sửa thông tin</a>
						</p>
					</div>
				</div>
				<div class="ptnh">
					<p class="td-ptnh">
						<span>2.</span> Phương thức nhận hàng
					</p>
					<div class="diadiemnhanhang">
						<p id="shipmethod">
							<strong>Nhận hàng tại</strong>
						</p>
						<p id="shiaddress">285-290 Kim Long , Q. Tân Châu</p>
					</div>
					<p class="edit" id="fix-info">
						<a href="ThongTinNhanHang.html">Sửa thông tin</a>
					</p>
				</div>
				<div class="Chonhinhthucthanhtoan">
					<p class="td-chonhinhthucthanhtoan">
						<span>3.</span> Chọn hình thức thanh toán
					</p>
					<div class="cachthanhtoan">
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="TienMat-tab" data-toggle="tab" href="#tienmat" role="tab"
								aria-controls="tm" aria-selected="true">
									<p>
										<img src="image/icon/tienmat.png">
									</p>
									<p>Trả tiền mặt</p>
									<p>(Khi nhận hàng)</p>
							</a></li>
							<li class="nav-item"><a class="nav-link" id="TheATM-tab"
								data-toggle="tab" href="#theatm" role="tab" aria-controls="atm"
								aria-selected="false">
									<p>
										<img src="image/icon/bank-card.png ">
									</p>
									<p>Thẻ ATM</p>
									<p>(Internet Banking)</p>
							</a></li>
							<li class="nav-item"><a class="nav-link" id="TheQuocTe-tab"
								data-toggle="tab" href="#thequocte" role="tab"
								aria-controls="qt" aria-selected="false">
									<p>
										<img src="image/icon/bank-card-2.svg ">
									</p>
									<p>Thẻ Quốc tế</p>
									<p>(Visa, MasterCard)</p>
							</a></li>
							<li class="nav-item"><a class="nav-link" id="TraGop-tab"
								data-toggle="tab" href="#tragop" role="tab" aria-controls="tg"
								aria-selected="false">
									<p>
										<img src="image/icon/save-money.jpg">
									</p>
									<p>Trả góp</p>
									<p>(Nhà tài chính/ Thẻ)</p>
							</a></li>
						</ul>
						<div class="tab-content" id="myTabContent">
							<div class="tab-pane fade show active" id="tienmat"
								role="tabpanel" aria-labelledby="TienMat-tab">
								<p>Quý khách sẽ thanh toán bằng tiền mặt khi nhận hàng.</p>
								<p>
									Vui lòng bấm nút <Strong>"Đặt hàng"</Strong> để hoàn tất.
								</p>
							</div>
							<div class="tab-pane fade" id="theatm" role="tabpanel"
								aria-labelledby="TheATM-tab">Chức năng sẽ sớm được hoàn
								thiện</div>
							<div class="tab-pane fade" id="thequocte" role="tabpanel"
								aria-labelledby="TheQuocTe-tab">Chức năng sẽ sớm được hoàn
								thiện</div>
							<div class="tab-pane fade" id="tragop" role="tabpanel"
								aria-labelledby="TraGop-tab">Chức năng sẽ sớm được hoàn
								thiện</div>

						</div>
					</div>
					<div class="dathang">
						<p>
							<i class="fas fa-exclamation-circle">Lưu ý khi thanh toán
								trực tuyến</i> <a href="DonHangThanhCong.html"><button
									type="button">Đặt hàng</button></a>
						</p>


					</div>
				</div>
			</div>
			<div class="tttt-col-2">
				<div class="dh">
					<div class="dh-1">
						<p>Đơn Hàng</p>
					</div>
					<div class="dh-2">
						<p>
							Tên sản phẩm : <a href="DetailProduct.html">Huawei Y9(2018)</a>
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
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
			integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
			crossorigin="anonymous"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
			crossorigin="anonymous"></script>
		<!------START FOOTER--------->
		
</body>
</html>
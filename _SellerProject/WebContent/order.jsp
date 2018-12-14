<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>HTDStore - Tiến hành đặt hàng</title>
	<LINK REL="SHORTCUT ICON" HREF="image/logo/logo.png">

		<link rel="stylesheet"
			href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
			<link rel="stylesheet" href="css/order.css">
</head>

<body style="font-size: 14px; background: #f3f3f3">
	<div class="View-main">

		<!--header-->
		<jsp:include page="header.jsp"></jsp:include>
		<!--header-->


		<div class="gh-main">
			<div class="gh-top">
				<p class="ghcb">
					GIỎ HÀNG CỦA BẠN <span> ( <i class="DemTongSoSanPham"
						style="font-style: inherit">1</i> <!--Cap nhat so luong san pham o day-->
						sản phẩm)
					</span>
				</p>
				<a class="gh-back" href="index.jsp" title="Trang Chủ"> Mua thêm
					sản phẩm khác </a>
			</div>
			<div class="gh-giasanpham">
				<div class="gh-khung-img">
					<p class="gh-img">
						<a href="product.jsp"> <img src="image/review/gh1.jpg"></a>
					</p>
				</div>
				<div class="gh-n-p-sl"></div>
				<div class="gh-names">
					<h3 class="gh-name">
						<a href="product.jsp" target="_blank"> Huawei Y9 (2019) </a>
					</h3>
					<div class="gh-color">
						<span> Màu: </span> <input type="radio" name="mau" value="Xanh">
							Xanh <input type="radio" name="mau" value="Đen"> Đen 
					</div>
				</div>
				<div class="gh-price">
					<p>
						5.160.000 <sup>đ</sup>
					</p>
					<p style="font-size: 12px">
						<del>
							5.490.000 <sup>đ</sup>
						</del>
					</p>
					<p class="giam-gia">Giảm 6%</p>
				</div>
				<div class="btn-sl">
					<span class="gh-btn-sl"> <i>-</i>
					</span> <input class="text-sl" type="text" placeholder="0" value="1">
						<span class="gh-btn-sl2"> <i>+</i>
					</span>
				</div>
			</div>
			<div class="gh-giam-gia">
				<div class="magiamgia">
					<div class="td-magiamgia">Sử dụng mã giảm giá:</div>
					<div class="khung-magiamgia">
						<input class="giamgia" type="text" id="voucher"
							placeholder="Nhập mã giảm giá"> <input class=" btn-code"
							type="button" value="Áp dụng">
					</div>
				</div>
				<div class="thanh-tien">
					<label class="lb"
						style="width: 115px; height: 22px; font-weight: bold; font-size: 17px">Tổng
						tiền:</label> <span
						style="font-weight: bold; font-size: 17px; color: brown">5.490.000<sup>đ</sup></span>
				</div>
			</div>
			<form class="thong-tin-khach-hang" novalidate="novalidate">
				<p class="td-form">Thông tin khách hàng</p>
				<div class="form-dien-tt">
					<p class="lb">
						Họ và tên: <sup>&#8727;</sup>
					</p>
					<div>
						<input class="txt" type="text" name="uname" id="uname"
							placeholder="Nhập họ và tên">
					</div>
					<p class="lb">
						Số điện thoại: <sup>&#8727;</sup>
					</p>
					<div>
						<input class="txt" type="text" name="sdt" id="sdt"
							placeholder="Nhập số điện thoại">
					</div>
					<p class="lb">Email:</p>
					<div>
						<input class="txt" type="text" name="email" id="email"
							placeholder="Nhập email của bạn">
							<p style="font-size: 12px; padding-left: 135px">
								<i>Chi tiết đơn hàng sẽ được gửi vào email</i>
							</p>
					</div>
				</div>
				<div class="btn-submit">
					<div class="btn-submits">
						<p>
							<button type="button" class="btn-1"
								style="color: white; background-color: #d0021b;">
								<a href="ThongTinNhanHang.jsp" title="Tiếp tục đặt hàng"
									style="text-decoration: none; color: #fff"><strong>Tiếp
										tục</strong> <span style="font-size: 11px">(Chọn hình thức nhận
										hàng)</span></a>
							</button>
						</p>
						<p class="or">Hoặc</p>
						<p>
							<button type="button" class="btn-1"
								style="background-color: white">
								<a href="DonHangThanhCong.jsp" title="Đặt hàng luôn"><strong
									style="color: #337ab7;">Đặt hàng luôn</strong> <span
									style="font-size: 11px">HTD Store sẽ gọi cho quý khách</span></a>
							</button>
						</p>
					</div>
				</div>
			</form>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<jsp:include page="backToTop.jsp"></jsp:include>

</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>HTDStore - Sim số đẹp</title>
	<LINK REL="SHORTCUT ICON" HREF="image/logo/logo.png">



		<link rel="stylesheet" href="css/SimSoDep.css">
			<link rel="stylesheet"
				href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
				<script>
					var slideIndex = 1;
					showSlides(slideIndex);

					function plusSlides(n) {
						showSlides(slideIndex += n);
					}

					function currentSlide(n) {
						showSlides(slideIndex = n);
					}

					function showSlides(n) {
						var i;
						var slides = document
								.getElementsByClassName("mySlides");
						var dots = document.getElementsByClassName("dot");
						if (n > slides.length) {
							slideIndex = 1
						}
						if (n < 1) {
							slideIndex = slides.length
						}
						for (i = 0; i < slides.length; i++) {
							slides[i].style.display = "none";
						}
						for (i = 0; i < dots.length; i++) {
							dots[i].className = dots[i].className.replace(
									" active", "");
						}
						slides[slideIndex - 1].style.display = "block";
						dots[slideIndex - 1].className += " active";
					}
				</script>
</head>

<body style="font-size: 14px; font-family: Arial">
	<div class="main">
		<jsp:include page="header.jsp"></jsp:include>
		<!--end header-->


		<div class="simso-main">
			<div class="td-ss">
				<ul>
					<li><a href="index.jsp"> Trang chủ</a></li>
					<li>/ Sim &amp; thẻ</li>
				</ul>
			</div>
			<div class="ads">
				<div class="mySlides fade" style="display: block;">
					<img src="image/sim/qc_1.jpeg" style="width: 100%">
				</div>
				<div class="mySlides fade" style="display: none;">
					<img src="image/sim/qc_2.jpg" style="width: 100%">
				</div>
			</div>
			<div class="nd-ssd">
				<div class="ssd-col-1">
					<div class="ssd-box1">
						<p>
							Thông báo: Từ 15/9 SIM 11 số sẽ chuyển đổi sang 10 số. Chi tiết
							thay đổi số điện thoại mới <a
								href="https://www.24h.com.vn/cong-nghe-thong-tin/bang-ma-mang-10-so-sau-khi-chuyen-doi-tu-thue-bao-11-so-c55a996387.html"
								title="">Xem tại đây</a>
						</p>
						<p>
							Chọn <b>GÓI CƯỚC</b>, sau đó bấm <b>CHỌN SỐ</b> để xem <b>HƠN
								100.000 SỐ</b> tại HTDShop
						</p>
					</div>
					<div class="item">
						<h2 class="goi-data">SIM “Data thả ga - Phê pha lướt web”</h2>
						<div class="chitiet-item">
							<!-- VNMB -->
							<div class="ndsim">
								<a class="wrap">
									<div class="vnmb">
										<div class="sim-logo">
											<img src="image/sim/Vietnamobile.png">
										</div>
										<div class="khung-sim-name">
											<div class="sim-name">
												<p>
													<strong>Thánh Sim Hero</strong>
												</p>
											</div>
										</div>
										<p class="sim-bot">
											<a href="#">Xem chi tiết</a>
										</p>
									</div>
									<div class="chitiet-sim">
										<ul class="data-call-mb">
											<li><i class="fas fa-wifi"></i>
												<p>
													<strong>3GB</strong><br />Data/ ngày
												</p></li>
											<li><i class="fas fa-phone"></i>
												<p>
													<strong>Miễn phí Gọi &amp; SMS</strong><br>Nội mạng
												</p></li>
										</ul>
										<div class="data-call2">
											<ul class="dd">
												<li><label><img src="image/icon/true.png"></label>
													<span>Miễn phí tháng đầu</span></li>
												<li><label><img src="image/icon/true.png"></label>
													<span>Phí gói: 20.000đ/ tháng</span></li>
												<li><label><img src="image/icon/true.png"></label>
													<span>Khuyến mãi 12 tháng</span></li>
											</ul>
										</div>
										<ul class="data-call3">
											<li><strong>Giá từ:</strong>
												<p>40.000 đ</p></li>
											<li><a href="#" title="">CHỌN SỐ</a></li>
										</ul>
									</div>
								</a>
							</div>
							<!-- VT -->
							<div class="ndsim2">
								<div class="wrap">
									<div class="vt">
										<div class="sim-logo">
											<img src="image/sim/Viettel.png">
										</div>
										<div class="khung-sim-name">
											<div class="sim-name">
												<p>
													<strong>Sim V90 4G</strong>
												</p>
											</div>
										</div>
										<p class="sim-bot">
											<a
												href="https://viettelstore.vn/tin-tuc/sim-sieu-re--data-sieu-khung-voi-goi-v90-tai-viettel-store-nid15384.html">Xem
												chi tiết</a>
										</p>
									</div>
									<div class="chitiet-sim">
										<ul class="data-call-vt">
											<li><i class="fas fa-wifi"></i>
												<p>
													<strong>2GB</strong><br>Data/ ngày
												</p></li>
											<li><i class="fas fa-phone"></i>
												<p>
													<strong>20 phút</strong><br>Nội mạng
												</p></li>
											<li><i class="fas fa-phone"></i>
												<p>
													<strong>50 phút</strong>><br>Ngoại mạng
												</p></li>
										</ul>
										<div class="data-call2">
											<ul class="dd">
												<li><label><img src="image/icon/true.png"></label>
													<span>Phí gói: 90.000đ/ tháng</span></li>
												<li><label><img src="image/icon/true.png"></label>
													<span>Khuyến mãi 12 tháng</span></li>
											</ul>
										</div>
										<ul class="data-call3">
											<li><strong>Giá từ:</strong>
												<p>80.000 đ</p></li>
											<li><a href="" title="">CHỌN SỐ</a></li>
										</ul>
									</div>
								</div>
							</div>
							<!--MBP-->
							<div class="ndsim3">
								<div class="mb">
									<div class="sim-logo">
										<img src="image/sim/Mobifone.png">
									</div>
									<div class="khung-sim-name">
										<div class="sim-name">
											<p>
												<strong>Sim Viettel 86PLUS</strong>
											</p>
										</div>
									</div>
									<p class="sim-bot">
										<a href="">Xem chi tiết</a>
									</p>
								</div>
								<div class="chitiet-sim">
									<ul class="data-call-mb">
										<li><i class="fas fa-wifi"></i>
											<p>
												<strong>5.5GB</strong><br>Data/ tháng
											</p></li>
										<li><i class="fas fa-phone"></i>
											<p>
												<strong>680 phút</strong><br>Nội mạng
											</p></li>
										<li><i class="fas fa-phone"></i>
											<p>
												<strong>68 phút</strong><br>Ngoại mạng
											</p></li>
									</ul>
									<div class="data-call2">
										<ul class="dd">
											<li><label><img src="image/icon/true.png"></label>
												<span>Phí gói: 86.000đ/ tháng</span></li>
											<li><label><img src="image/icon/true.png"></label>
												<span>Khuyến mãi 12 tháng</span></li>
										</ul>
									</div>
									<ul class="data-call3">
										<li><strong>Giá từ:</strong>
											<p>80.000 đ</p></li>
										<li><a href="" title="">CHỌN SỐ</a></li>
									</ul>
								</div>
							</div>
							<!--Vina-->
							<div class="ndsim4">
								<div class="vnp">
									<div class="sim-logo">
										<img src="image/sim/Vinaphone.png">
									</div>
									<div class="khung-sim-name">
										<div class="sim-name">
											<p>
												<strong>Sim 4G VD89</strong>
											</p>
										</div>
									</div>
									<p class="sim-bot">
										<a
											href="http://www.vnpt.vn/News/Khachhang/ViewCustomer/tabid/147/newsid/47263/seo/Ra-mat-sim-VD89-Plus-voi-uu-dai-Data-re-thoai-mien-phi/Default.aspx">Xem
											chi tiết</a>
									</p>
								</div>
								<div class="chitiet-sim">
									<ul class="data-call-vnp">
										<li><i class="fas fa-wifi"></i>
											<p>
												<strong>2GB</strong><br>Data/ ngày
											</p></li>
										<li><i class="fas fa-phone"></i>
											<p>
												<strong>&lt; 20 phút</strong><br>Nội mạng
											</p></li>
										<li><i class="fas fa-phone"></i>
											<p>
												<strong> &lt; 50 phút</strong><br>Ngoại mạng
											</p></li>
									</ul>
									<div class="data-call2">
										<ul class="dd">
											<li><label><img src="image/icon/true.png"></label><span>Miễn
													phí tháng đầu</span></li>
											<li><label><img src="image/icon/true.png"></label>
												<span>Phí gói: 89.000đ/ tháng</span></li>
											<li><label><img src="image/icon/true.png"></label>
												<span>Khuyến mãi 12 tháng</span></li>
										</ul>
									</div>
									<ul class="data-call3">
										<li><strong>Giá từ:</strong>
											<p>150.000 đ</p></li>
										<li><a href="" title="">CHỌN SỐ</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<h2 class="goi-data">SIM “Data thả ga - Phê pha lướt web”</h2>
						<div class="chitiet-item">
							<!--MBP-->
							<div class="ndsim3">
								<div class="mb">
									<div class="sim-logo">
										<img src="image/sim/Mobifone.png">
									</div>
									<div class="khung-sim-name">
										<div class="sim-name">
											<p>
												<strong>Sim Data F500</strong>
											</p>
										</div>
									</div>
									<p class="sim-bot">
										<a
											href="https://mobifone3g.info/goi-f500-mobifone-cho-thue-bao-fast-connect">Xem
											chi tiết</a>
									</p>
								</div>
								<div class="chitiet-sim">
									<ul class="data-call-mb">
										<li><i class="fas fa-wifi"></i>
											<p>
												<strong>5GB</strong><br>Data/ tháng
											</p></li>
										<li><i class="fas fa-phone"></i>
											<p>
												<strong>Có nghe gọi</strong>
											</p></li>
									</ul>
									<div class="data-call2">
										<ul class="dd">
											<li><label><img src="image/icon/true.png"></label>
												<span>Không mất phí gói</span></li>
											<li><label><img src="image/icon/true.png"></label>
												<span>Khuyến mãi 12 tháng</span></li>
										</ul>
									</div>
									<ul class="data-call3">
										<li><strong>Giá từ:</strong>
											<p>500.000 đ</p></li>
										<li><a href="" title="">CHỌN SỐ</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="clear" style="clear: both;"></div>
					</div>
					<div class="item">
						<h2 class="goi-data">SIM “Data thả ga - Phê pha lướt web”</h2>
						<div class="chitiet-item">
							<!-- VNMB -->
							<div class="ndsim">
								<div class="vnmb">
									<div class="sim-logo">
										<img src="image/sim/Vietnamobile.png">
									</div>
									<div class="khung-sim-name">
										<div class="sim-name">
											<p>
												<strong>Siêu Thánh Sim</strong>
											</p>
										</div>
									</div>
									<p class="sim-bot">
										<a
											href="https://www.vietnamobile.com.vn/san-pham/san-pham/sieu-thanh-sim-phe-khong-tuong.html">Xem
											chi tiết</a>
									</p>
								</div>
								<div class="chitiet-sim">
									<ul class="data-call-mb">
										<li><i class="fas fa-wifi"></i>
											<p>
												<strong>4GB</strong><br>Data/ ngày
											</p></li>
										<li><i class="fas fa-phone"></i>
											<p>
												<strong>Miễn phí Gọi &amp; SMS</strong><br>Nội mạng
											</p></li>
									</ul>
									<div class="data-call2">
										<ul class="dd">
											<li><label><img src="image/icon/true.png"></label>
												<span>Miễn phí data phụ thuộc vào thẻ nạp</span></li>
											<li><label><img src="image/icon/true.png"></label>
												<span>Phí gói: 40.000đ/ tháng</span></li>
											<li><label><img src="image/icon/true.png"></label>
												<span>Khuyến mãi 12 tháng</span></li>
										</ul>
									</div>
									<ul class="data-call3">
										<li><strong>Giá từ:</strong>
											<p>40.000 đ</p></li>
										<li><a href="" title="">CHỌN SỐ</a></li>
									</ul>
								</div>
							</div>
							<!-- VT -->
							<div class="ndsim2">
								<div class="vt">
									<div class="sim-logo">
										<img src="image/sim/Viettel.png">
									</div>
									<div class="khung-sim-name">
										<div class="sim-name">
											<p>
												<strong>Sim MobiTV Viettel 4G</strong>
											</p>
										</div>
									</div>
									<p class="sim-bot">
										<a href="">Xem chi tiết</a>
									</p>
								</div>
								<div class="chitiet-sim">
									<ul class="data-call-vt">
										<li><i class="fas fa-wifi"></i>
											<p>
												<strong>1GB</strong><br>Data/ tháng
											</p></li>
										<li><i class="fas fa-phone"></i>
											<p>
												<strong>1000 phút</strong><br>Nội mạng
											</p></li>
									</ul>
									<div class="data-call2">
										<ul class="dd">
											<li><label><img src="image/icon/true.png"></label>
												<span>50.000đ tháng đầu</span></li>
											<li><label><img src="image/icon/true.png"></label>
												<span>Phí gói: 70.000đ/ tháng</span></li>
											<li><label><img src="image/icon/true.png"></label>
												<span>Thời gian KM: 12 tháng</span></li>
											<li><label><img src="image/icon/true.png"></label>
												<span>Miễn phí xem mobi TV</span></li>
										</ul>
									</div>
									<ul class="data-call3">
										<li><strong>Giá từ:</strong>
											<p>80.000 đ</p></li>
										<li><a href="" title="">CHỌN SỐ</a></li>
									</ul>
								</div>
							</div>
							<!--Vina-->
							<div class="ndsim3">
								<div class="vnp">
									<div class="sim-logo">
										<img src="image/sim/Vinaphone.png">
									</div>
									<div class="khung-sim-name">
										<div class="sim-name">
											<p>
												<strong>Sim Data 4G Vivu 12T</strong>
											</p>
										</div>
									</div>
									<p class="sim-bot">
										<a href="">Xem chi tiết</a>
									</p>
								</div>
								<div class="chitiet-sim">
									<ul class="data-call-vnp">
										<li><i class="fas fa-wifi"></i>
											<p>
												<strong>5.5GB</strong><br>Data/ tháng
											</p></li>
										<li><i class="fas fa-phone"></i>
											<p>
												<strong> Không Gọi &amp; SMS</strong>
											</p></li>
									</ul>
									<div class="data-call2">
										<ul class="dd">
											<li><label><img src="image/icon/true.png"></label><span>Miễn
													phí gói cước</span></li>
											<li><label><img src="image/icon/true.png"></label>
												<span>Khuyến mãi 12 tháng</span></li>
										</ul>
									</div>
									<ul class="data-call3">
										<li><strong>Giá từ:</strong>
											<p>399.000 đ</p></li>
										<li><a href="" title="">CHỌN SỐ</a></li>
									</ul>
								</div>
							</div>
							<div class="ndsim4">
								<div class="mb">
									<div class="sim-logo">
										<img src="image/sim/Mobifone.png">
									</div>
									<div class="khung-sim-name">
										<div class="sim-name">
											<p>
												<strong>Sim Data F500</strong>
											</p>
										</div>
									</div>
									<p class="sim-bot">
										<a
											href="https://mobifone3g.info/goi-f500-mobifone-cho-thue-bao-fast-connect">Xem
											chi tiết</a>
									</p>
								</div>
								<div class="chitiet-sim">
									<ul class="data-call-mb">
										<li><i class="fas fa-wifi"></i>
											<p>
												<strong>5GB</strong><br>Data/ tháng
											</p></li>
										<li><i class="fas fa-phone"></i>
											<p>
												<strong>Có nghe gọi</strong>
											</p></li>
									</ul>
									<div class="data-call2">
										<ul class="dd">
											<li><label><img src="image/icon/true.png"></label>
												<span>Không mất phí gói</span></li>
											<li><label><img src="image/icon/true.png"></label>
												<span>Khuyến mãi 12 tháng</span></li>
										</ul>
									</div>
									<ul class="data-call3">
										<li><strong>Giá từ:</strong>
											<p>500.000 đ</p></li>
										<li><a href="" title="">CHỌN SỐ</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="ssd-col-2">
					<div class="qt-datthe">
						<h2 class="td-mmtc">MUA MÃ THẺ CÀO</h2>
						<form id="frmcard" novalidate="novalidate">
							<div class="chitietcard">
								<p class="td-chitietcard">
									<strong>Bước 1:</strong> Chọn nhà mạng
								</p>
								<div class="lg-chitietcard">
									<ul class="lg-chitietcard-2">
										<li><label><input type="radio"
												data-type="Viettel" name="nhamang" checked="checked">
													<span><img src="image/sim/icon-viettel.png" alt=""></span></label>
										</li>
										<li><label><input type="radio"
												data-type="Mobiphone" name="nhamang"> <span><img
														src="image/sim/icon-mb.png" alt=""></span></label></li>
										<li><label><input type="radio"
												data-type="Vinaphone" name="nhamang"> <span><img
														src="image/sim/icon-vnp.png" alt=""></span></label></li>
										<li><label><input type="radio"
												data-type="Vietnammobile" name="nhamang"> <span><img
														src="image/sim/icon-vnmb.png" alt=""></span></label></li>
									</ul>
								</div>
								<div style="clear: both"></div>
								<p class="td-chitietcard">
									<strong>Bước 2:</strong> Chọn mệnh giá thẻ
								</p>
								<div class="lg-chitietcard">
									<u class="lg-chitietcard-4">
										<li><label><input type="radio" data-price="50000"
												name="menhgia" checked="checked"> <span>50.000đ</span></label>
									</li>
										<li><label><input type="radio"
												data-price="100000" name="menhgia"> <span>100.000đ</span></label>
									</li>
										<li><label><input type="radio"
												data-price="200000" name="menhgia"> <span>200.000đ</span></label>
									</li>
										<li><label><input type="radio"
												data-price="500000" name="menhgia"> <span>500.000</span></label>
									</li>
									</u>
								</div>
								<p class="td-chitietcard">
									<strong>Bước 3:</strong> Nhập thông tin để nhận mã thẻ
								</p>
								<div class="lg-slcard">
									<ul>
										<li><label>Số lượng : </label> <input type="text"
											placeholder="Nhập số lượng thẻ " id="count"></li>
										<li><label>Thành tiền : </label> <span id="sumMoney">50.000</span>
										</li>
										<li><input type="text"
											placeholder="Nhập số điện thoại nhận mã thẻ "
											id="cardcustomerphone" name="cardcustomerphone"></li>
										<li><input type="text"
											placeholder="Nhập email người nhận " id="cardcustomeremail"
											name="cardcustomeremail"></li>
										<li class="sl-the"><a class="btn-atm" id="cardbtATM">
												<strong>Dùng thẻ ATM</strong> <span>Có Internet
													Banking</span>
										</a></li>
										<li class="sl-the"><a class="btn-visa" id="cardVisa">
												<strong>Dùng thẻ Visa</strong> <span>Master Card</span>
										</a></li>
									</ul>
								</div>
							</div>
						</form>
					</div>
					<div class="thutucdksim">
						<h2 class="td-dksim">Thủ tục đăng ký SIM</h2>
						<div class="box-dksim">
							<ul>
								<li>Theo quy định của nhà mạng, hồ sơ đăng ký gồm:</li>
								<li>1. Bản gốc CMND (cấp dưới 15 năm) hoặc Căn
									cước công dân (còn thời hạn) hoặc Hộ chiếu (còn
									thời hạn trên 6 tháng) của chủ thuê bao, nếu là bản
									sao phải có công chứng dưới 6 tháng.</li>
								<li>2. Ảnh chân dung của chủ thuê bao tại thời điểm
									giao dịch.</li>
							</ul>
						</div>
					</div>
					<div class="dvsimhtd">
						<h2 class="td-dvsim">DỊCH VỤ SIM TẠI HTD</h2>
						<div class="box-dvsim">
							<p>
								<strong style="color: #00928f;">VIETTEL</strong>: Áp dụng trên
								toàn quốc.
							</p>
							<p>- Đổi sim 4G miễn phí.</p>
							<br>
								<p>
									<strong style="color: #f27e00;">VIETNAMOBILE</strong>: Áp dụng
									trên toàn quốc.
								</p>
								<p>- Đăng ký thông tin chính chủ sim kích hoạt mới tại HTD
									Shop.</p>
								<p>- Đổi sim trả trước 3G lên 4G.</p> <br>
									<p>
										<strong style="color: #059eeb;">VINAPHONE</strong>: Áp dụng
										trên toàn quốc.
									</p>
									<p>- Đăng ký thông tin chính chủ sim kích hoạt mới tại HTD
										Shop.</p> <br>
										<p>
											<strong style="color: #00609b;">MOBIFONE</strong>: Áp dụng
											trên toàn quốc.
										</p>
										<p>- Đăng ký thông tin chính chủ sim kích hoạt mới tại HTD
											Shop.</p>
						</div>
					</div>
					<div class="tdnm">
						<h2 class="td-tdnm">Tổng đài nhà mạng</h2>
						<div class="si-sbitdm ">
							<p class="si-sbitdimg">
								<img src="image/sim/img_8.png" alt="">
							</p>
							<div class="si-sbinfo">
								<ul>
									<li>
										<p>Tổng đài 24/24:</p>
										<p>
											<strong>1800.8098 - 1800.8168 - 1800.8119 -
												1800.8000</strong>
										</p>
									</li>
									<li>
										<p>Đường dây nóng:</p>
										<p>
											<strong>0989.198.198 - 0983.198.198</strong>
										</p>
									</li>
									<li>
										<p>Các đầu số nhận biết:</p>
										<p>096 - 097 - 098 - 016 - 086 - 032 - 033 - 034 - 035 -
											036 - 037 - 038 - 039</p>
									</li>
								</ul>
							</div>
						</div>
						<div class="si-sbitdm ">
							<p class="si-sbitdimg">
								<img src="image/sim/img_7.png" alt="">
							</p>
							<div class="si-sbinfo">
								<ul>
									<li>
										<p>Tổng đài 24/24:</p>
										<p>
											<strong>9090 - 1800.1090 - 9393</strong>
										</p>
									</li>
									<li>
										<p>Đường dây nóng:</p>
										<p>
											<strong>0904.144.144 - 0905.144.144 - 0908.144.144</strong>
										</p>
									</li>
									<li>
										<p>Các đầu số nhận biết:</p>
										<p>090 - 093 - 070 - 079 - 077 - 076 - 078</p>
									</li>
								</ul>
							</div>
						</div>
						<div class="si-sbitdm ">
							<p class="si-sbitdimg">
								<img src="image/sim/img_6.png" alt="">
							</p>
							<div class="si-sbinfo">
								<ul>
									<li>
										<p>Tổng đài 24/24:</p>
										<p>
											<strong>9191 - 1800.1091 - 9192</strong>
										</p>
									</li>
									<li>
										<p>Đường dây nóng:</p>
										<p>
											<strong>0912.481.111 - 0914.181.111 - 0918.681.111</strong>
										</p>
									</li>
									<li>
										<p>Các đầu số nhận biết:</p>
										<p>091 - 094 - 083 - 084 - 085 - 081 - 082</p>
									</li>
								</ul>
							</div>
						</div>
						<div class="si-sbitdm ">
							<p class="si-sbitdimg">
								<img src="image/sim/img_5.png" alt="">
							</p>
							<div class="si-sbinfo">
								<ul>
									<li>
										<p>Tổng đài 24/24:</p>
										<p>
											<strong>789 - 123 - 360 - 3636 - 366 - 2121</strong>
										</p>
									</li>
									<li>
										<p>Đường dây nóng:</p>
										<p>
											<strong>0922.789.789 - 0922.123.123 - 0922.360.360</strong>
										</p>
									</li>
									<li>
										<p>Các đầu số nhận biết:</p>
										<p>092 - 056 - 058</p>
									</li>
								</ul>
							</div>
						</div>
						<div class="si-sbitdm ">
							<p class="si-sbitdimg">
								<img src="image/sim/img_4.png" alt="">
							</p>
							<div class="si-sbinfo">
								<ul>
									<li>
										<p>Tổng đài 24/24:</p>
										<p>
											<strong>199 - 186 - 123</strong>
										</p>
									</li>
									<li>
										<p>Đường dây nóng:</p>
										<p>
											<strong>0993.196.196</strong>
										</p>
									</li>
									<li>
										<p>Các đầu số nhận biết:</p>
										<p>099 - 059</p>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="tdg">
						<h2 class="td-tdg">TỔNG ĐÀI GAME</h2>
						<div class="dt-tdg">
							<ul>
								<li>GARENA: <strong>1900.1282 - 028.7106.1232</strong></li>
								<li>HTD GATE: <strong>1900.6611</strong></li>
								<li>VCOIN: <strong>1900.1530</strong></li>
								<li>ZINGPAY (VinaGame): <strong>1900.561558</strong></li>
								<li>MEGACARD: <strong>1900.6470</strong></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="binhluan">
				<div class="cmt">
					<textarea class="o-cmt"
						placeholder="Viết bình luận của bạn (Vui lòng gõ tiếng việt có dấu)"></textarea>
					<ul class="btn-nx">
						<li><input type="button" class="btn-send" value="Gửi câu hỏi"></li>
					</ul>
				</div>
			</div>
		</div>
		<!------START FOOTER--------->
		<jsp:include page="footer.jsp"></jsp:include>
		<jsp:include page="backToTop.jsp"></jsp:include>
</body>

</html>
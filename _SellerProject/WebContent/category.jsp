<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HTDStore - Điện thoại chính hãng, giá rẻ</title>
    <LINK REL="SHORTCUT ICON" HREF="image/logo/logo.png">
    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
    <link rel="stylesheet" href="css/catergory.css">
</head>

<body>
    <div class="View-all">
        <jsp:include page="header.jsp"></jsp:include>
        <div class="h-content">
            <div class="Link">
                <ul class="product-link">
                    <li>
                        <a href="TrangChu.jsp" title="Trang chu">Trang chủ</a>
                    </li>
                    <li>
                        <p>/ Điện thoại</p>
                    </li>
                </ul>
            </div>
            <div class="banner-ads">
                <a href=""><img src="image/advertise/ads_big.gif" alt="Not found image" /></a>
            </div>
            <div class="product-bottom">
                <div class="product-bottom-1">
                    <div class="boloc">
                        <h2 style="margin-top: 0px;margin-bottom: 0px;font-size: 18px">Bộ lọc</h2>
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
                                <form>
                                    <label class="c-checkbox">Tất cả
                                        <input type="checkbox" checked="checked">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Apple(iPhone)
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">SamSung
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">OPPO
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Huawei
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Xiaomi
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Vivo
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Nokia
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Asus
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Masstel
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label><label class="c-checkbox">Sony
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">MEIZU
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Mobiistar
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Wiko
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Itel
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">HONOR
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Realme
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </form>
                            </div>
                        </div>
                        <button class="collapsible">Mức giá</button>
                        <div class="content">
                            <div class="checkbox-hsx">
                                <form>
                                    <label class="c-checkbox">Tất cả
                                        <input type="checkbox" checked="checked">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Dưới 1 triệu
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox"> Từ 1 - 3 triệu
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Từ 3 - 6 triệu
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Từ 6 - 10 triệu
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Từ 10 - 15 triệu
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Trên 15 triệu
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </form>
                            </div>
                        </div>
                        <button class="collapsible">Màn hình</button>
                        <div class="content">
                            <div class="checkbox-hsx">
                                <form>
                                    <label class="c-checkbox">Tất cả
                                        <input type="checkbox" checked="checked">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Dưới 3 inch
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Khoảng 4 inch
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Khoảng 5 inch
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Khoảng 6 inch
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </form>
                            </div>
                        </div>
                        <button class="collapsible">Hệ điều hành</button>
                        <div class="content">
                            <div class="checkbox-hsx">
                                <form>
                                    <label class="c-checkbox">Tất cả
                                        <input type="checkbox" checked="checked">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">IOS
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Android
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </form>
                            </div>
                        </div>
                        <button class="collapsible">Tính năng nổi bật</button>
                        <div class="content">
                            <div class="checkbox-hsx">
                                <form>
                                    <label class="c-checkbox">Tất cả
                                        <input type="checkbox" checked="checked">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Face ID
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Cảm biến vân tay
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Quét mốc mắt
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Chống nước, bụi
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Màn hình tràn viền
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Sạc nhanh
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">2 sim
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">4G
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Quay Phim 4K
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </form>
                            </div>
                        </div>
                        <button class="collapsible">Nhu cầu sử dụng</button>
                        <div class="content">
                            <div class="checkbox-hsx">
                                <form>
                                    <label class="c-checkbox">Tất cả
                                        <input type="checkbox" checked="checked">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Tương thích game Liên Quân Mobile
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Tương thích game PUBG Mobile
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="c-checkbox">Tương thích Game Rules Of Survival
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </form>
                            </div>
                        </div>
                        <script>
                            var coll = document.getElementsByClassName("collapsible");
                    var i;

                    for (i = 0; i < coll.length; i++) {
                        coll[i].addEventListener("click", function() {
                            this.classList.toggle("actives");
                            var content = this.nextElementSibling;
                            if (content.style.maxHeight) {
                                content.style.maxHeight = null;
                            } else {
                                content.style.maxHeight = content.scrollHeight + "px";
                            }
                        });
                    }
                    </script>
                    </div>
                </div>
                <div class="product-bottom-2">
                    <div class="tieu-chi-chon-san-pham" style="position: relative;">
                        <div class="ten-san-pham">
                            <a href="#" title="Điện thoại"> ĐIỆN THOẠI</a>
                            <span>(275+ sản phẩm)</span>
                        </div>
                        <div class="chon-tieu-chi">
                            <span>Sắp xếp theo:</span>
                            <select name="filter" id="filter">
                                <option value="price-down" selected="selected">Giá cao đến thấp </option>
                                <option value="price-up">Giá thấp đến cao</option>
                                <option value="best-sell">Bán chạy</option>
                                <option value="best-view">Xem nhiều nhất</option>
                            </select>
                        </div><!-- chon-tieu-chi -->
                    </div>
                    <div class="hien-thi-danh-sach-san-pham">
                        <div class="khung-anh">
                            <a class="anh" href="product.jsp">
                        <img src="image/phone/ip xs .png">
                    
                        <div class="box-thong-tin-san-pham">
                            <span>IPhone Xs Max 512GB</span>
                            <p>43.999.000 ₫</p>
                        
                            
                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="product.jsp">
                        <img src="image/phone/ip xs .png">
                    
                        <div class="box-thong-tin-san-pham">
                            <span>IPhone Xs 512GB</span>
                            <p>40.999.000 ₫</p>

                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="product.jsp">
                            <img src="image/phone/ip xs .png">
                        
                        <div class="box-thong-tin-san-pham">
                            <span>IPhone Xs Max 256GB</span>
                            <p>37.999.000 ₫</p>
                        
                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="product.jsp">
                            <img src="image/phone/ip xs .png">
                        
                        <div class="box-thong-tin-san-pham">
                            <span>IPhone Xs 256GB</span>
                            <p>34.999.000 ₫</p>
                        
                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="product.jsp">
                            <img src="image/phone/ip xs .png">
                        
                        <div class="box-thong-tin-san-pham">
                            <span>IPhone Xs Max 64GB</span>
                            <p>33.999.000 ₫</p>
                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="product.jsp">
                            <img src="image/phone/ip xs .png">
                        
                        <div class="box-thong-tin-san-pham">
                            <span>IPhone Xs 64GB</span>
                            <p>29.999.000 ₫</p>
                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="product.jsp">
                            <img src="image/phone/note 9.png">
                        
                        <div class="box-thong-tin-san-pham">
                            <span>Samsung Galaxy Note 9</span>
                            <p>28.499.000 ₫</p>
                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="">
                            <img src="image/phone/IPhone X 64.png">
                       
                        <div class="box-thong-tin-san-pham">
                            <span>IPhone X 64GB</span>
                            <p>26.999.000 ₫</p> 
                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="">
                            <img src="image/phone/iphoneXR 256.png">
                        
                        <div class="box-thong-tin-san-pham">
                            <span>IPhone XR 256GB</span>
                            <p>26.9499.000 ₫</p>
                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="">
                            <img src="image/phone/iphoneXR 256.png">
                        
                        <div class="box-thong-tin-san-pham">
                            <span>IPhone XR 128GB</span>
                            <p>24.999.000 ₫</p>
                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="">
                            <img src="image/phone/s9 plus.png">
                       
                        <div class="box-thong-tin-san-pham">
                            <span>Samsung Galaxy S9+</span>
                            <p>24.499.000 ₫</p>
                        </div> </a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="">
                            <img src="image/phone/xrn5.jpeg">
                        
                        <div class="box-thong-tin-san-pham">
                            <span>Huawei Mate 20 Pro</span>
                            <p>19.999.000 ₫</p>
                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="">
                            <img src="image/phone/xrn5.jpeg">
                        
                        <div class="box-thong-tin-san-pham">
                            <span>OPPO Find X</span>
                            <p>20.999.000 ₫</p>

                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="">
                            <img src="image/phone/iphone-8-plus 64.png">
                        
                        <div class="box-thong-tin-san-pham">
                            <span>IPhone 8 Plus 64GB </span>
                            <p>20.999.000 ₫</p>
                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="">
                            <img src="image/phone/note 8.png">
                        
                        <div class="box-thong-tin-san-pham">
                            <span>Samsung Galaxy Note 8 </span>
                            <p>19.999.000 ₫</p>
                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="">
                            <img src="image/phone/s9.png">
                        
                        <div class="box-thong-tin-san-pham">
                            <span>Samsung Galaxy S9</span>
                            <p>19.999.000 ₫</p>
                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="">
                            <img src="image/phone/iphone-8-plus 64.png">
                        
                        <div class="box-thong-tin-san-pham">
                            <span>IPhone 8 64GB</span>
                            <p>17.999.000 ₫</p>
                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="">
                            <img src="image/phone/xrn5.jpeg">
                        
                        <div class="box-thong-tin-san-pham">
                            <span>Samsung Galaxy S8 Plus</span>
                            <p>17.999.000 ₫</p>
                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="">
                            <img src="image/phone/ssga7.jpg">
                        
                        <div class="box-thong-tin-san-pham">
                            <span>Samsung Galaxy A8 Star</span>
                            <p>13.999.000 ₫</p>
                        </div></a>
                        </div>
                        <div class="khung-anh">
                            <a class="anh" href="">
                            <img src="image/phone/honor 10 .png">
                        
                        <div class="box-thong-tin-san-pham">
                            <span>Honor 10</span>
                            <p>9.999.000 ₫</p>
                        </div></a>
                        </div>
                    </div>
                    <div class="clean"></div>
                    <div class="trang-san-pham-tiep-theo">
                        <div class="btn-group">
                            <input type="button" value="Đầu">
                            <input type="button" value="1">
                            <input type="button" value="2">
                            <input type="button" value="3">
                            <input type="button" value="Cuối">
                        </div>
                    </div>
                </div>
            </div>
            <div class="clean"></div>
        </div>
        <!------START FOOTER--------->
        <jsp:include page="footer.jsp" ></jsp:include>   
        <jsp:include page="backToTop.jsp" ></jsp:include>   
</body>

</html>
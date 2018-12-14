<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HTDStore - Hỏi Đáp Thông Tin Về Sản Phẩm</title>
    <LINK REL="SHORTCUT ICON" HREF="image/logo/logo.png">
    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
    <link rel="stylesheet" href="css/HoiDap.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
</head>
<body>
<div class="hd-main">
    <!--header-->
	<jsp:include page="header.jsp" ></jsp:include>   
    <!--header-->

    <!--ads-->
    <div class="ads">
                    <a href="#"><img src="image/advertise/ads_big.gif" alt="" /></a>
                </div><!-- end div ads-->


    <div class="hd">
        <div class="td-hd">
            <h1>Hỏi đáp về sản phẩm</h1>
        </div>
        <div class="cot-trai">
            <div class="top-hd">
                <a href="#">
                    <img src="image/question/1.png">
                </a>
                <a href="#">
                    <img src="image/question/logo-ios-12.png">
                </a>
                <a href="#">
                    <img src="image/question/3.png">
                </a>
                <a href="#">
                    <img src="image/question/chuyen-sim.png">
                </a>
                <a href="#">
                    <img src="image/question/5.png">
                </a>
            </div>
            <div class="cot-topic">
                <h2>Sản phẩm được hỏi nhiều</h2>
                <div class="ask-sp">
                    <a href="#">
                        <img src="image/question/nokia-51-plus-black-200x200.jpg">

                        <h3>Nokia 5.1 Plus</h3>
                        <span>6 hướng dẫn</span>

                    </a>
                    <a href="#">
                        <img src="image/question/samsung-galaxy-a9-2018-blue-200x200.jpg">
                        <h3>Samsung Galaxy A9 (2018)</h3>
                        <span>3 hướng dẫn</span>
                    </a>
                    <a href="#">
                        <img src="image/question/realme-c1-black-200x200.jpg">
                        <h3>Realme C1</h3>
                        <span>6 hướng dẫn</span>
                    </a>
                    <a href="#">
                        <img src="image/question/nokia-51-plus-black-200x200.jpg">
                        <h3>Nokia 5.1 Plus</h3>
                        <span>6 hướng dẫn</span>
                    </a>
                </div>
            </div>
            <div class="cot-timkiem">
                <form class="o-tim-kiem">
                    <input type="text" id="txtKeysearch" name="key"
                           placeholder="Tìm hướng dẫn, mẹo hay, câu hỏi, sản phẩm">
                    <button type="submit">Tìm kiếm</button>
                </form>
                <h2 class="hdttmn">Hướng dẫn, thủ thuật mới nhất</h2>
                <ul class="danhsachthuthuat">
                    <li>
                        <a href="#">
                            <img src="image/question/kiem_tra_toc_do_doc_ghi_icon.jpg">
                            <h3>Cách kiểm tra tốc độ đọc ghi của ổ đĩa bằng phần mềm CrystalDiskMark</h3>
                            <p>CrystalDiskMark là một phần mềm hiệu quả để giúp bạn có thể kiểm tra được tốc độ đọc, ghi
                                dữ liệu của thiết bị lưu...</p>
                            <div>
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
                                        data-target="#thongtinchitiet"
                                        style="padding-top: 0px;padding-bottom: 0px;font-size: 12px">
                                    Xem thêm
                                </button>

                                <div id="thongtinchitiet" class="modal fade" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Cách kiểm tra tốc độ đọc ghi của ổ đĩa bằng phần
                                                    mềm CrystalDiskMark</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="noidungchitiet">
                                                    <h2>CrystalDiskMark là một phần mềm hiệu quả để giúp bạn có thể kiểm
                                                        tra được tốc độ đọc, ghi dữ liệu của thiết bị lưu trữ như HDD,
                                                        SSD, <a data-cke-saved-href="http://www.thegioididong.com/usb"
                                                                href="http://www.thegioididong.com/usb" target="_blank">USB</a>
                                                        hoặc
                                                        <a data-cke-saved-href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           target="_blank">thẻ nhớ SD</a> trên <a
                                                                data-cke-saved-href="http://www.thegioididong.com/laptop"
                                                                href="http://www.thegioididong.com/laptop"
                                                                target="_blank">máy tính</a> của bạn. Biết được tốc độ
                                                        đọc ghi của ổ đĩa sẽ giúp cho quá trình sử dụng máy tính được
                                                        hiệu quả hơn.</h2>
                                                    <h2>Bây giờ chúng ta hãy cùng tìm hiểu cách cài đặt và sử dụng phần
                                                        mềm này nhé.</h2>
                                                    <p><strong>Bước 1: </strong> Các bạn tải CrystalDiskMark và tiến
                                                        hành giải nén file có đuôi "<strong>.zip</strong>" <a
                                                                data-cke-saved-href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                target="_blank">tại đây.</a></p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_0.jpg"></p>
                                                    <p style="text-align: center;"><em>Giải nén file có đuôi ".zip" vừa
                                                        tải về</em></p>
                                                    <p><strong>Bước 2</strong>: Các bạn vào thư mục vừa giải nén . Ở đây
                                                        sẽ có 2 phiên bản đó là Standard Edition và Shizuku Edition. Mỗi
                                                        bản sẽ có 2 file đuôi "<strong>.exe</strong>". Tùy thuộc vào hệ
                                                        điều hành bạn đang sử dụng <strong>32bit </strong>hoặc<strong>
                                                            64bit</strong> mà bạn mở file
                                                        <strong>DiskMark32.exe</strong> hoặc
                                                        <strong>DiskMark64.exe</strong> (đối với bản Standard) và
                                                        <strong>DiskMark32S.exe</strong> hoặc
                                                        <strong>DiskMark64S.exe</strong> (đối với bản Shizuku) cho phù
                                                        hợp.</p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_2.JPG">Mở
                                                        thư mục vừa được giải nén</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_3.jpg">Chạy
                                                        file có đuôi .exe tương ứng</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_4.jpg">Giao
                                                        diện bản CrystalDiskMark Standard Edition</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_5.jpg"></em>
                                                    </p>
                                                    <p style="text-align: center;"><em>Giao diện bản CrystalDiskMark
                                                        Shizuku Edition​</em></p>
                                                    <p><strong>Bước 3: </strong>Các bạn chọn ổ đĩa muốn kiểm tra và chọn
                                                        <strong>"All"</strong> (Ở đây mình chọn ổ đĩa C). Quá trình test
                                                        sẽ mất khoảng 5 phút tùy theo ổ cứng mà bạn chọn.</p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_6.jpg"></p>
                                                    <p style="text-align: center;"><em>Chọn ổ đĩa muốn kiểm tra và chọn
                                                        "All"</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_7.jpg">Quá
                                                        trình test sẽ mất khoảng 5 phút</em></p>
                                                    <p><strong>Bước 4: </strong>Xem tốc độ đọc ghi ổ đĩa của bạn. Trung
                                                        bình Read/Write Seq phải trên 100 điểm thì mới có thể tạm chấp
                                                        nhận được. (Dưới 100 điểm thì tốc độ của ổ đang ở mức báo động
                                                        rồi đó).</p>
                                                    <p><img src="image/question/kiem_tra_toc_do_doc_ghi_8.jpg"></p>
                                                    <p style="text-align: center;"><em>Kết quả đọc / ghi của ổ đĩa C sau
                                                        khi test</em></p>
                                                    <p><strong>Giải đáp một số thuật ngữ hiển thị trên phần mềm</strong>
                                                    </p>
                                                    <p><strong>-Sequential: </strong>Các dữ liệu được đọc ghi tuần tự và
                                                        liên tiếp tới các vùng lân cận của ổ đĩa vì thế test theo phương
                                                        pháp này sẽ có tốc độ nhanh nhất.</p>
                                                    <p><strong>-512k</strong>: Khác với các trên, cách này sẽ đọc ghi dữ
                                                        liệu 512KB không tuần tự và nó sẽ di chuyển tới các vùng ngẫu
                                                        nhiên còn trống. Cách này sẽ nhanh hơn cách bên dưới vì lượng
                                                        ghi nhiều và ít phải di chuyển.</p>
                                                    <p><strong>4k</strong>: Giống như cách trên nhưng do số lượng ghi ít
                                                        sẽ phải di chuyển liên tục và mất thời gian hơn do chỉ ghi 4KB.
                                                    </p>
                                                    <p><strong>4kQD32</strong>: Giống cách 4k tuy nhiên sẽ có nhiều yêu
                                                        cầu gửi dữ liệu tới bộ điều khiển của ổ đĩa.</p>
                                                    <p>Như vậy chỉ với một vài thao tác đơn giản thì nay bạn đã có thể
                                                        tự mình kiểm tra tốc độ đọc ghi của thiết bị lưu trữ trên máy
                                                        tính rồi đấy ạ. Chúc các bạn thành công.</p>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal"
                                                        style="width: 85px;height: 50px">
                                                    Close
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="image/question/5-ly-do-nen-lua-chon-xs-max-2.jpg">
                            <h3>5 lý do bạn nên lựa chọn iPhone XS Max làm chiếc điện thoại kế tiếp</h3>
                            <p>iPhone XS Max là chiếc iPhone có màn hình lớn nhất và cũng là chiếc điện thoại tốt nhất
                                mà Apple từng tạo ra,...</p>
                            <div>
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
                                        data-target="#thongtinchitiet2"
                                        style="padding-top: 0px;padding-bottom: 0px;font-size: 12px">
                                    Xem thêm
                                </button>

                                <div id="thongtinchitiet2" class="modal fade" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Cách kiểm tra tốc độ đọc ghi của ổ đĩa bằng phần
                                                    mềm CrystalDiskMark</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="noidungchitiet">
                                                    <h2>CrystalDiskMark là một phần mềm hiệu quả để giúp bạn có thể kiểm
                                                        tra được tốc độ đọc, ghi dữ liệu của thiết bị lưu trữ như HDD,
                                                        SSD, <a data-cke-saved-href="http://www.thegioididong.com/usb"
                                                                href="http://www.thegioididong.com/usb" target="_blank">USB</a>
                                                        hoặc
                                                        <a data-cke-saved-href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           target="_blank">thẻ nhớ SD</a> trên <a
                                                                data-cke-saved-href="http://www.thegioididong.com/laptop"
                                                                href="http://www.thegioididong.com/laptop"
                                                                target="_blank">máy tính</a> của bạn. Biết được tốc độ
                                                        đọc ghi của ổ đĩa sẽ giúp cho quá trình sử dụng máy tính được
                                                        hiệu quả hơn.</h2>
                                                    <h2>Bây giờ chúng ta hãy cùng tìm hiểu cách cài đặt và sử dụng phần
                                                        mềm này nhé.</h2>
                                                    <p><strong>Bước 1: </strong> Các bạn tải CrystalDiskMark và tiến
                                                        hành giải nén file có đuôi "<strong>.zip</strong>" <a
                                                                data-cke-saved-href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                target="_blank">tại đây.</a></p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_0.jpg"></p>
                                                    <p style="text-align: center;"><em>Giải nén file có đuôi ".zip" vừa
                                                        tải về</em></p>
                                                    <p><strong>Bước 2</strong>: Các bạn vào thư mục vừa giải nén . Ở đây
                                                        sẽ có 2 phiên bản đó là Standard Edition và Shizuku Edition. Mỗi
                                                        bản sẽ có 2 file đuôi "<strong>.exe</strong>". Tùy thuộc vào hệ
                                                        điều hành bạn đang sử dụng <strong>32bit </strong>hoặc<strong>
                                                            64bit</strong> mà bạn mở file
                                                        <strong>DiskMark32.exe</strong> hoặc
                                                        <strong>DiskMark64.exe</strong> (đối với bản Standard) và
                                                        <strong>DiskMark32S.exe</strong> hoặc
                                                        <strong>DiskMark64S.exe</strong> (đối với bản Shizuku) cho phù
                                                        hợp.</p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_2.JPG">Mở
                                                        thư mục vừa được giải nén</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_3.jpg">Chạy
                                                        file có đuôi .exe tương ứng</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_4.jpg">Giao
                                                        diện bản CrystalDiskMark Standard Edition</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_5.jpg"></em>
                                                    </p>
                                                    <p style="text-align: center;"><em>Giao diện bản CrystalDiskMark
                                                        Shizuku Edition​</em></p>
                                                    <p><strong>Bước 3: </strong>Các bạn chọn ổ đĩa muốn kiểm tra và chọn
                                                        <strong>"All"</strong> (Ở đây mình chọn ổ đĩa C). Quá trình test
                                                        sẽ mất khoảng 5 phút tùy theo ổ cứng mà bạn chọn.</p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_6.jpg"></p>
                                                    <p style="text-align: center;"><em>Chọn ổ đĩa muốn kiểm tra và chọn
                                                        "All"</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_7.jpg">Quá
                                                        trình test sẽ mất khoảng 5 phút</em></p>
                                                    <p><strong>Bước 4: </strong>Xem tốc độ đọc ghi ổ đĩa của bạn. Trung
                                                        bình Read/Write Seq phải trên 100 điểm thì mới có thể tạm chấp
                                                        nhận được. (Dưới 100 điểm thì tốc độ của ổ đang ở mức báo động
                                                        rồi đó).</p>
                                                    <p><img src="image/question/kiem_tra_toc_do_doc_ghi_8.jpg"></p>
                                                    <p style="text-align: center;"><em>Kết quả đọc / ghi của ổ đĩa C sau
                                                        khi test</em></p>
                                                    <p><strong>Giải đáp một số thuật ngữ hiển thị trên phần mềm</strong>
                                                    </p>
                                                    <p><strong>-Sequential: </strong>Các dữ liệu được đọc ghi tuần tự và
                                                        liên tiếp tới các vùng lân cận của ổ đĩa vì thế test theo phương
                                                        pháp này sẽ có tốc độ nhanh nhất.</p>
                                                    <p><strong>-512k</strong>: Khác với các trên, cách này sẽ đọc ghi dữ
                                                        liệu 512KB không tuần tự và nó sẽ di chuyển tới các vùng ngẫu
                                                        nhiên còn trống. Cách này sẽ nhanh hơn cách bên dưới vì lượng
                                                        ghi nhiều và ít phải di chuyển.</p>
                                                    <p><strong>4k</strong>: Giống như cách trên nhưng do số lượng ghi ít
                                                        sẽ phải di chuyển liên tục và mất thời gian hơn do chỉ ghi 4KB.
                                                    </p>
                                                    <p><strong>4kQD32</strong>: Giống cách 4k tuy nhiên sẽ có nhiều yêu
                                                        cầu gửi dữ liệu tới bộ điều khiển của ổ đĩa.</p>
                                                    <p>Như vậy chỉ với một vài thao tác đơn giản thì nay bạn đã có thể
                                                        tự mình kiểm tra tốc độ đọc ghi của thiết bị lưu trữ trên máy
                                                        tính rồi đấy ạ. Chúc các bạn thành công.</p>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal"
                                                        style="width: 85px;height: 50px">
                                                    Close
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="image/question/cach-xoa-hinh-icloud-tren-macbook-10.jpg">
                            <h3>Cách xoá ảnh icloud trên Macbook</h3>
                            <p>Hình ảnh trên icloud ngoài được quản lý trên iPhone còn được đồng bộ với Macbook và các
                                thiết bị khác của Apple....</p>
                            <div>
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
                                        data-target="#thongtinchitiet3"
                                        style="padding-top: 0px;padding-bottom: 0px;font-size: 12px">
                                    Xem thêm
                                </button>

                                <div id="thongtinchitiet3" class="modal fade" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Cách kiểm tra tốc độ đọc ghi của ổ đĩa bằng phần
                                                    mềm CrystalDiskMark</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="noidungchitiet">
                                                    <h2>CrystalDiskMark là một phần mềm hiệu quả để giúp bạn có thể kiểm
                                                        tra được tốc độ đọc, ghi dữ liệu của thiết bị lưu trữ như HDD,
                                                        SSD, <a data-cke-saved-href="http://www.thegioididong.com/usb"
                                                                href="http://www.thegioididong.com/usb" target="_blank">USB</a>
                                                        hoặc
                                                        <a data-cke-saved-href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           target="_blank">thẻ nhớ SD</a> trên <a
                                                                data-cke-saved-href="http://www.thegioididong.com/laptop"
                                                                href="http://www.thegioididong.com/laptop"
                                                                target="_blank">máy tính</a> của bạn. Biết được tốc độ
                                                        đọc ghi của ổ đĩa sẽ giúp cho quá trình sử dụng máy tính được
                                                        hiệu quả hơn.</h2>
                                                    <h2>Bây giờ chúng ta hãy cùng tìm hiểu cách cài đặt và sử dụng phần
                                                        mềm này nhé.</h2>
                                                    <p><strong>Bước 1: </strong> Các bạn tải CrystalDiskMark và tiến
                                                        hành giải nén file có đuôi "<strong>.zip</strong>" <a
                                                                data-cke-saved-href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                target="_blank">tại đây.</a></p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_0.jpg"></p>
                                                    <p style="text-align: center;"><em>Giải nén file có đuôi ".zip" vừa
                                                        tải về</em></p>
                                                    <p><strong>Bước 2</strong>: Các bạn vào thư mục vừa giải nén . Ở đây
                                                        sẽ có 2 phiên bản đó là Standard Edition và Shizuku Edition. Mỗi
                                                        bản sẽ có 2 file đuôi "<strong>.exe</strong>". Tùy thuộc vào hệ
                                                        điều hành bạn đang sử dụng <strong>32bit </strong>hoặc<strong>
                                                            64bit</strong> mà bạn mở file
                                                        <strong>DiskMark32.exe</strong> hoặc
                                                        <strong>DiskMark64.exe</strong> (đối với bản Standard) và
                                                        <strong>DiskMark32S.exe</strong> hoặc
                                                        <strong>DiskMark64S.exe</strong> (đối với bản Shizuku) cho phù
                                                        hợp.</p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_2.JPG">Mở
                                                        thư mục vừa được giải nén</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_3.jpg">Chạy
                                                        file có đuôi .exe tương ứng</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_4.jpg">Giao
                                                        diện bản CrystalDiskMark Standard Edition</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_5.jpg"></em>
                                                    </p>
                                                    <p style="text-align: center;"><em>Giao diện bản CrystalDiskMark
                                                        Shizuku Edition​</em></p>
                                                    <p><strong>Bước 3: </strong>Các bạn chọn ổ đĩa muốn kiểm tra và chọn
                                                        <strong>"All"</strong> (Ở đây mình chọn ổ đĩa C). Quá trình test
                                                        sẽ mất khoảng 5 phút tùy theo ổ cứng mà bạn chọn.</p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_6.jpg"></p>
                                                    <p style="text-align: center;"><em>Chọn ổ đĩa muốn kiểm tra và chọn
                                                        "All"</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_7.jpg">Quá
                                                        trình test sẽ mất khoảng 5 phút</em></p>
                                                    <p><strong>Bước 4: </strong>Xem tốc độ đọc ghi ổ đĩa của bạn. Trung
                                                        bình Read/Write Seq phải trên 100 điểm thì mới có thể tạm chấp
                                                        nhận được. (Dưới 100 điểm thì tốc độ của ổ đang ở mức báo động
                                                        rồi đó).</p>
                                                    <p><img src="image/question/kiem_tra_toc_do_doc_ghi_8.jpg"></p>
                                                    <p style="text-align: center;"><em>Kết quả đọc / ghi của ổ đĩa C sau
                                                        khi test</em></p>
                                                    <p><strong>Giải đáp một số thuật ngữ hiển thị trên phần mềm</strong>
                                                    </p>
                                                    <p><strong>-Sequential: </strong>Các dữ liệu được đọc ghi tuần tự và
                                                        liên tiếp tới các vùng lân cận của ổ đĩa vì thế test theo phương
                                                        pháp này sẽ có tốc độ nhanh nhất.</p>
                                                    <p><strong>-512k</strong>: Khác với các trên, cách này sẽ đọc ghi dữ
                                                        liệu 512KB không tuần tự và nó sẽ di chuyển tới các vùng ngẫu
                                                        nhiên còn trống. Cách này sẽ nhanh hơn cách bên dưới vì lượng
                                                        ghi nhiều và ít phải di chuyển.</p>
                                                    <p><strong>4k</strong>: Giống như cách trên nhưng do số lượng ghi ít
                                                        sẽ phải di chuyển liên tục và mất thời gian hơn do chỉ ghi 4KB.
                                                    </p>
                                                    <p><strong>4kQD32</strong>: Giống cách 4k tuy nhiên sẽ có nhiều yêu
                                                        cầu gửi dữ liệu tới bộ điều khiển của ổ đĩa.</p>
                                                    <p>Như vậy chỉ với một vài thao tác đơn giản thì nay bạn đã có thể
                                                        tự mình kiểm tra tốc độ đọc ghi của thiết bị lưu trữ trên máy
                                                        tính rồi đấy ạ. Chúc các bạn thành công.</p>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal"
                                                        style="width: 85px;height: 50px">
                                                    Close
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="image/question/logo.jpg">
                            <h3>Cách định vị điện thoại Realme C1</h3>
                            <p>Không may chiếc điện thoại Realme C1 của bạn bị mất cắp hoặc bạn đã quên để ở khu vực nào
                                đó thì bạn có thể làm...</p>
                            <div>
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
                                        data-target="#thongtinchitiet4"
                                        style="padding-top: 0px;padding-bottom: 0px;font-size: 12px">
                                    Xem thêm
                                </button>

                                <div id="thongtinchitiet4" class="modal fade" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Cách kiểm tra tốc độ đọc ghi của ổ đĩa bằng phần
                                                    mềm CrystalDiskMark</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="noidungchitiet">
                                                    <h2>CrystalDiskMark là một phần mềm hiệu quả để giúp bạn có thể kiểm
                                                        tra được tốc độ đọc, ghi dữ liệu của thiết bị lưu trữ như HDD,
                                                        SSD, <a data-cke-saved-href="http://www.thegioididong.com/usb"
                                                                href="http://www.thegioididong.com/usb" target="_blank">USB</a>
                                                        hoặc
                                                        <a data-cke-saved-href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           target="_blank">thẻ nhớ SD</a> trên <a
                                                                data-cke-saved-href="http://www.thegioididong.com/laptop"
                                                                href="http://www.thegioididong.com/laptop"
                                                                target="_blank">máy tính</a> của bạn. Biết được tốc độ
                                                        đọc ghi của ổ đĩa sẽ giúp cho quá trình sử dụng máy tính được
                                                        hiệu quả hơn.</h2>
                                                    <h2>Bây giờ chúng ta hãy cùng tìm hiểu cách cài đặt và sử dụng phần
                                                        mềm này nhé.</h2>
                                                    <p><strong>Bước 1: </strong> Các bạn tải CrystalDiskMark và tiến
                                                        hành giải nén file có đuôi "<strong>.zip</strong>" <a
                                                                data-cke-saved-href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                target="_blank">tại đây.</a></p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_0.jpg"></p>
                                                    <p style="text-align: center;"><em>Giải nén file có đuôi ".zip" vừa
                                                        tải về</em></p>
                                                    <p><strong>Bước 2</strong>: Các bạn vào thư mục vừa giải nén . Ở đây
                                                        sẽ có 2 phiên bản đó là Standard Edition và Shizuku Edition. Mỗi
                                                        bản sẽ có 2 file đuôi "<strong>.exe</strong>". Tùy thuộc vào hệ
                                                        điều hành bạn đang sử dụng <strong>32bit </strong>hoặc<strong>
                                                            64bit</strong> mà bạn mở file
                                                        <strong>DiskMark32.exe</strong> hoặc
                                                        <strong>DiskMark64.exe</strong> (đối với bản Standard) và
                                                        <strong>DiskMark32S.exe</strong> hoặc
                                                        <strong>DiskMark64S.exe</strong> (đối với bản Shizuku) cho phù
                                                        hợp.</p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_2.JPG">Mở
                                                        thư mục vừa được giải nén</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_3.jpg">Chạy
                                                        file có đuôi .exe tương ứng</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_4.jpg">Giao
                                                        diện bản CrystalDiskMark Standard Edition</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_5.jpg"></em>
                                                    </p>
                                                    <p style="text-align: center;"><em>Giao diện bản CrystalDiskMark
                                                        Shizuku Edition​</em></p>
                                                    <p><strong>Bước 3: </strong>Các bạn chọn ổ đĩa muốn kiểm tra và chọn
                                                        <strong>"All"</strong> (Ở đây mình chọn ổ đĩa C). Quá trình test
                                                        sẽ mất khoảng 5 phút tùy theo ổ cứng mà bạn chọn.</p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_6.jpg"></p>
                                                    <p style="text-align: center;"><em>Chọn ổ đĩa muốn kiểm tra và chọn
                                                        "All"</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_7.jpg">Quá
                                                        trình test sẽ mất khoảng 5 phút</em></p>
                                                    <p><strong>Bước 4: </strong>Xem tốc độ đọc ghi ổ đĩa của bạn. Trung
                                                        bình Read/Write Seq phải trên 100 điểm thì mới có thể tạm chấp
                                                        nhận được. (Dưới 100 điểm thì tốc độ của ổ đang ở mức báo động
                                                        rồi đó).</p>
                                                    <p><img src="image/question/kiem_tra_toc_do_doc_ghi_8.jpg"></p>
                                                    <p style="text-align: center;"><em>Kết quả đọc / ghi của ổ đĩa C sau
                                                        khi test</em></p>
                                                    <p><strong>Giải đáp một số thuật ngữ hiển thị trên phần mềm</strong>
                                                    </p>
                                                    <p><strong>-Sequential: </strong>Các dữ liệu được đọc ghi tuần tự và
                                                        liên tiếp tới các vùng lân cận của ổ đĩa vì thế test theo phương
                                                        pháp này sẽ có tốc độ nhanh nhất.</p>
                                                    <p><strong>-512k</strong>: Khác với các trên, cách này sẽ đọc ghi dữ
                                                        liệu 512KB không tuần tự và nó sẽ di chuyển tới các vùng ngẫu
                                                        nhiên còn trống. Cách này sẽ nhanh hơn cách bên dưới vì lượng
                                                        ghi nhiều và ít phải di chuyển.</p>
                                                    <p><strong>4k</strong>: Giống như cách trên nhưng do số lượng ghi ít
                                                        sẽ phải di chuyển liên tục và mất thời gian hơn do chỉ ghi 4KB.
                                                    </p>
                                                    <p><strong>4kQD32</strong>: Giống cách 4k tuy nhiên sẽ có nhiều yêu
                                                        cầu gửi dữ liệu tới bộ điều khiển của ổ đĩa.</p>
                                                    <p>Như vậy chỉ với một vài thao tác đơn giản thì nay bạn đã có thể
                                                        tự mình kiểm tra tốc độ đọc ghi của thiết bị lưu trữ trên máy
                                                        tính rồi đấy ạ. Chúc các bạn thành công.</p>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal"
                                                        style="width: 85px;height: 50px">
                                                    Close
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="image/question/reset-may-22221.jpg">
                            <h3>Reset điện thoại Samsung A9 (2018)</h3>
                            <p>Khi sử dụng thời gian dài điện thoại Samsung A9 (2018) của bạn có thể bị chậm do nhiều dữ
                                liệu rác, hoặc máy bị...</p>
                            <div>
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
                                        data-target="#thongtinchitiet5"
                                        style="padding-top: 0px;padding-bottom: 0px;font-size: 12px">
                                    Xem thêm
                                </button>

                                <div id="thongtinchitiet5" class="modal fade" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Cách kiểm tra tốc độ đọc ghi của ổ đĩa bằng phần
                                                    mềm CrystalDiskMark</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="noidungchitiet">
                                                    <h2>CrystalDiskMark là một phần mềm hiệu quả để giúp bạn có thể kiểm
                                                        tra được tốc độ đọc, ghi dữ liệu của thiết bị lưu trữ như HDD,
                                                        SSD, <a data-cke-saved-href="http://www.thegioididong.com/usb"
                                                                href="http://www.thegioididong.com/usb" target="_blank">USB</a>
                                                        hoặc
                                                        <a data-cke-saved-href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           target="_blank">thẻ nhớ SD</a> trên <a
                                                                data-cke-saved-href="http://www.thegioididong.com/laptop"
                                                                href="http://www.thegioididong.com/laptop"
                                                                target="_blank">máy tính</a> của bạn. Biết được tốc độ
                                                        đọc ghi của ổ đĩa sẽ giúp cho quá trình sử dụng máy tính được
                                                        hiệu quả hơn.</h2>
                                                    <h2>Bây giờ chúng ta hãy cùng tìm hiểu cách cài đặt và sử dụng phần
                                                        mềm này nhé.</h2>
                                                    <p><strong>Bước 1: </strong> Các bạn tải CrystalDiskMark và tiến
                                                        hành giải nén file có đuôi "<strong>.zip</strong>" <a
                                                                data-cke-saved-href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                target="_blank">tại đây.</a></p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_0.jpg"></p>
                                                    <p style="text-align: center;"><em>Giải nén file có đuôi ".zip" vừa
                                                        tải về</em></p>
                                                    <p><strong>Bước 2</strong>: Các bạn vào thư mục vừa giải nén . Ở đây
                                                        sẽ có 2 phiên bản đó là Standard Edition và Shizuku Edition. Mỗi
                                                        bản sẽ có 2 file đuôi "<strong>.exe</strong>". Tùy thuộc vào hệ
                                                        điều hành bạn đang sử dụng <strong>32bit </strong>hoặc<strong>
                                                            64bit</strong> mà bạn mở file
                                                        <strong>DiskMark32.exe</strong> hoặc
                                                        <strong>DiskMark64.exe</strong> (đối với bản Standard) và
                                                        <strong>DiskMark32S.exe</strong> hoặc
                                                        <strong>DiskMark64S.exe</strong> (đối với bản Shizuku) cho phù
                                                        hợp.</p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_2.JPG">Mở
                                                        thư mục vừa được giải nén</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_3.jpg">Chạy
                                                        file có đuôi .exe tương ứng</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_4.jpg">Giao
                                                        diện bản CrystalDiskMark Standard Edition</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_5.jpg"></em>
                                                    </p>
                                                    <p style="text-align: center;"><em>Giao diện bản CrystalDiskMark
                                                        Shizuku Edition​</em></p>
                                                    <p><strong>Bước 3: </strong>Các bạn chọn ổ đĩa muốn kiểm tra và chọn
                                                        <strong>"All"</strong> (Ở đây mình chọn ổ đĩa C). Quá trình test
                                                        sẽ mất khoảng 5 phút tùy theo ổ cứng mà bạn chọn.</p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_6.jpg"></p>
                                                    <p style="text-align: center;"><em>Chọn ổ đĩa muốn kiểm tra và chọn
                                                        "All"</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_7.jpg">Quá
                                                        trình test sẽ mất khoảng 5 phút</em></p>
                                                    <p><strong>Bước 4: </strong>Xem tốc độ đọc ghi ổ đĩa của bạn. Trung
                                                        bình Read/Write Seq phải trên 100 điểm thì mới có thể tạm chấp
                                                        nhận được. (Dưới 100 điểm thì tốc độ của ổ đang ở mức báo động
                                                        rồi đó).</p>
                                                    <p><img src="image/question/kiem_tra_toc_do_doc_ghi_8.jpg"></p>
                                                    <p style="text-align: center;"><em>Kết quả đọc / ghi của ổ đĩa C sau
                                                        khi test</em></p>
                                                    <p><strong>Giải đáp một số thuật ngữ hiển thị trên phần mềm</strong>
                                                    </p>
                                                    <p><strong>-Sequential: </strong>Các dữ liệu được đọc ghi tuần tự và
                                                        liên tiếp tới các vùng lân cận của ổ đĩa vì thế test theo phương
                                                        pháp này sẽ có tốc độ nhanh nhất.</p>
                                                    <p><strong>-512k</strong>: Khác với các trên, cách này sẽ đọc ghi dữ
                                                        liệu 512KB không tuần tự và nó sẽ di chuyển tới các vùng ngẫu
                                                        nhiên còn trống. Cách này sẽ nhanh hơn cách bên dưới vì lượng
                                                        ghi nhiều và ít phải di chuyển.</p>
                                                    <p><strong>4k</strong>: Giống như cách trên nhưng do số lượng ghi ít
                                                        sẽ phải di chuyển liên tục và mất thời gian hơn do chỉ ghi 4KB.
                                                    </p>
                                                    <p><strong>4kQD32</strong>: Giống cách 4k tuy nhiên sẽ có nhiều yêu
                                                        cầu gửi dữ liệu tới bộ điều khiển của ổ đĩa.</p>
                                                    <p>Như vậy chỉ với một vài thao tác đơn giản thì nay bạn đã có thể
                                                        tự mình kiểm tra tốc độ đọc ghi của thiết bị lưu trữ trên máy
                                                        tính rồi đấy ạ. Chúc các bạn thành công.</p>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal"
                                                        style="width: 85px;height: 50px">
                                                    Close
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="image/question/logo%20(1).jpg">
                            <h3>Khắc phục lỗi treo logo, văng ra khi vào Facebook trên Realme C1</h3>
                            <p>Khi vào facebook trên điện thoại Realme C1 gặp tình trạng treo logo, bị đứng hoặc bị văn
                                ra thì bạn làm theo hướng...</p>
                            <div>
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
                                        data-target="#thongtinchitiet6"
                                        style="padding-top: 0px;padding-bottom: 0px;font-size: 12px">
                                    Xem thêm
                                </button>

                                <div id="thongtinchitiet6" class="modal fade" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Cách kiểm tra tốc độ đọc ghi của ổ đĩa bằng phần
                                                    mềm CrystalDiskMark</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="noidungchitiet">
                                                    <h2>CrystalDiskMark là một phần mềm hiệu quả để giúp bạn có thể kiểm
                                                        tra được tốc độ đọc, ghi dữ liệu của thiết bị lưu trữ như HDD,
                                                        SSD, <a data-cke-saved-href="http://www.thegioididong.com/usb"
                                                                href="http://www.thegioididong.com/usb" target="_blank">USB</a>
                                                        hoặc
                                                        <a data-cke-saved-href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           target="_blank">thẻ nhớ SD</a> trên <a
                                                                data-cke-saved-href="http://www.thegioididong.com/laptop"
                                                                href="http://www.thegioididong.com/laptop"
                                                                target="_blank">máy tính</a> của bạn. Biết được tốc độ
                                                        đọc ghi của ổ đĩa sẽ giúp cho quá trình sử dụng máy tính được
                                                        hiệu quả hơn.</h2>
                                                    <h2>Bây giờ chúng ta hãy cùng tìm hiểu cách cài đặt và sử dụng phần
                                                        mềm này nhé.</h2>
                                                    <p><strong>Bước 1: </strong> Các bạn tải CrystalDiskMark và tiến
                                                        hành giải nén file có đuôi "<strong>.zip</strong>" <a
                                                                data-cke-saved-href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                target="_blank">tại đây.</a></p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_0.jpg"></p>
                                                    <p style="text-align: center;"><em>Giải nén file có đuôi ".zip" vừa
                                                        tải về</em></p>
                                                    <p><strong>Bước 2</strong>: Các bạn vào thư mục vừa giải nén . Ở đây
                                                        sẽ có 2 phiên bản đó là Standard Edition và Shizuku Edition. Mỗi
                                                        bản sẽ có 2 file đuôi "<strong>.exe</strong>". Tùy thuộc vào hệ
                                                        điều hành bạn đang sử dụng <strong>32bit </strong>hoặc<strong>
                                                            64bit</strong> mà bạn mở file
                                                        <strong>DiskMark32.exe</strong> hoặc
                                                        <strong>DiskMark64.exe</strong> (đối với bản Standard) và
                                                        <strong>DiskMark32S.exe</strong> hoặc
                                                        <strong>DiskMark64S.exe</strong> (đối với bản Shizuku) cho phù
                                                        hợp.</p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_2.JPG">Mở
                                                        thư mục vừa được giải nén</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_3.jpg">Chạy
                                                        file có đuôi .exe tương ứng</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_4.jpg">Giao
                                                        diện bản CrystalDiskMark Standard Edition</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_5.jpg"></em>
                                                    </p>
                                                    <p style="text-align: center;"><em>Giao diện bản CrystalDiskMark
                                                        Shizuku Edition​</em></p>
                                                    <p><strong>Bước 3: </strong>Các bạn chọn ổ đĩa muốn kiểm tra và chọn
                                                        <strong>"All"</strong> (Ở đây mình chọn ổ đĩa C). Quá trình test
                                                        sẽ mất khoảng 5 phút tùy theo ổ cứng mà bạn chọn.</p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_6.jpg"></p>
                                                    <p style="text-align: center;"><em>Chọn ổ đĩa muốn kiểm tra và chọn
                                                        "All"</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_7.jpg">Quá
                                                        trình test sẽ mất khoảng 5 phút</em></p>
                                                    <p><strong>Bước 4: </strong>Xem tốc độ đọc ghi ổ đĩa của bạn. Trung
                                                        bình Read/Write Seq phải trên 100 điểm thì mới có thể tạm chấp
                                                        nhận được. (Dưới 100 điểm thì tốc độ của ổ đang ở mức báo động
                                                        rồi đó).</p>
                                                    <p><img src="image/question/kiem_tra_toc_do_doc_ghi_8.jpg"></p>
                                                    <p style="text-align: center;"><em>Kết quả đọc / ghi của ổ đĩa C sau
                                                        khi test</em></p>
                                                    <p><strong>Giải đáp một số thuật ngữ hiển thị trên phần mềm</strong>
                                                    </p>
                                                    <p><strong>-Sequential: </strong>Các dữ liệu được đọc ghi tuần tự và
                                                        liên tiếp tới các vùng lân cận của ổ đĩa vì thế test theo phương
                                                        pháp này sẽ có tốc độ nhanh nhất.</p>
                                                    <p><strong>-512k</strong>: Khác với các trên, cách này sẽ đọc ghi dữ
                                                        liệu 512KB không tuần tự và nó sẽ di chuyển tới các vùng ngẫu
                                                        nhiên còn trống. Cách này sẽ nhanh hơn cách bên dưới vì lượng
                                                        ghi nhiều và ít phải di chuyển.</p>
                                                    <p><strong>4k</strong>: Giống như cách trên nhưng do số lượng ghi ít
                                                        sẽ phải di chuyển liên tục và mất thời gian hơn do chỉ ghi 4KB.
                                                    </p>
                                                    <p><strong>4kQD32</strong>: Giống cách 4k tuy nhiên sẽ có nhiều yêu
                                                        cầu gửi dữ liệu tới bộ điều khiển của ổ đĩa.</p>
                                                    <p>Như vậy chỉ với một vài thao tác đơn giản thì nay bạn đã có thể
                                                        tự mình kiểm tra tốc độ đọc ghi của thiết bị lưu trữ trên máy
                                                        tính rồi đấy ạ. Chúc các bạn thành công.</p>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal"
                                                        style="width: 85px;height: 50px">
                                                    Close
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="image/question/tai-ung-dung-hoc-tieng-anh-len-dien-thoai.jpg">
                            <h3>Chỉ mất 5 đến 10 phút mỗi ngày để giỏi tiếng anh hơn với ứng dụng này</h3>
                            <p>Tiếng Anh là ngôn ngữ rất phổ biến và cần thiết cho công việc cũng như cuộc sống. Cũng
                                như nhiều ngôn ngữ khác muốn...</p>
                        </a>
                        <div>
                            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
                                    data-target="#thongtinchitiet7"
                                    style="padding-top: 0px;padding-bottom: 0px;font-size: 12px">
                                Xem thêm
                            </button>

                            <div id="thongtinchitiet7" class="modal fade" tabindex="-1" role="dialog">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title">Cách kiểm tra tốc độ đọc ghi của ổ đĩa bằng phần
                                                mềm CrystalDiskMark</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="noidungchitiet">
                                                <h2>CrystalDiskMark là một phần mềm hiệu quả để giúp bạn có thể kiểm
                                                    tra được tốc độ đọc, ghi dữ liệu của thiết bị lưu trữ như HDD,
                                                    SSD, <a data-cke-saved-href="http://www.thegioididong.com/usb"
                                                            href="http://www.thegioididong.com/usb" target="_blank">USB</a>
                                                    hoặc
                                                    <a data-cke-saved-href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                       href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                       target="_blank">thẻ nhớ SD</a> trên <a
                                                            data-cke-saved-href="http://www.thegioididong.com/laptop"
                                                            href="http://www.thegioididong.com/laptop"
                                                            target="_blank">máy tính</a> của bạn. Biết được tốc độ
                                                    đọc ghi của ổ đĩa sẽ giúp cho quá trình sử dụng máy tính được
                                                    hiệu quả hơn.</h2>
                                                <h2>Bây giờ chúng ta hãy cùng tìm hiểu cách cài đặt và sử dụng phần
                                                    mềm này nhé.</h2>
                                                <p><strong>Bước 1: </strong> Các bạn tải CrystalDiskMark và tiến
                                                    hành giải nén file có đuôi "<strong>.zip</strong>" <a
                                                            data-cke-saved-href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                            href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                            target="_blank">tại đây.</a></p>
                                                <p>
                                                    <img src="image/question/kiem_tra_toc_do_doc_ghi_0.jpg"></p>
                                                <p style="text-align: center;"><em>Giải nén file có đuôi ".zip" vừa
                                                    tải về</em></p>
                                                <p><strong>Bước 2</strong>: Các bạn vào thư mục vừa giải nén . Ở đây
                                                    sẽ có 2 phiên bản đó là Standard Edition và Shizuku Edition. Mỗi
                                                    bản sẽ có 2 file đuôi "<strong>.exe</strong>". Tùy thuộc vào hệ
                                                    điều hành bạn đang sử dụng <strong>32bit </strong>hoặc<strong>
                                                        64bit</strong> mà bạn mở file
                                                    <strong>DiskMark32.exe</strong> hoặc
                                                    <strong>DiskMark64.exe</strong> (đối với bản Standard) và
                                                    <strong>DiskMark32S.exe</strong> hoặc
                                                    <strong>DiskMark64S.exe</strong> (đối với bản Shizuku) cho phù
                                                    hợp.</p>
                                                <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_2.JPG">Mở
                                                    thư mục vừa được giải nén</em></p>
                                                <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_3.jpg">Chạy
                                                    file có đuôi .exe tương ứng</em></p>
                                                <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_4.jpg">Giao
                                                    diện bản CrystalDiskMark Standard Edition</em></p>
                                                <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_5.jpg"></em>
                                                </p>
                                                <p style="text-align: center;"><em>Giao diện bản CrystalDiskMark
                                                    Shizuku Edition​</em></p>
                                                <p><strong>Bước 3: </strong>Các bạn chọn ổ đĩa muốn kiểm tra và chọn
                                                    <strong>"All"</strong> (Ở đây mình chọn ổ đĩa C). Quá trình test
                                                    sẽ mất khoảng 5 phút tùy theo ổ cứng mà bạn chọn.</p>
                                                <p>
                                                    <img src="image/question/kiem_tra_toc_do_doc_ghi_6.jpg"></p>
                                                <p style="text-align: center;"><em>Chọn ổ đĩa muốn kiểm tra và chọn
                                                    "All"</em></p>
                                                <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_7.jpg">Quá
                                                    trình test sẽ mất khoảng 5 phút</em></p>
                                                <p><strong>Bước 4: </strong>Xem tốc độ đọc ghi ổ đĩa của bạn. Trung
                                                    bình Read/Write Seq phải trên 100 điểm thì mới có thể tạm chấp
                                                    nhận được. (Dưới 100 điểm thì tốc độ của ổ đang ở mức báo động
                                                    rồi đó).</p>
                                                <p><img src="image/question/kiem_tra_toc_do_doc_ghi_8.jpg"></p>
                                                <p style="text-align: center;"><em>Kết quả đọc / ghi của ổ đĩa C sau
                                                    khi test</em></p>
                                                <p><strong>Giải đáp một số thuật ngữ hiển thị trên phần mềm</strong>
                                                </p>
                                                <p><strong>-Sequential: </strong>Các dữ liệu được đọc ghi tuần tự và
                                                    liên tiếp tới các vùng lân cận của ổ đĩa vì thế test theo phương
                                                    pháp này sẽ có tốc độ nhanh nhất.</p>
                                                <p><strong>-512k</strong>: Khác với các trên, cách này sẽ đọc ghi dữ
                                                    liệu 512KB không tuần tự và nó sẽ di chuyển tới các vùng ngẫu
                                                    nhiên còn trống. Cách này sẽ nhanh hơn cách bên dưới vì lượng
                                                    ghi nhiều và ít phải di chuyển.</p>
                                                <p><strong>4k</strong>: Giống như cách trên nhưng do số lượng ghi ít
                                                    sẽ phải di chuyển liên tục và mất thời gian hơn do chỉ ghi 4KB.
                                                </p>
                                                <p><strong>4kQD32</strong>: Giống cách 4k tuy nhiên sẽ có nhiều yêu
                                                    cầu gửi dữ liệu tới bộ điều khiển của ổ đĩa.</p>
                                                <p>Như vậy chỉ với một vài thao tác đơn giản thì nay bạn đã có thể
                                                    tự mình kiểm tra tốc độ đọc ghi của thiết bị lưu trữ trên máy
                                                    tính rồi đấy ạ. Chúc các bạn thành công.</p>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal"
                                                    style="width: 85px;height: 50px">
                                                Close
                                            </button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <img src="image/question/an-ung-dung-mac-dinh-tren-ios-12-icon.jpg">
                            <h3>Ẩn ứng dụng mặc định trên iOS 12</h3>
                            <p>Ngoài hiệu năng vượt trội so với phiên bản trước, bản cập nhật mới của Apple còn đem đến
                                cho người dùng nhiều...</p>
                            <div>
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
                                        data-target="#thongtinchitiet8"
                                        style="padding-top: 0px;padding-bottom: 0px;font-size: 12px">
                                    Xem thêm
                                </button>

                                <div id="thongtinchitiet8" class="modal fade" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Cách kiểm tra tốc độ đọc ghi của ổ đĩa bằng phần
                                                    mềm CrystalDiskMark</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="noidungchitiet">
                                                    <h2>CrystalDiskMark là một phần mềm hiệu quả để giúp bạn có thể kiểm
                                                        tra được tốc độ đọc, ghi dữ liệu của thiết bị lưu trữ như HDD,
                                                        SSD, <a data-cke-saved-href="http://www.thegioididong.com/usb"
                                                                href="http://www.thegioididong.com/usb" target="_blank">USB</a>
                                                        hoặc
                                                        <a data-cke-saved-href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           target="_blank">thẻ nhớ SD</a> trên <a
                                                                data-cke-saved-href="http://www.thegioididong.com/laptop"
                                                                href="http://www.thegioididong.com/laptop"
                                                                target="_blank">máy tính</a> của bạn. Biết được tốc độ
                                                        đọc ghi của ổ đĩa sẽ giúp cho quá trình sử dụng máy tính được
                                                        hiệu quả hơn.</h2>
                                                    <h2>Bây giờ chúng ta hãy cùng tìm hiểu cách cài đặt và sử dụng phần
                                                        mềm này nhé.</h2>
                                                    <p><strong>Bước 1: </strong> Các bạn tải CrystalDiskMark và tiến
                                                        hành giải nén file có đuôi "<strong>.zip</strong>" <a
                                                                data-cke-saved-href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                target="_blank">tại đây.</a></p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_0.jpg"></p>
                                                    <p style="text-align: center;"><em>Giải nén file có đuôi ".zip" vừa
                                                        tải về</em></p>
                                                    <p><strong>Bước 2</strong>: Các bạn vào thư mục vừa giải nén . Ở đây
                                                        sẽ có 2 phiên bản đó là Standard Edition và Shizuku Edition. Mỗi
                                                        bản sẽ có 2 file đuôi "<strong>.exe</strong>". Tùy thuộc vào hệ
                                                        điều hành bạn đang sử dụng <strong>32bit </strong>hoặc<strong>
                                                            64bit</strong> mà bạn mở file
                                                        <strong>DiskMark32.exe</strong> hoặc
                                                        <strong>DiskMark64.exe</strong> (đối với bản Standard) và
                                                        <strong>DiskMark32S.exe</strong> hoặc
                                                        <strong>DiskMark64S.exe</strong> (đối với bản Shizuku) cho phù
                                                        hợp.</p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_2.JPG">Mở
                                                        thư mục vừa được giải nén</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_3.jpg">Chạy
                                                        file có đuôi .exe tương ứng</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_4.jpg">Giao
                                                        diện bản CrystalDiskMark Standard Edition</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_5.jpg"></em>
                                                    </p>
                                                    <p style="text-align: center;"><em>Giao diện bản CrystalDiskMark
                                                        Shizuku Edition​</em></p>
                                                    <p><strong>Bước 3: </strong>Các bạn chọn ổ đĩa muốn kiểm tra và chọn
                                                        <strong>"All"</strong> (Ở đây mình chọn ổ đĩa C). Quá trình test
                                                        sẽ mất khoảng 5 phút tùy theo ổ cứng mà bạn chọn.</p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_6.jpg"></p>
                                                    <p style="text-align: center;"><em>Chọn ổ đĩa muốn kiểm tra và chọn
                                                        "All"</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_7.jpg">Quá
                                                        trình test sẽ mất khoảng 5 phút</em></p>
                                                    <p><strong>Bước 4: </strong>Xem tốc độ đọc ghi ổ đĩa của bạn. Trung
                                                        bình Read/Write Seq phải trên 100 điểm thì mới có thể tạm chấp
                                                        nhận được. (Dưới 100 điểm thì tốc độ của ổ đang ở mức báo động
                                                        rồi đó).</p>
                                                    <p><img src="image/question/kiem_tra_toc_do_doc_ghi_8.jpg"></p>
                                                    <p style="text-align: center;"><em>Kết quả đọc / ghi của ổ đĩa C sau
                                                        khi test</em></p>
                                                    <p><strong>Giải đáp một số thuật ngữ hiển thị trên phần mềm</strong>
                                                    </p>
                                                    <p><strong>-Sequential: </strong>Các dữ liệu được đọc ghi tuần tự và
                                                        liên tiếp tới các vùng lân cận của ổ đĩa vì thế test theo phương
                                                        pháp này sẽ có tốc độ nhanh nhất.</p>
                                                    <p><strong>-512k</strong>: Khác với các trên, cách này sẽ đọc ghi dữ
                                                        liệu 512KB không tuần tự và nó sẽ di chuyển tới các vùng ngẫu
                                                        nhiên còn trống. Cách này sẽ nhanh hơn cách bên dưới vì lượng
                                                        ghi nhiều và ít phải di chuyển.</p>
                                                    <p><strong>4k</strong>: Giống như cách trên nhưng do số lượng ghi ít
                                                        sẽ phải di chuyển liên tục và mất thời gian hơn do chỉ ghi 4KB.
                                                    </p>
                                                    <p><strong>4kQD32</strong>: Giống cách 4k tuy nhiên sẽ có nhiều yêu
                                                        cầu gửi dữ liệu tới bộ điều khiển của ổ đĩa.</p>
                                                    <p>Như vậy chỉ với một vài thao tác đơn giản thì nay bạn đã có thể
                                                        tự mình kiểm tra tốc độ đọc ghi của thiết bị lưu trữ trên máy
                                                        tính rồi đấy ạ. Chúc các bạn thành công.</p>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal"
                                                        style="width: 85px;height: 50px">
                                                    Close
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="image/question/thumb.jpg">
                            <h3>Khôi phục cài đặt gốc trên điện thoại Realme C1</h3>
                            <p>Đầu tiên bạn cần lưu ý việc khôi phục cài đặt gốc Realme C1 sẽ đưa máy về tình trạng ban
                                đầu, tức là các ứng dụng...</p>
                            <div>
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
                                        data-target="#thongtinchitiet9"
                                        style="padding-top: 0px;padding-bottom: 0px;font-size: 12px">
                                    Xem thêm
                                </button>

                                <div id="thongtinchitiet9" class="modal fade" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Cách kiểm tra tốc độ đọc ghi của ổ đĩa bằng phần
                                                    mềm CrystalDiskMark</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="noidungchitiet">
                                                    <h2>CrystalDiskMark là một phần mềm hiệu quả để giúp bạn có thể kiểm
                                                        tra được tốc độ đọc, ghi dữ liệu của thiết bị lưu trữ như HDD,
                                                        SSD, <a data-cke-saved-href="http://www.thegioididong.com/usb"
                                                                href="http://www.thegioididong.com/usb" target="_blank">USB</a>
                                                        hoặc
                                                        <a data-cke-saved-href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           target="_blank">thẻ nhớ SD</a> trên <a
                                                                data-cke-saved-href="http://www.thegioididong.com/laptop"
                                                                href="http://www.thegioididong.com/laptop"
                                                                target="_blank">máy tính</a> của bạn. Biết được tốc độ
                                                        đọc ghi của ổ đĩa sẽ giúp cho quá trình sử dụng máy tính được
                                                        hiệu quả hơn.</h2>
                                                    <h2>Bây giờ chúng ta hãy cùng tìm hiểu cách cài đặt và sử dụng phần
                                                        mềm này nhé.</h2>
                                                    <p><strong>Bước 1: </strong> Các bạn tải CrystalDiskMark và tiến
                                                        hành giải nén file có đuôi "<strong>.zip</strong>" <a
                                                                data-cke-saved-href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                target="_blank">tại đây.</a></p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_0.jpg"></p>
                                                    <p style="text-align: center;"><em>Giải nén file có đuôi ".zip" vừa
                                                        tải về</em></p>
                                                    <p><strong>Bước 2</strong>: Các bạn vào thư mục vừa giải nén . Ở đây
                                                        sẽ có 2 phiên bản đó là Standard Edition và Shizuku Edition. Mỗi
                                                        bản sẽ có 2 file đuôi "<strong>.exe</strong>". Tùy thuộc vào hệ
                                                        điều hành bạn đang sử dụng <strong>32bit </strong>hoặc<strong>
                                                            64bit</strong> mà bạn mở file
                                                        <strong>DiskMark32.exe</strong> hoặc
                                                        <strong>DiskMark64.exe</strong> (đối với bản Standard) và
                                                        <strong>DiskMark32S.exe</strong> hoặc
                                                        <strong>DiskMark64S.exe</strong> (đối với bản Shizuku) cho phù
                                                        hợp.</p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_2.JPG">Mở
                                                        thư mục vừa được giải nén</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_3.jpg">Chạy
                                                        file có đuôi .exe tương ứng</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_4.jpg">Giao
                                                        diện bản CrystalDiskMark Standard Edition</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_5.jpg"></em>
                                                    </p>
                                                    <p style="text-align: center;"><em>Giao diện bản CrystalDiskMark
                                                        Shizuku Edition​</em></p>
                                                    <p><strong>Bước 3: </strong>Các bạn chọn ổ đĩa muốn kiểm tra và chọn
                                                        <strong>"All"</strong> (Ở đây mình chọn ổ đĩa C). Quá trình test
                                                        sẽ mất khoảng 5 phút tùy theo ổ cứng mà bạn chọn.</p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_6.jpg"></p>
                                                    <p style="text-align: center;"><em>Chọn ổ đĩa muốn kiểm tra và chọn
                                                        "All"</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_7.jpg">Quá
                                                        trình test sẽ mất khoảng 5 phút</em></p>
                                                    <p><strong>Bước 4: </strong>Xem tốc độ đọc ghi ổ đĩa của bạn. Trung
                                                        bình Read/Write Seq phải trên 100 điểm thì mới có thể tạm chấp
                                                        nhận được. (Dưới 100 điểm thì tốc độ của ổ đang ở mức báo động
                                                        rồi đó).</p>
                                                    <p><img src="image/question/kiem_tra_toc_do_doc_ghi_8.jpg"></p>
                                                    <p style="text-align: center;"><em>Kết quả đọc / ghi của ổ đĩa C sau
                                                        khi test</em></p>
                                                    <p><strong>Giải đáp một số thuật ngữ hiển thị trên phần mềm</strong>
                                                    </p>
                                                    <p><strong>-Sequential: </strong>Các dữ liệu được đọc ghi tuần tự và
                                                        liên tiếp tới các vùng lân cận của ổ đĩa vì thế test theo phương
                                                        pháp này sẽ có tốc độ nhanh nhất.</p>
                                                    <p><strong>-512k</strong>: Khác với các trên, cách này sẽ đọc ghi dữ
                                                        liệu 512KB không tuần tự và nó sẽ di chuyển tới các vùng ngẫu
                                                        nhiên còn trống. Cách này sẽ nhanh hơn cách bên dưới vì lượng
                                                        ghi nhiều và ít phải di chuyển.</p>
                                                    <p><strong>4k</strong>: Giống như cách trên nhưng do số lượng ghi ít
                                                        sẽ phải di chuyển liên tục và mất thời gian hơn do chỉ ghi 4KB.
                                                    </p>
                                                    <p><strong>4kQD32</strong>: Giống cách 4k tuy nhiên sẽ có nhiều yêu
                                                        cầu gửi dữ liệu tới bộ điều khiển của ổ đĩa.</p>
                                                    <p>Như vậy chỉ với một vài thao tác đơn giản thì nay bạn đã có thể
                                                        tự mình kiểm tra tốc độ đọc ghi của thiết bị lưu trữ trên máy
                                                        tính rồi đấy ạ. Chúc các bạn thành công.</p>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal"
                                                        style="width: 85px;height: 50px">
                                                    Close
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="image/question/tu-choi-cuoc-goi-iphone-2.jpg">
                            <h3>Cách từ chối cuộc gọi nhanh trên iPhone khi đang ở màn hình khoá</h3>
                            <p>Đã bao giờ bạn gặp tình huống cuộc gọi đến nhưng iPhone k có lựa chọn từ chối cuộc gọi
                                chưa? Bài viết này sẽ hướng...</p>
                            <div>
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
                                        data-target="#thongtinchitiet10"
                                        style="padding-top: 0px;padding-bottom: 0px;font-size: 12px">
                                    Xem thêm
                                </button>

                                <div id="thongtinchitiet10" class="modal fade" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Cách kiểm tra tốc độ đọc ghi của ổ đĩa bằng phần
                                                    mềm CrystalDiskMark</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="noidungchitiet">
                                                    <h2>CrystalDiskMark là một phần mềm hiệu quả để giúp bạn có thể kiểm
                                                        tra được tốc độ đọc, ghi dữ liệu của thiết bị lưu trữ như HDD,
                                                        SSD, <a data-cke-saved-href="http://www.thegioididong.com/usb"
                                                                href="http://www.thegioididong.com/usb" target="_blank">USB</a>
                                                        hoặc
                                                        <a data-cke-saved-href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           target="_blank">thẻ nhớ SD</a> trên <a
                                                                data-cke-saved-href="http://www.thegioididong.com/laptop"
                                                                href="http://www.thegioididong.com/laptop"
                                                                target="_blank">máy tính</a> của bạn. Biết được tốc độ
                                                        đọc ghi của ổ đĩa sẽ giúp cho quá trình sử dụng máy tính được
                                                        hiệu quả hơn.</h2>
                                                    <h2>Bây giờ chúng ta hãy cùng tìm hiểu cách cài đặt và sử dụng phần
                                                        mềm này nhé.</h2>
                                                    <p><strong>Bước 1: </strong> Các bạn tải CrystalDiskMark và tiến
                                                        hành giải nén file có đuôi "<strong>.zip</strong>" <a
                                                                data-cke-saved-href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                target="_blank">tại đây.</a></p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_0.jpg"></p>
                                                    <p style="text-align: center;"><em>Giải nén file có đuôi ".zip" vừa
                                                        tải về</em></p>
                                                    <p><strong>Bước 2</strong>: Các bạn vào thư mục vừa giải nén . Ở đây
                                                        sẽ có 2 phiên bản đó là Standard Edition và Shizuku Edition. Mỗi
                                                        bản sẽ có 2 file đuôi "<strong>.exe</strong>". Tùy thuộc vào hệ
                                                        điều hành bạn đang sử dụng <strong>32bit </strong>hoặc<strong>
                                                            64bit</strong> mà bạn mở file
                                                        <strong>DiskMark32.exe</strong> hoặc
                                                        <strong>DiskMark64.exe</strong> (đối với bản Standard) và
                                                        <strong>DiskMark32S.exe</strong> hoặc
                                                        <strong>DiskMark64S.exe</strong> (đối với bản Shizuku) cho phù
                                                        hợp.</p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_2.JPG">Mở
                                                        thư mục vừa được giải nén</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_3.jpg">Chạy
                                                        file có đuôi .exe tương ứng</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_4.jpg">Giao
                                                        diện bản CrystalDiskMark Standard Edition</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_5.jpg"></em>
                                                    </p>
                                                    <p style="text-align: center;"><em>Giao diện bản CrystalDiskMark
                                                        Shizuku Edition​</em></p>
                                                    <p><strong>Bước 3: </strong>Các bạn chọn ổ đĩa muốn kiểm tra và chọn
                                                        <strong>"All"</strong> (Ở đây mình chọn ổ đĩa C). Quá trình test
                                                        sẽ mất khoảng 5 phút tùy theo ổ cứng mà bạn chọn.</p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_6.jpg"></p>
                                                    <p style="text-align: center;"><em>Chọn ổ đĩa muốn kiểm tra và chọn
                                                        "All"</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_7.jpg">Quá
                                                        trình test sẽ mất khoảng 5 phút</em></p>
                                                    <p><strong>Bước 4: </strong>Xem tốc độ đọc ghi ổ đĩa của bạn. Trung
                                                        bình Read/Write Seq phải trên 100 điểm thì mới có thể tạm chấp
                                                        nhận được. (Dưới 100 điểm thì tốc độ của ổ đang ở mức báo động
                                                        rồi đó).</p>
                                                    <p><img src="image/question/kiem_tra_toc_do_doc_ghi_8.jpg"></p>
                                                    <p style="text-align: center;"><em>Kết quả đọc / ghi của ổ đĩa C sau
                                                        khi test</em></p>
                                                    <p><strong>Giải đáp một số thuật ngữ hiển thị trên phần mềm</strong>
                                                    </p>
                                                    <p><strong>-Sequential: </strong>Các dữ liệu được đọc ghi tuần tự và
                                                        liên tiếp tới các vùng lân cận của ổ đĩa vì thế test theo phương
                                                        pháp này sẽ có tốc độ nhanh nhất.</p>
                                                    <p><strong>-512k</strong>: Khác với các trên, cách này sẽ đọc ghi dữ
                                                        liệu 512KB không tuần tự và nó sẽ di chuyển tới các vùng ngẫu
                                                        nhiên còn trống. Cách này sẽ nhanh hơn cách bên dưới vì lượng
                                                        ghi nhiều và ít phải di chuyển.</p>
                                                    <p><strong>4k</strong>: Giống như cách trên nhưng do số lượng ghi ít
                                                        sẽ phải di chuyển liên tục và mất thời gian hơn do chỉ ghi 4KB.
                                                    </p>
                                                    <p><strong>4kQD32</strong>: Giống cách 4k tuy nhiên sẽ có nhiều yêu
                                                        cầu gửi dữ liệu tới bộ điều khiển của ổ đĩa.</p>
                                                    <p>Như vậy chỉ với một vài thao tác đơn giản thì nay bạn đã có thể
                                                        tự mình kiểm tra tốc độ đọc ghi của thiết bị lưu trữ trên máy
                                                        tính rồi đấy ạ. Chúc các bạn thành công.</p>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal"
                                                        style="width: 85px;height: 50px">
                                                    Close
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="image/question/dtnongs.jpg">
                            <h3>Khắc phục máy nóng, nhanh hết pin trên điện thoại Samsung A9 (2018)</h3>
                            <p>Khi sử dụng Samsung A9 (2018) trong thời gian dài, xuất hiện tình trạng nóng và nhanh hết
                                pin thì bạn nên thực...</p>
                        </a>
                        <div>
                            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
                                    data-target="#thongtinchitiet11"
                                    style="padding-top: 0px;padding-bottom: 0px;font-size: 12px">
                                Xem thêm
                            </button>

                            <div id="thongtinchitiet11" class="modal fade" tabindex="-1" role="dialog">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title">Cách kiểm tra tốc độ đọc ghi của ổ đĩa bằng phần
                                                mềm CrystalDiskMark</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="noidungchitiet">
                                                <h2>CrystalDiskMark là một phần mềm hiệu quả để giúp bạn có thể kiểm
                                                    tra được tốc độ đọc, ghi dữ liệu của thiết bị lưu trữ như HDD,
                                                    SSD, <a data-cke-saved-href="http://www.thegioididong.com/usb"
                                                            href="http://www.thegioididong.com/usb" target="_blank">USB</a>
                                                    hoặc
                                                    <a data-cke-saved-href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                       href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                       target="_blank">thẻ nhớ SD</a> trên <a
                                                            data-cke-saved-href="http://www.thegioididong.com/laptop"
                                                            href="http://www.thegioididong.com/laptop"
                                                            target="_blank">máy tính</a> của bạn. Biết được tốc độ
                                                    đọc ghi của ổ đĩa sẽ giúp cho quá trình sử dụng máy tính được
                                                    hiệu quả hơn.</h2>
                                                <h2>Bây giờ chúng ta hãy cùng tìm hiểu cách cài đặt và sử dụng phần
                                                    mềm này nhé.</h2>
                                                <p><strong>Bước 1: </strong> Các bạn tải CrystalDiskMark và tiến
                                                    hành giải nén file có đuôi "<strong>.zip</strong>" <a
                                                            data-cke-saved-href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                            href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                            target="_blank">tại đây.</a></p>
                                                <p>
                                                    <img src="image/question/kiem_tra_toc_do_doc_ghi_0.jpg"></p>
                                                <p style="text-align: center;"><em>Giải nén file có đuôi ".zip" vừa
                                                    tải về</em></p>
                                                <p><strong>Bước 2</strong>: Các bạn vào thư mục vừa giải nén . Ở đây
                                                    sẽ có 2 phiên bản đó là Standard Edition và Shizuku Edition. Mỗi
                                                    bản sẽ có 2 file đuôi "<strong>.exe</strong>". Tùy thuộc vào hệ
                                                    điều hành bạn đang sử dụng <strong>32bit </strong>hoặc<strong>
                                                        64bit</strong> mà bạn mở file
                                                    <strong>DiskMark32.exe</strong> hoặc
                                                    <strong>DiskMark64.exe</strong> (đối với bản Standard) và
                                                    <strong>DiskMark32S.exe</strong> hoặc
                                                    <strong>DiskMark64S.exe</strong> (đối với bản Shizuku) cho phù
                                                    hợp.</p>
                                                <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_2.JPG">Mở
                                                    thư mục vừa được giải nén</em></p>
                                                <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_3.jpg">Chạy
                                                    file có đuôi .exe tương ứng</em></p>
                                                <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_4.jpg">Giao
                                                    diện bản CrystalDiskMark Standard Edition</em></p>
                                                <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_5.jpg"></em>
                                                </p>
                                                <p style="text-align: center;"><em>Giao diện bản CrystalDiskMark
                                                    Shizuku Edition​</em></p>
                                                <p><strong>Bước 3: </strong>Các bạn chọn ổ đĩa muốn kiểm tra và chọn
                                                    <strong>"All"</strong> (Ở đây mình chọn ổ đĩa C). Quá trình test
                                                    sẽ mất khoảng 5 phút tùy theo ổ cứng mà bạn chọn.</p>
                                                <p>
                                                    <img src="image/question/kiem_tra_toc_do_doc_ghi_6.jpg"></p>
                                                <p style="text-align: center;"><em>Chọn ổ đĩa muốn kiểm tra và chọn
                                                    "All"</em></p>
                                                <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_7.jpg">Quá
                                                    trình test sẽ mất khoảng 5 phút</em></p>
                                                <p><strong>Bước 4: </strong>Xem tốc độ đọc ghi ổ đĩa của bạn. Trung
                                                    bình Read/Write Seq phải trên 100 điểm thì mới có thể tạm chấp
                                                    nhận được. (Dưới 100 điểm thì tốc độ của ổ đang ở mức báo động
                                                    rồi đó).</p>
                                                <p><img src="image/question/kiem_tra_toc_do_doc_ghi_8.jpg"></p>
                                                <p style="text-align: center;"><em>Kết quả đọc / ghi của ổ đĩa C sau
                                                    khi test</em></p>
                                                <p><strong>Giải đáp một số thuật ngữ hiển thị trên phần mềm</strong>
                                                </p>
                                                <p><strong>-Sequential: </strong>Các dữ liệu được đọc ghi tuần tự và
                                                    liên tiếp tới các vùng lân cận của ổ đĩa vì thế test theo phương
                                                    pháp này sẽ có tốc độ nhanh nhất.</p>
                                                <p><strong>-512k</strong>: Khác với các trên, cách này sẽ đọc ghi dữ
                                                    liệu 512KB không tuần tự và nó sẽ di chuyển tới các vùng ngẫu
                                                    nhiên còn trống. Cách này sẽ nhanh hơn cách bên dưới vì lượng
                                                    ghi nhiều và ít phải di chuyển.</p>
                                                <p><strong>4k</strong>: Giống như cách trên nhưng do số lượng ghi ít
                                                    sẽ phải di chuyển liên tục và mất thời gian hơn do chỉ ghi 4KB.
                                                </p>
                                                <p><strong>4kQD32</strong>: Giống cách 4k tuy nhiên sẽ có nhiều yêu
                                                    cầu gửi dữ liệu tới bộ điều khiển của ổ đĩa.</p>
                                                <p>Như vậy chỉ với một vài thao tác đơn giản thì nay bạn đã có thể
                                                    tự mình kiểm tra tốc độ đọc ghi của thiết bị lưu trữ trên máy
                                                    tính rồi đấy ạ. Chúc các bạn thành công.</p>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal"
                                                    style="width: 85px;height: 50px">
                                                Close
                                            </button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <img src="image/question/wifi.jpg">
                            <h3>Không vào được wifi trên Samsung A9 (2018)</h3>
                            <p>Nếu điện thoại Samsung A9 (2018) của bạn không thể vào được wifi, hoặc đôi lúc kết nối
                                thành công nhưng đường...</p>
                            <div>
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
                                        data-target="#thongtinchitiet12"
                                        style="padding-top: 0px;padding-bottom: 0px;font-size: 12px">
                                    Xem thêm
                                </button>

                                <div id="thongtinchitiet12" class="modal fade" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Cách kiểm tra tốc độ đọc ghi của ổ đĩa bằng phần
                                                    mềm CrystalDiskMark</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="noidungchitiet">
                                                    <h2>CrystalDiskMark là một phần mềm hiệu quả để giúp bạn có thể kiểm
                                                        tra được tốc độ đọc, ghi dữ liệu của thiết bị lưu trữ như HDD,
                                                        SSD, <a data-cke-saved-href="http://www.thegioididong.com/usb"
                                                                href="http://www.thegioididong.com/usb" target="_blank">USB</a>
                                                        hoặc
                                                        <a data-cke-saved-href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           href="http://www.thegioididong.com/the-nho-dien-thoai"
                                                           target="_blank">thẻ nhớ SD</a> trên <a
                                                                data-cke-saved-href="http://www.thegioididong.com/laptop"
                                                                href="http://www.thegioididong.com/laptop"
                                                                target="_blank">máy tính</a> của bạn. Biết được tốc độ
                                                        đọc ghi của ổ đĩa sẽ giúp cho quá trình sử dụng máy tính được
                                                        hiệu quả hơn.</h2>
                                                    <h2>Bây giờ chúng ta hãy cùng tìm hiểu cách cài đặt và sử dụng phần
                                                        mềm này nhé.</h2>
                                                    <p><strong>Bước 1: </strong> Các bạn tải CrystalDiskMark và tiến
                                                        hành giải nén file có đuôi "<strong>.zip</strong>" <a
                                                                data-cke-saved-href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                href="http://osdn.net/projects/crystaldiskmark/downloads/68624/CrystalDiskMark6_0_2Shizuku.zip/"
                                                                target="_blank">tại đây.</a></p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_0.jpg"></p>
                                                    <p style="text-align: center;"><em>Giải nén file có đuôi ".zip" vừa
                                                        tải về</em></p>
                                                    <p><strong>Bước 2</strong>: Các bạn vào thư mục vừa giải nén . Ở đây
                                                        sẽ có 2 phiên bản đó là Standard Edition và Shizuku Edition. Mỗi
                                                        bản sẽ có 2 file đuôi "<strong>.exe</strong>". Tùy thuộc vào hệ
                                                        điều hành bạn đang sử dụng <strong>32bit </strong>hoặc<strong>
                                                            64bit</strong> mà bạn mở file
                                                        <strong>DiskMark32.exe</strong> hoặc
                                                        <strong>DiskMark64.exe</strong> (đối với bản Standard) và
                                                        <strong>DiskMark32S.exe</strong> hoặc
                                                        <strong>DiskMark64S.exe</strong> (đối với bản Shizuku) cho phù
                                                        hợp.</p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_2.JPG">Mở
                                                        thư mục vừa được giải nén</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_3.jpg">Chạy
                                                        file có đuôi .exe tương ứng</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_4.jpg">Giao
                                                        diện bản CrystalDiskMark Standard Edition</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_5.jpg"></em>
                                                    </p>
                                                    <p style="text-align: center;"><em>Giao diện bản CrystalDiskMark
                                                        Shizuku Edition​</em></p>
                                                    <p><strong>Bước 3: </strong>Các bạn chọn ổ đĩa muốn kiểm tra và chọn
                                                        <strong>"All"</strong> (Ở đây mình chọn ổ đĩa C). Quá trình test
                                                        sẽ mất khoảng 5 phút tùy theo ổ cứng mà bạn chọn.</p>
                                                    <p>
                                                        <img src="image/question/kiem_tra_toc_do_doc_ghi_6.jpg"></p>
                                                    <p style="text-align: center;"><em>Chọn ổ đĩa muốn kiểm tra và chọn
                                                        "All"</em></p>
                                                    <p style="text-align: center;"><em><img src="image/question/kiem_tra_toc_do_doc_ghi_7.jpg">Quá
                                                        trình test sẽ mất khoảng 5 phút</em></p>
                                                    <p><strong>Bước 4: </strong>Xem tốc độ đọc ghi ổ đĩa của bạn. Trung
                                                        bình Read/Write Seq phải trên 100 điểm thì mới có thể tạm chấp
                                                        nhận được. (Dưới 100 điểm thì tốc độ của ổ đang ở mức báo động
                                                        rồi đó).</p>
                                                    <p><img src="image/question/kiem_tra_toc_do_doc_ghi_8.jpg"></p>
                                                    <p style="text-align: center;"><em>Kết quả đọc / ghi của ổ đĩa C sau
                                                        khi test</em></p>
                                                    <p><strong>Giải đáp một số thuật ngữ hiển thị trên phần mềm</strong>
                                                    </p>
                                                    <p><strong>-Sequential: </strong>Các dữ liệu được đọc ghi tuần tự và
                                                        liên tiếp tới các vùng lân cận của ổ đĩa vì thế test theo phương
                                                        pháp này sẽ có tốc độ nhanh nhất.</p>
                                                    <p><strong>-512k</strong>: Khác với các trên, cách này sẽ đọc ghi dữ
                                                        liệu 512KB không tuần tự và nó sẽ di chuyển tới các vùng ngẫu
                                                        nhiên còn trống. Cách này sẽ nhanh hơn cách bên dưới vì lượng
                                                        ghi nhiều và ít phải di chuyển.</p>
                                                    <p><strong>4k</strong>: Giống như cách trên nhưng do số lượng ghi ít
                                                        sẽ phải di chuyển liên tục và mất thời gian hơn do chỉ ghi 4KB.
                                                    </p>
                                                    <p><strong>4kQD32</strong>: Giống cách 4k tuy nhiên sẽ có nhiều yêu
                                                        cầu gửi dữ liệu tới bộ điều khiển của ổ đĩa.</p>
                                                    <p>Như vậy chỉ với một vài thao tác đơn giản thì nay bạn đã có thể
                                                        tự mình kiểm tra tốc độ đọc ghi của thiết bị lưu trữ trên máy
                                                        tính rồi đấy ạ. Chúc các bạn thành công.</p>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal"
                                                        style="width: 85px;height: 50px">
                                                    Close
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
                <a href="#" class="viewmore">Xem thêm</a>
            </div>
        </div>
        <div class="question">
            <div class="nhapcauhoi">
                <div class="cauhoi">
                    <input type="text" id="txtquestions" name="key" placeholder="Nhập nội dung câu hỏi của bạn">
                </div>
                <div class="gui">
                    <button type="submit">Gửi</button>
                </div>
                <input type="hidden" class="txtMail" value="">
                <input type="hidden" class="txtMail" value="">
                <input type="hidden" class="txtUserID" value="">
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

<!------START FOOTER--------->
    <jsp:include page="footer.jsp" ></jsp:include>   
    <jsp:include page="backToTop.jsp" ></jsp:include>   
</body>
</html>
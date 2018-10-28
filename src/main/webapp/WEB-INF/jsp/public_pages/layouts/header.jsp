<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<nav class="nav-header navbar navbar-default clearfix">
    <div class="container clearfix">
        <div class="navbar-top clearfix">
            <div class="navbar-top-wap">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xs-5 locationbox locationbox-mobile">
                            <select  class="form-control selectpicker" onchange="changeLocation(this.value)" id="current_location" data-style="btn btn-location">
                                <option value="0">Chọn Tỉnh/Thành Phố</option>
                                <option data-name="ho-chi-minh" value="1">Hồ Chí Minh</option>
                                <option data-name="ha-noi" value="2">Hà Nội</option>
                                <option data-name="hai-duong" value="55">Hải Dương</option>
                                <option data-name="hai-phong" value="3">Hải Phòng</option>
                                <option data-name="quang-ninh" value="66">Quảng Ninh</option>
                                <option data-name="nghe-an" value="28">Nghệ An</option>
                                <option data-name="hue" value="5">Huế</option>
                                <option data-name="da-nang" value="4"selected="selected">Đà Nẵng</option>
                                <option data-name="binh-dinh" value="52">Bình Định</option>
                                <option data-name="khanh-hoa" value="50">Khánh Hòa</option>
                                <option data-name="binh-thuan" value="53">Bình Thuận</option>
                                <option data-name="dak-lak" value="6">Đắk Lắk</option>
                                <option data-name="binh-duong" value="7">Bình Dương</option>
                                <option data-name="dong-nai" value="8">Đồng Nai</option>
                                <option data-name="vung-tau" value="9">Vũng Tàu</option>
                                <option data-name="an-giang" value="51">An Giang</option>
                                <option data-name="can-tho" value="11">Cần Thơ</option>
                                <option data-name="kien-giang" value="54">Kiên Giang</option>
                                <option data-name="thanh-hoa" value="954">Thanh Hóa</option>
                                <option data-name="ben-tre" value="1069">Bến Tre</option>
                                <option data-name="nam-dinh" value="1072">Nam Định</option>
                            </select>
                        </div>
                        <div class="col-xs-5 userbox userbox-mobile">
                            <div class="logged-desktop">
                                <a class="inline-block" tabindex="0" rel="popover-user">Võ Trung</a>
                            </div>
                            <div class="logged-mobile" style="display: none">
                                <div class="say-hi">
                                    <span>Xin chào!</span><br/>
                                    <a href="https://kfcvietnam.com.vn/vn/thanh-vien/thong-tin-tai-khoan.html">
                                        <h3>Võ Trung</h3>
                                    </a>
                                    <span><img src="/public/public_pages/templates/images/gift-menu-mobile.png" class="img-responsive"/>0</span>
                                </div>
                                <ul class="hi-list">
                                    <li><a href="https://kfcvietnam.com.vn/vn/thanh-vien/lich-su-giao-dich.html">Lịch sử giao dịch</a></li>
                                    <li><a href="https://kfcvietnam.com.vn/vn/thanh-vien/mon-an-yeu-thich.html">Món ăn yêu thích</a></li>
                                    <li><a href="https://kfcvietnam.com.vn/vn/thanh-vien/thong-bao.html">Thông báo</a></li>
                                    <li><a href="https://kfcvietnam.com.vn/vn/thanh-vien/dang-xuat.html">Đăng xuất</a></li>
                                </ul>
                            </div>
                            <div id="user-info" style="display:none;">
                                <div class="list-group">
                                    <div class="list-group-item">
                                        <div class="avartar-user img-circle pull-left">
                                            <img src="https://graph.facebook.com/2315560245430928/picture?type=large&width=100&height=100" class="img-responsive" alt=""/>
                                        </div>
                                        <div class="username pull-left">
                                            <div class="clearfix"><span>Võ Trung</span></div>
                                            <div class="clearfix">
                                                <h5>
                                                    <img src="https://kfcvietnam.com.vn/templates/images/gift-thanh-toan-md-mobile.png" alt="" class="img-responsive"/>0
                                                </h5>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="https://kfcvietnam.com.vn/vn/thanh-vien/thong-tin-tai-khoan.html" class="list-group-item">Thông tin tài khoản</a>
                                    <a href="https://kfcvietnam.com.vn/vn/thanh-vien/dia-chi.html" class="list-group-item">Địa chỉ giao hàng</a>
                                    <a href="https://kfcvietnam.com.vn/vn/thanh-vien/lich-su-giao-dich.html" class="list-group-item">Lịch sử giao dịch</a>
                                    <a href="https://kfcvietnam.com.vn/vn/thanh-vien/mon-an-yeu-thich.html" class="list-group-item">Món ăn yêu thích</a>
                                    <a href="https://kfcvietnam.com.vn/vn/thanh-vien/thong-bao.html" class="list-group-item">Thông báo<span class="badge">0</span></a>
                                    <a href="https://kfcvietnam.com.vn/vn/thanh-vien/thu-vien-anh.html" class="list-group-item">Thư viện ảnh</a>
                                    <a href="https://kfcvietnam.com.vn/vn/thanh-vien/dang-xuat.html" class="list-group-item">Đăng xuất</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-2 langbox langbox-mobile">
                            <div class="pull-right">
                                <span style="display: none">Ngôn ngữ:&nbsp;&nbsp; </span>&nbsp;
                                <a class="inline-block active" href="https://kfcvietnam.com.vn/vn/thuc-don/0/phan-an-combo.html">
                                    <img src="https://kfcvietnam.com.vn/templates/images/lang-vn.png" class="img-responsive img-desktop"/>
                                    <img src="https://kfcvietnam.com.vn/templates/images/lang-vn-mobile.png" class="img-responsive img-mobile" style="display: none"/>
                                </a>
                                <a class="inline-block " href="https://kfcvietnam.com.vn/en/thuc-don/0/phan-an-combo.html">
                                    <img src="/public/public_pages/templates/images/lang-en.png" class="img-responsive img-desktop"/>
                                    <img src="/public/public_pages/templates/images/lang-en-mobile.png" class="img-responsive img-mobile" style="display: none"/>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</nav>
<nav class="nav-fix clearfix">
    <div class="container clearfix">
        <div class="navbar-header clearfix">
            <button type="button" class="btn_menu_mobile">
                <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
            </button>
            <div class="menuMobile menuH">
                <nav id="navbar_mobile" class="navbar_mobile">
                    <a class="btn-close-menu"></a>
                    <ul class="nav navbar-nav">
                        <li class="item"><a href="https://kfcvietnam.com.vn/vn">Trang chủ</a></li>
                        <li class="item"><a href="https://kfcvietnam.com.vn/vn/gioi-thieu.html">Giới thiệu</a></li>
                        <li class="item"><a rel="popup-thuc-don" href="/index/${categories.get(0).getIdCategory()}">Thực đơn</a></li>
                        <li class="item"><a href="/discount">Khuyến mãi</a></li>
                        <li class="item"><a href="https://kfcvietnam.com.vn/vn/nghe-nghiep.html">Nghề nghiệp</a></li>
                        <li class="item"><a href="https://kfcvietnam.com.vn/vn/thu-vien-anh.html">Thư viện ảnh</a></li>
                        <li class="item"><a href="https://kfcvietnam.com.vn/vn/thanh-vien/thong-tin-tai-khoan.html">Thành viên</a></li>
                        <li class="item"><a href="https://kfcvietnam.com.vn/vn/nha-hang.html">Nhà hàng</a></li>
                    </ul>
                    <div class="app-store-mobile">
                        <p>Tải ứng dụng KFC Vietnam để mua hàng được nhiều ưu đãi</p>
                        <div class="button-app-mobile">
                            <a class="tai-app-btn1" href="https://itunes.apple.com/tr/app/kfc-vietnam/id562164615?mt=8" target="_blank" title=""><img src="https://kfcvietnam.com.vn/templates/images/tai-app-btn-1-vn.png" class="img-responsive center-block"></a>
                            <a class="tai-app-btn2" href="https://play.google.com/store/apps/details?id=kfc.vietnam&hl=vi" target="_blank" title=""><img src="https://kfcvietnam.com.vn/templates/images/tai-app-btn-2-vn.png" class="img-responsive center-block"></a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </nav>
            </div>
            <a class="navbar-brand" href="https://kfcvietnam.com.vn/vn">
                <img src="/public/public_pages/templates/images/logo-vn.png" class="logo-img img-responsive"/>
                <img src="/public/public_pages/templates/images/logo-kfc.png" class="logo-text img-responsive"/>
                <img src="/public/public_pages/templates/images/logo-kfc-new.png" class="logo-text-mobile img-responsive" style="display: none"/>
            </a>
            <div class="cartbox clearfix" id="cart_box" >
                <a href="/cart">
                    <i class="fa fa-shopping-cart"></i>
                    <span id="cart_number">
                        ${sessionScope.cart.getQuantityTotal()}
                    </span>
                    <span class="text-cart"> Giỏ hàng</span>
                    <i class="fa fa-caret-down"></i>
                </a>
                <div id="popup-gio-hang" class="dropdown-menu clearfix">
                    &nbsp;
                </div>
            </div>
            <a class="giao-hang inline-block">
                <img src="/public/public_pages/templates/images/giao-hang-vn.png" class="img-responsive img-desktop"/>
            </a>
        </div>
        <div class="clearfix"></div>
        <div id="navbar" class="navbar-collapse clearfix">
            <div id="mainmenu" class="clearfix">
                <a class="owlmenu-btn left"><i class="fa fa-angle-left"></i></a> <a class="owlmenu-btn right"><i class="fa fa-angle-right"></i></a>
                <div class="owl-carousel">
                    <div class="item" id="menu_gioithieu"><a href="https://kfcvietnam.com.vn/vn/gioi-thieu.html">Giới thiệu</a></div>
                    <div class="item" id="menu_thucdon"><a rel="popup-thuc-don" href="/index/${categories.get(0).getIdCategory()}">Thực đơn</a></div>
                    <div class="item" id="menu_nhahang"><a href="https://kfcvietnam.com.vn/vn/nha-hang.html">Nhà hàng</a></div>
                    <div class="item" id="menu_khuyenmai"><a href="/discount">Khuyến mãi</a></div>
                    <div class="item" id="menu_nghenghiep"><a href="https://kfcvietnam.com.vn/vn/nghe-nghiep.html">Nghề nghiệp</a></div>
                    <div class="item" id="menu_thuvienanh"><a href="https://kfcvietnam.com.vn/vn/thu-vien-anh.html">Thư viện ảnh</a></div>
                    <div class="item" id="menu_thanhvien"><a href="https://kfcvietnam.com.vn/vn/thanh-vien/thong-tin-tai-khoan.html">Thành viên</a></div>
                </div>
            </div>
        </div>
        <!--/.nav-collapse -->
    </div>
    <div id="popup-thuc-don" class="clearfix">
        <div class="container">
            <div id="main-thucdon">
                <a class="owlmenu-home-btn left"><i class="fa fa-angle-left"></i></a> <a class="owlmenu-home-btn right"><i class="fa fa-angle-right"></i></a>
                <div class="owl-carousel">
                    <c:forEach var="cat" items="${categories}">
                        <div class="item">
                            <a href="/index/${cat.getIdCategory()}">
                                <div class="image"><img src="/public/public_pages/uploads/category/${cat.getImage()}" class="img-responsive center-block"></div>
                                <div class="title">${cat.getName()}</div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</nav>
<script type="text/javascript">
    var url = 'https://kfcvietnam.com.vn/';
    jQuery(document).ready(function(){
        $.ajaxSetup({
            data: {
                csrf_kfc_name: '7eaa990dabe717e0974c9189bd8704e4'
            }
        });
    });
</script>
<section class="banner  clearfix">
    <img src="/public/public_pages/templates/images/banner-fake.png" class="img-responsive visible-xs visible-sm">
    <div class="fadeOut owl-carousel owl-theme">
        <div class="item" style="background-image:url(https://kfcvietnam.com.vn/uploads/banner/7d3909e01a26f1650c19f3ca521d0b25.png)"><a href="https://kfcvietnam.com.vn/vn/khuyen-mai/69/khoai-tay-vien-mashies-gion-thom-chuan-vi-ngon.html" target="_blank" title="">&nbsp;</a></div>
    </div>
</section>
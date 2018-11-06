<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<section class="thanh-vien-main clearfix">
    <div class="container wap-sec-thanh-vien">
        <div class="thanh-vien-content">
            <div class="row">
                <div class="height-content">
                    <div class="sidebar-menu col-md-4">
                        <div class="sidebar-menu-block popover-user-info fade bottom in" id="popover795472" style="top: 17px; left: -1.80469px; display: block;">
                            <div class="arrow" style="left: 50%;"></div>
                            <div class="popover-content">
                                <div class="list-group">
                                    <div class="list-group-item list-one avatar-ground">
                                        <div class="avartar-user img-circle">
                                            <img src="https://lh6.googleusercontent.com/-m-Mkf6u-U7A/AAAAAAAAAAI/AAAAAAAAAHo/ZPyXjCTtcbQ/s96-c/photo.jpg&width=100&height=100" class="img-responsive" alt=""/>
                                        </div>
                                        <div class="username">
                                            <div class="clearfix">
                                                <h4>Trung Võ</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="navbar navbar-default">
                                        <nav id="site-navigation" style="display: none">
                                            <a id="user_info" href="https://kfcvietnam.com.vn/vn/thanh-vien/thong-tin-tai-khoan.html" class="list-group-item">Thông tin tài khoản</a>
                                            <a id="user_address" href="https://kfcvietnam.com.vn/vn/thanh-vien/dia-chi.html" class="list-group-item">Địa chỉ giao hàng</a>
                                            <a id="user_history" href="https://kfcvietnam.com.vn/vn/thanh-vien/lich-su-giao-dich.html" class="list-group-item">Lịch sử giao dịch</a>
                                            <a id="user_favorite" href="https://kfcvietnam.com.vn/vn/thanh-vien/mon-an-yeu-thich.html" class="list-group-item">Món ăn yêu thích</a>
                                            <a id="user_notification" href="https://kfcvietnam.com.vn/vn/thanh-vien/thong-bao.html" class="list-group-item">Thông báo</a>
                                            <a id="user_photo" href="https://kfcvietnam.com.vn/vn/thanh-vien/thu-vien-anh.html" class="list-group-item">Thư viện ảnh</a>
                                            <a href="https://kfcvietnam.com.vn/vn/thanh-vien/dang-xuat.html" class="list-group-item">Đăng xuất</a>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-product-block col-md-8">
                        <div class="bg-mobile">
                            <div class="dia-chi-btn title-mobile">
                                Địa chỉ giao hàng
                            </div>
                            <div class="dia-chi-giao-hang">
                                <div class="left-title">Địa chỉ giao hàng</div>
                                <div class="dia-chi-giao-hang-block">
                                    <div class="nothing">
                                        <img src="/public/public_pages/templates/images/dia-chi-empty.png" class="img-responsive center-block"" alt="">
                                        <p class="text-center">Bạn chưa có địa chỉ giao hàng nào.</p>
                                        </p>
                                    </div>
                                    <div class="new-address">
                                        <div class="btn-block text-center">
                                            <button class="btn-new-address" id="new-address"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Thêm địa chỉ mới</button>
                                        </div>
                                        <div class="new-address-form">
                                            <div class="left-title">Địa chỉ (Số nhà - Tên đường)</div>
                                            <form action="https://kfcvietnam.com.vn/vn/do_themdiachi.html" method="post" accept-charset="utf-8" id="add_new_contact" class="add_new_contact">
                                                <div style="display:none">
                                                    <input type="hidden" name="csrf_kfc_name" value="3208eb82aeb3896547f0c089a35faccd" />
                                                </div>
                                                <div class="address information">
                                                    <div class="row">
                                                        <div class="label col-md-4 col-xs-4">Người nhận:</div>
                                                        <div class="input col-md-8 col-xs-8"><input class="form-control input-lg" type="text" id="user_name" name="user_name"></div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="label col-md-4 col-xs-4">Địa chỉ (Số nhà - Tên đường):</div>
                                                        <div class="input col-md-8 col-xs-8"><input class="form-control input-lg" type="text" id="user_addresss" name="user_address"></div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="label col-md-4 col-xs-4">Tỉnh/Thành phố:</div>
                                                        <div class="input col-md-8 col-xs-8">
                                                            <div class="row">
                                                                <div class="col-md-12 date">
                                                                    <select data-container="body" onchange="load_district_user(this.value,0);" class="form-control selectpicker" data-style="btn btn-findkfc" name="user_city">
                                                                        <option value="0">Tỉnh/Thành phố</option>
                                                                        <option value="1">Hồ Chí Minh</option>
                                                                        <option value="2">Hà Nội</option>
                                                                        <option value="55">Hải Dương</option>
                                                                        <option value="3">Hải Phòng</option>
                                                                        <option value="66">Quảng Ninh</option>
                                                                        <option value="28">Nghệ An</option>
                                                                        <option value="5">Huế</option>
                                                                        <option value="4">Đà Nẵng</option>
                                                                        <option value="52">Bình Định</option>
                                                                        <option value="50">Khánh Hòa</option>
                                                                        <option value="53">Bình Thuận</option>
                                                                        <option value="6">Đắk Lắk</option>
                                                                        <option value="7">Bình Dương</option>
                                                                        <option value="8">Đồng Nai</option>
                                                                        <option value="9">Vũng Tàu</option>
                                                                        <option value="51">An Giang</option>
                                                                        <option value="11">Cần Thơ</option>
                                                                        <option value="54">Kiên Giang</option>
                                                                        <option value="954">Thanh Hóa</option>
                                                                        <option value="1069">Bến Tre</option>
                                                                        <option value="1072">Nam Định</option>
                                                                        <option value="1076">Gia Lai</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="label col-md-4 col-xs-4">Quận/Huyện:</div>
                                                        <div class="input col-md-8 col-xs-8">
                                                            <div class="row">
                                                                <div class="col-md-12 date">
                                                                    <select id="district_id" class="form-control selectpicker" data-style="btn btn-findkfc" name="district_id" onchange="load_ward_user(this.value);">
                                                                        <option value="">Quận/Huyện</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="label col-md-4 col-xs-4">Phường/Xã:</div>
                                                        <div class="input col-md-8 col-xs-8">
                                                            <div class="row">
                                                                <div class="col-md-12 date">
                                                                    <select id="ward_id" class="form-control selectpicker" data-style="btn btn-findkfc" name="ward_id">
                                                                        <option value="">Phường/Xã</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="label col-md-4 col-xs-4">Điện thoại:</div>
                                                        <div class="input col-md-8 col-xs-8"><input class="form-control input-lg" type="text" id="user_phone" name="user_phone"></div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="label col-md-4 col-xs-4">Email:</div>
                                                        <div class="input col-md-8 col-xs-8"><input class="form-control input-lg" type="text" id="user_email" name="user_email"></div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="label text-hide col-md-4 col-xs-4">&nbsp;</div>
                                                        <div class="input col-md-8 col-xs-8"><input id="new_address_btn" name="new_address_btn" class="update-btn" onclick="saveUserAddress();" type="submit" value="Thêm mới"></div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="menu-block-mobile">
                <a class="thong-tin-ca-nhan-btn" aria-expanded="false"  href="https://kfcvietnam.com.vn/vn/thanh-vien/thong-tin-tai-khoan.html">
                    Thông tin tài khoản    </a>
                <a class="lich-su-giao-dich-btn" aria-expanded="false" href="https://kfcvietnam.com.vn/vn/thanh-vien/lich-su-giao-dich.html">
                    Lịch sử giao dịch    </a>
                <a class="mon-an-yeu-thich-btn" aria-expanded="false" href="https://kfcvietnam.com.vn/vn/thanh-vien/mon-an-yeu-thich.html">
                    Món ăn yêu thích    </a>
                <a class="thong-bao-btn" aria-expanded="false" href="https://kfcvietnam.com.vn/vn/thanh-vien/thong-bao.html">
                    Thông báo    </a>
                <a class="thu-vien-anh-btn" aria-expanded="false" href="https://kfcvietnam.com.vn/vn/thanh-vien/thu-vien-anh.html">
                    Thư viện ảnh    </a>
                <a href="https://kfcvietnam.com.vn/vn/thanh-vien/dang-xuat.html" class="list-group-item dang-xuat-btn">Đăng xuất</a>
            </div>
        </div>
    </div>
</section>
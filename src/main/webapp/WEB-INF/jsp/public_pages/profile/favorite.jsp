<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<section class="thanh-vien-main clearfix">
    <div class="container wap-sec-thanh-vien">
        <!--a class="go-back" href="#">Quay lại giỏ hàng</a-->
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
                                            <img src="/public/public_pages/templates/images/avatar-nu.png" class="img-responsive" alt=""/>
                                        </div>
                                        <div class="username">
                                            <div class="clearfix">
                                                <h4>${pageContext.request.userPrincipal.name}</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="navbar navbar-default">
                                        <nav id="site-navigation" style="display: none">
                                            <a id="user_info" href="/profile">Thông tin tài khoản</a><br />
                                            <a id="user_address" href="/profile/address">Địa chỉ giao hàng</a>
                                            <a id="user_history" href="/profile/history" class="list-group-item">Lịch sử giao dịch</a>
                                            <a id="user_favorite" href="/profile/favorite" class="list-group-item">Món ăn yêu thích</a>
                                            <a href="/logout" class="list-group-item">Đăng xuất</a>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-product-block col-md-8">
                        <div class="bg-mobile">
                            <div class="mon-an-yeu-thich-btn title-mobile">
                                Món ăn yêu thích                            </div>
                            <div class="mon-an-yeu-thich">
                                <div class="left-title">Món ăn yêu thích</div>
                                <div class="item-block">
                                    <div class="row">
                                        <div class="col-sm-3 col-xs-4"><img src="https://kfcvietnam.com.vn/uploads/combo/4764bb738eec2c8a5d5f2557963f2633.png" class="img-responsive"></div>
                                        <div class="col-sm-9 col-xs-8">
                                            <div class="name">Double Dip 1B</div>
                                            <ul>
                                                <li>1 Khoai Tây Chiên (Vừa)</li>
                                                <li>1 Pepsi (Vừa)</li>
                                            </ul>
                                            <div class="btn-ground">
                                                <a href="javascript:;" onclick="product.remove_favorite(80);" class="del"><i class="fa fa-trash"></i></a>
                                                <a href="javascript:void(0);" onclick="call_combo(80);" class="add-gio-hang">Thêm vào giỏ hàng</a>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item-block">
                                    <div class="row">
                                        <div class="col-sm-3 col-xs-4"><img src="https://kfcvietnam.com.vn/uploads/combo/501a67a0e9cf2bb95b20c6d8ad8dc07d.png" class="img-responsive"></div>
                                        <div class="col-sm-9 col-xs-8">
                                            <div class="name">Combo Kiddie 1</div>
                                            <ul>
                                                <li>1 Khoai Tây Chiên (Vừa)</li>
                                                <li>1 Pepsi (Vừa)</li>
                                            </ul>
                                            <div class="btn-ground">
                                                <a href="javascript:;" onclick="product.remove_favorite(87);" class="del"><i class="fa fa-trash"></i></a>
                                                <a href="javascript:void(0);" onclick="call_combo(87);" class="add-gio-hang">Thêm vào giỏ hàng</a>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="menu-block-mobile">
                <a class="thong-tin-ca-nhan-btn" aria-expanded="false"  href="/profile">
                    Thông tin tài khoản    </a>
                <a class="lich-su-giao-dich-btn" aria-expanded="false" href="/profile/history">
                    Lịch sử giao dịch    </a>
                <a class="mon-an-yeu-thich-btn" aria-expanded="false" href="/profile/favorite">
                    Món ăn yêu thích    </a>
                <a href="/logout" class="list-group-item dang-xuat-btn">Đăng xuất</a>
            </div>
        </div>
</section>
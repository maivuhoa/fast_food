<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<section class="sec-thuc-don sec-dktv clearfix">
    <div class="container wap-sec-thuc-don b-fix">
        <div class="row">
            <div class="col-md-12">
                <ul class="btn-breadcrumb nav nav-justified">
                    <li class="active"><a><h2>Phần ăn đã chọn</h2></a></li>
                    <li><a><h2>Thông tin giao hàng</h2></a></li>
                    <li><a><h2>Xác nhận đơn hàng</h2></a></li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="box-don-hang list-don-hang popup-sp">
                    <div class="title clearfix">
                        <div class="row">
                            <div class="col-md-6 ttsp">thông tin sản phẩm</div>
                            <div class="col-md-2 dg">đơn giá</div>
                            <div class="col-md-2 sl">Số lượng</div>
                            <div class="col-md-2 tt">Thành tiền</div>
                        </div>
                    </div>
                    <div class="container-fluid">
                        <div class="row content">
                            <div class="container-fluid" id="update_cart">
                                <div class="row text-center">
                                    <div class="nothing-cart">
                                        <img src="/public/public_pages/templates/images/cart-empty.png"
                                             class="img-responsive center-block" alt=""/>
                                        <p style="padding-top: 20px;font-size: 17px;margin-bottom: 0">Không có sản phẩm nào trong giỏ hàng của bạn!</p>
                                    </div>
                                </div>
                                <div class="row blink">
                                    <div class="col-xs-12 clearfix"><hr/></div>
                                </div>
                                <div class="row total wap-dktv">
                                    <div class="col-md-4 col-sm-6">
                                    </div>
                                    <div class="col-md-6 col-md-push-2 col-sm-6 col-sm-push-0 text-right">
                                        <div class="clearfix b-mobile b-left">
                                            <label class="nhan text-uppercase">TỔNG THANH TOÁN</label>
                                        </div>
                                        <div class="price b-mobile b-right clearfix">
                                            <div id="cart_total_price"> 0 <small>VNĐ</small></div>
                                        </div>
                                        <div class="clearfix b-btn-mobile">
                                            <a href="javascript:void(0);" onclick="product.place_order();"
                                               class="btn btn-danger btn-lg btn-dk">đặt hàng</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
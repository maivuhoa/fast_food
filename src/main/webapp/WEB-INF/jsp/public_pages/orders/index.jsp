<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<section class="sec-thuc-don sec-dktv clearfix">
    <div class="container wap-sec-thuc-don b-fix">
        <div class="row">
            <div class="col-md-12">
                <ul class="btn-breadcrumb nav nav-justified">
                    <li class="active"><a>Phần ăn đã chọn</a></li>
                    <li class="active"><a>Thông tin giao hàng</a></li>
                    <li class="active"><a>Xác nhận đơn hàng</a></li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="box-don-hang text-camon">
                    Vui lòng xem lại thông tin đặt hàng và chọn phương thức thanh toán bên dưới.<br/> Thông tin đặt hàng
                    của quý khách như sau:
                </div>
                <div class="box-don-hang">
                    <div class="title title-ttkh">Địa chỉ giao hàng <a class="btn btn-sua btn-danger"
                                                                       href="/profile/address">Sửa</a>
                    </div>
                    <div class="container-fluid">
                        <div class="row content">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="ttkh dtt wap-dktv wauto">
                                            <div class="row">
                                                <div class="col-md-3 col-sm-3 col-xs-5">
                                                    <label class="nhan">Người nhận:</label>
                                                </div>
                                                <div class="col-md-9 col-sm-9 col-xs-7">
                                                    <div class="form-group">
                                                        <label class="nhan bold">${order.name}</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3 col-sm-3 col-xs-5">
                                                    <label class="nhan">Địa chỉ (Số nhà - Tên đường):</label>
                                                </div>
                                                <div class="col-md-9 col-sm-9 col-xs-7">
                                                    <div class="form-group">
                                                        <label class="nhan bold">${order.address}</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3 col-sm-3 col-xs-5">
                                                    <label class="nhan">Tỉnh/Thành phố:</label>
                                                </div>
                                                <div class="col-md-9 col-sm-9 col-xs-7">
                                                    <div class="form-group">
                                                        <label class="nhan bold">Hà Nội</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3 col-sm-3 col-xs-5">
                                                    <label class="nhan">Quận/Huyện:</label>
                                                </div>
                                                <div class="col-md-9 col-sm-9 col-xs-7">
                                                    <div class="form-group">
                                                        <label class="nhan bold">${district.name}</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3 col-sm-3 col-xs-5">
                                                    <label class="nhan">Phường/Xã:</label>
                                                </div>
                                                <div class="col-md-9 col-sm-9 col-xs-7">
                                                    <div class="form-group">
                                                        <label class="nhan bold">${ward.name}</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3 col-sm-3 col-xs-5">
                                                    <label class="nhan">Điện thoại:</label>
                                                </div>
                                                <div class="col-md-9 col-sm-9 col-xs-7">
                                                    <div class="form-group">
                                                        <label class="nhan bold">${order.phone}</label>
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
                <div class="box-don-hang list-don-hang ttdh popup-sp">
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
                            <div class="container-fluid">
                                <c:forEach var="p" items="${sessionScope.cart.getCartItems()}">
                                    <div class="row item" id="cart_product_209_1">
                                        <div class="col-md-6 ttsp">
                                            <div class="row">
                                                <div class="col-xs-12 tit">
                                                    <span class="pname">${p.getProduct().getName()}</span>
                                                </div>
                                            </div>
                                            _district                                      <div class="row collapse" id="collapseproduct_209_1">
                                                <div class="col-xs-4 col-md-4 img">
                                                    <img src="https://kfcvietnam.com.vn/templates/images/popup-img-pro.jpg"
                                                         class="img-responsive"/>
                                                </div>
                                                <div class="col-xs-8 col-md-8">
                                                    <div class="option">
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-circle"></i> <span class="text">${p.getProduct().getName()}</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 wap-price">
                                            <div class="row">
                                                <div class="col-xs-4 dg">
                                                    <div class="price">${p.getProduct().getPrice()}
                                                        <small>VNĐ</small>
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 sl">
                                                    <div class="quantity-wap" data-id="product_209_1">
                                                        <input type="text" class="quantity" id="quantity_product_209_1"
                                                               data-id="product_209_1"
                                                               onkeyup="product.change_quantity('product_209_1')"
                                                               value=" ${p.getQuantity()}"
                                                               readonly="true"/>
                                                        <input type="hidden" class="price_input"
                                                               id="price_product_209_1"
                                                               data-id="product_209_1" value="98000"/>
                                                        <input type="hidden" class="total_price"
                                                               id="total_price_product_209_1" value="196000"/>
                                                    </div>
                                                </div>
                                                <div class="col-xs-4 tt">
                                                    <div class="price" class="price_after"
                                                         id="after_price_product_209_1">
                                                            ${p.getProduct().getPrice() * p.getQuantity()}
                                                        <small>VNĐ</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                                <div class="row blink">
                                    <div class="link-more">
                                        <a target="_blank"
                                           href="/discount">
                                            <div class="img-loa">
                                                <img src="https://kfcvietnam.com.vn/templates/images/loa.png"
                                                     class="img-responsive"/>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="row total wap-dktv">
                                    <div class="col-xs-12 clearfix">
                                        <hr/>
                                    </div>
                                    <div class="col-md-3 col-md-push-2 col-sm-3 col-sm-push-0 text-right">
                                        <div class="clearfix text-right  b-mobile b-left">
                                            <label class="nhan text-uppercase">Tiền Ship</label>
                                        </div>
                                        <div class="price b-mobile b-right clearfix">
                                            <input type="hidden" name="coupon" value=""/>
                                            <div id=""> ${ship_cost}
                                                <small>VNĐ</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-md-push-2 col-sm-6 col-sm-push-0 text-right">
                                        <div class="clearfix text-right  b-mobile b-left">
                                            <label class="nhan text-uppercase">TỔNG THANH TOÁN</label>
                                        </div>
                                        <div class="price b-mobile b-right clearfix">
                                            <input type="hidden" name="coupon" id="coupon" value=""/>
                                            <div id="cart_total_price"> ${sessionScope.cart.getAmountTotal() + ship_cost}
                                                <small>VNĐ</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box-don-hang httt b-don-hang clearfix">
                    <div class="container-fluid">
                        <div class="row title">
                            <div class="col-md-12">chọn hình thức thanh toán</div>
                        </div>
                        <div class="row content">
                            <div class="col-sm-4 left-content left-content-1">
                                <img src="https://kfcvietnam.com.vn/templates/images/httt-giao-hang.png"
                                     class="img-responsive img-httt inline-block"/>
                                <div class="radio text inline-block">
                                    <label>
                                        <input type="radio" name="httt" value="1" checked="checked"
                                               href="#tab-content-1" onclick="product.check_payment();"/>
                                        <span class="cr lc-1"><i class="cr-icon fa fa-square"></i></span> Thanh toán khi
                                        nhận hàng</label>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="tab-content" style="display: none;">
                                <div id="tab-content-1" class="tab-content-1 tab-pane fade in active"
                                     style="display: none;">
                                    &nbsp;
                                </div>
                                <div id="tab-content-3" class="tab-content-3 tab-pane fade">
                                    <div class="left-3 left">
                                        <b>Chú ý:Không chấp nhận hoàn tiền hoặc đổi phần ăn sau khi
                                        quý khách đã thanh toán trực tuyến thành công.</b>Chúng tôi chỉ thực hiện
                                        hoàn tiền trong trường hợp khi giao dịch, tài khoản của của quý khách đã bị trừ
                                        tiền nhưng hệ thống của chúng tôi không ghi nhận được đơn hàng, và bạn không
                                        nhận được xác nhận đặt hàng thành công.
                                        Xem chi tiết hơn các quy định này.
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <script>
                    function cancel_order() {
                        window.location = '/index/1';
                    }
                </script>
                <div class="box-don-hang wap-btn clearfix">
                    <div class="row">
                        <div class="col-sm-6 top-mobile">
                            <button class="btn btn-default btn-lg btn-block" onclick="cancel_order()">hủy đơn hàng</button>
                        </div>
                        <div class="col-sm-6 bot-mobile">
                            <a class="btn btn-danger btn-lg btn-block" href="/order/save">
                                đồng ý đặt hàng </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

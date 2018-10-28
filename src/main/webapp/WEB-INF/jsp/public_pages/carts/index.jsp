<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
                    <c:if test="${sessionScope.cart.getQuantityTotal() == 0}">
                        <div class="container-fluid">
                            <div class="row content">
                                <div class="container-fluid" id="update_cart">
                                    <div class="row text-center">
                                        <div class="nothing-cart">
                                            <img src="/public/public_pages/templates/images/cart-empty.png"
                                                 class="img-responsive center-block" alt=""/>
                                            <p style="padding-top: 20px;font-size: 17px;margin-bottom: 0">Không có sản
                                                phẩm nào trong giỏ hàng của bạn!</p>
                                        </div>
                                    </div>
                                    <div class="row blink">
                                        <div class="col-xs-12 clearfix">
                                            <hr/>
                                        </div>
                                    </div>
                                    <div class="row total wap-dktv">
                                        <div class="col-md-4 col-sm-6">
                                        </div>
                                        <div class="col-md-6 col-md-push-2 col-sm-6 col-sm-push-0 text-right">
                                            <div class="clearfix b-mobile b-left">
                                                <label class="nhan text-uppercase">TỔNG THANH TOÁN</label>
                                            </div>
                                            <div class="price b-mobile b-right clearfix">
                                                <div id="cart_total_price"> 0
                                                    <small>VNĐ</small>
                                                </div>
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
                    </c:if>
                    <c:if test="${sessionScope.cart.getQuantityTotal() != 0}">
                        <c:forEach var="p" items="${sessionScope.cart.getCartItems()}">
                            <div class="row item" id="cart_product_256_1">
                                <div class="col-md-6 col-sm-6 ttsp">
                                    <div class="row">
                                        <div class="col-xs-12 tit">
                                            <a class="btn button-close"
                                               onclick="product.remove_product('product_256_1');"><i
                                                    class="fa fa-trash"></i></a>
                                            <span class="pname">${p.getProduct().getName()}</span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-4 col-md-4 img">
                                            <img src="${p.getProduct().getImage()}"
                                                 class="img-responsive"/>
                                        </div>
                                        <div class="col-xs-8 col-md-8">
                                            <div class="option">
                                                <ul class="list-unstyled">
                                                    <li><i class="fa fa-circle"></i><span
                                                            class="text">${p.getProduct().getName()}</span>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6 wap-price">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-4 col-xs-4 dg">
                                            <div class="price">${p.getProduct().getPrice()}
                                                <small>VNĐ</small>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-4 col-xs-4 sl">
                                            <div class="quantity-wap quantity-cart"
                                                 data-id="product_256_1">
                                                <input type="text" class="quantity"
                                                       id="quantity_product_256_1"
                                                       data-id="product_256_1"
                                                       onkeyup="product.change_quantity('product_256_1')"
                                                       value="${p.getQuantity()}"/>
                                                <input type="hidden" class="price_input"
                                                       id="price_product_256_1"
                                                       data-id="product_256_1"
                                                       value="73000"/>
                                                <input type="hidden" class="total_price"
                                                       id="total_price_product_256_1"
                                                       value="146000"/>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-4 col-xs-4 tt">
                                            <div class="price" class="price_after"
                                                 id="after_price_product_256_1">${p.getProduct().getPrice() * p.getQuantity()}
                                                <small>VNĐ</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</section>
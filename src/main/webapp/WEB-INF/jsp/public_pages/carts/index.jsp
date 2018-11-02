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
        <script>

            function remove_product(id) {
                jQuery("#cart_" + id).remove();
                jQuery.ajax({
                    url: '/remove-cart',
                    type: 'POST',
                    data: {
                        id: id
                    },
                    beforeSend: function () {
                        jQuery('#loader').fadeIn();
                    },
                    error: function () {
                        jQuery('#loader').fadeOut();
                    },
                    success: function (resp) {
                        var cartNumber = resp.split("|")[0];
                        var totalMoney = resp.split("|")[1];
                        jQuery('#cart_number').html(cartNumber);
                        jQuery('#cart_total_price').html(totalMoney);
                        window.location = document.URL;
                    }
                });
            }

            function increaseValue(id, price) {
                var value = parseInt($("#quantity_" + id).val(), 10);
                value = isNaN(value) ? 1 : value;
                value++;
                price = value * price;
                $("#after_price_" + id).html(price + "<small>VNĐ</small>");
                $("#quantity_" + id).val(value);
                jQuery.ajax({
                    url: '/update_cart',
                    type: 'POST',
                    data: {
                        id: id,
                        quantity: value
                    },
                    success: function (resp) {
                        var cartNumber = resp.split("|")[0];
                        var totalMoney = resp.split("|")[1];
                        jQuery('#cart_number').html(cartNumber);
                        jQuery('#total_money').html(totalMoney);

                    },
                    error: function (e) {
                        console.log("ERROR: ", e);
                    }
                });
            }

            function decreaseValue(id, price) {
                var value = parseInt($("#quantity_" + id).val(), 10);
                value = isNaN(value) ? 1 : value;
                value < 1 ? value = 1 : '';
                value--;
                if (value > 0) {
                    price = value * price;
                    $("#after_price_" + id).html(price + "<small>VNĐ</small>");
                    $("#quantity_" + id).val(value);
                    jQuery.ajax({
                        url: '/update_cart',
                        type: 'POST',
                        data: {
                            id: id,
                            quantity: value
                        },
                        success: function (resp) {
                            var cartNumber = resp.split("|")[0];
                            var totalMoney = resp.split("|")[1];
                            jQuery('#cart_number').html(cartNumber);
                            jQuery('#total_money').html(totalMoney);
                        },
                        error: function (e) {
                            console.log("ERROR: ", e);
                        }
                    });
                }
            }

        </script>
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
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${sessionScope.cart.getQuantityTotal() != 0}">
                        <c:forEach var="p" items="${sessionScope.cart.getCartItems()}">
                            <div class="row item" id="cart_${p.getProduct().getIdProduct()}">
                                <div class="col-md-6 col-sm-6 ttsp">
                                    <div class="row">
                                        <div class="col-xs-12 tit">
                                            <a class="btn button-close"
                                               onclick="remove_product(${p.getProduct().getIdProduct()});"><i
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
                                            <div class="quantity-wap clearfix">
                                                <input type="text" class="quantity" id="quantity_${p.getProduct().getIdProduct()}"
                                                       value="${p.getQuantity()}">
                                                <a class="btn inc button"
                                                   onclick="increaseValue(${p.getProduct().getIdProduct()}, ${p.getProduct().getPrice()})">+</a><a
                                                    class="btn dec button"
                                                    onclick="decreaseValue(${p.getProduct().getIdProduct()}, ${p.getProduct().getPrice()})">−</a>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-4 col-xs-4 tt">
                                            <div class="price" class="price_after" id="after_price_${p.getProduct().getIdProduct()}">
                                                ${p.getProduct().getPrice() * p.getQuantity()}
                                                <small>VNĐ</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>
                    <div class="row total wap-dktv">
                        <div class="col-md-4 col-sm-6">
                        </div>
                        <div class="col-md-6 col-md-push-2 col-sm-6 col-sm-push-0 text-right">
                            <div class="clearfix b-mobile b-left">
                                <label class="nhan text-uppercase">TỔNG THANH TOÁN</label>
                            </div>
                            <div class="price b-mobile b-right clearfix">
                                <div class="total_price" id="cart_total_price">
                                    <div id="total_money">
                                        <c:if test="${sessionScope.cart.getQuantityTotal() == 0}">
                                            0
                                        </c:if>
                                        <c:if test="${sessionScope.cart.getQuantityTotal() != 0}">
                                            ${sessionScope.cart.getAmountTotal()}
                                        </c:if>
                                    </div>

                                    <small>VNĐ</small>
                                </div>
                            </div>
                            <script>
                                function place_order(){
                                    var value = parseFloat($('#total_money').text());
                                    if(value < 80000)
                                        $('#notification-modal').modal('show');
                                    else
                                        window.location = '/checkout/index';
                                }
                                function modal_close() {
                                    $('#notification-modal').modal('hide');
                                }
                            </script>
                            <div class="clearfix b-btn-mobile">
                                <a href="javascript:void(0);" onclick="place_order();"
                                   class="btn btn-danger btn-lg btn-dk">đặt hàng</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <div class="modal fade" id="notification-modal" role="dialog" style="display: none;">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div  class="popup-wap clearfix"> <a class="btn-close" onclick="modal_close();"></a>
                        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
                        <div class="three-vertical bottom clearfix"><span></span><span></span><span></span><span></span><span></span></div>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="popup-head text-center">Tổng giá tiền phải lớn hơn  80.000 VNĐ</div>
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
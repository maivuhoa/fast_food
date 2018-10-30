<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<section class="sec-thuc-don clearfix">
    <div class="container wap-sec-thuc-don">
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="row">
            <div class="col-md-12 menu-home-title">
                <h1>Thực đơn</h1>
            </div>

            <div class="col-md-12">
                <div id="menu-list-thuc-don" class="menu-list-thuc-don clearfix">
                    <select id="selectpicker_menu" onclick="menuAjax(this.value)" class="selectpicker form-control"
                            onchange="window.location.href=this.value;">
                        <c:forEach var="cat" items="${categories}">
                            <c:if test="${categorySelected == cat.getIdCategory()}">
                                <option myid="${cat.getIdCategory()}" value="/index/${cat.getIdCategory()}"
                                        data-content="<span class='text'><h2>${cat.getName()}</h2></span>"
                                        class="tab_product" style="text-transform: uppercase;"
                                        selected>${cat.getName()}</option>
                            </c:if>
                            <c:if test="${categorySelected != cat.getIdCategory()}">
                                <option myid="${cat.getIdCategory()}" value="/index/${cat.getIdCategory()}"
                                        data-content="<span class='text'><h2>${cat.getName()}</h2></span>"
                                        class="tab_product" style="text-transform: uppercase;">${cat.getName()}</option>
                            </c:if>
                        </c:forEach>
                    </select>
                </div>
                <div class="tag">
                    <h2>Phần ăn Combo</h2>
                    <h2>Gà Rán & Quay</h2>
                    <h2>BURGER - CƠM</h2>
                    <h2>Thức Ăn Nhẹ</h2>
                    <h2>Tráng Miệng & Thức Uống</h2>
                </div>
            </div>
            <div class="col-md-12">
                <div id="tab-wap" class="tab-content">
                    <div id="tab_product" class="tab-pane fade active in ">
                        <div class="list-thuc-don-items">
                            <div class="row">
                                <script type="text/javascript">
                                    function increaseValue() {
                                        var value = parseInt(document.getElementById('quantity').value, 10);
                                        value = isNaN(value) ? 0 : value;
                                        value++;
                                        document.getElementById('quantity').value = value;
                                    }

                                    function decreaseValue() {
                                        var value = parseInt(document.getElementById('quantity').value, 10);
                                        value = isNaN(value) ? 0 : value;
                                        value < 1 ? value = 1 : '';
                                        value--;
                                        document.getElementById('quantity').value = value;
                                    }

                                    function view_product_detail(product) {
                                        var products_infor = product.split("|");
                                        var currentId = $('#product-id-chose').children().attr("id");
                                        $('#' + currentId).attr('id', products_infor[0]);
                                        $("#product-name").html(products_infor[1]);
                                        $("#product-price").html(products_infor[2] + " VNĐ");
                                        $("#product-img").attr("src", "/public/public_pages/uploads/product/" + products_infor[3]);
                                        if (products_infor[4] == 'false') {
                                            $("#product-name-child").html(products_infor[1]);
                                            $("#product-modal").modal('show');
                                        } else {
                                            $.ajax({
                                                type: "POST",
                                                contentType: "application/json",
                                                url: "/combo/" + products_infor[0],
                                                dataType: 'json',
                                                success: function (result) {
                                                    var i;
                                                    var html = '';
                                                    for (i = 0; i < result.length; i++) {
                                                        html += '<li><i class="fa fa-circle"></i>' + result[i].name + '</li>'
                                                    }
                                                    $("#product-name-child").html(html);
                                                    $("#product-modal").modal('show');
                                                },
                                                error: function (e) {
                                                }
                                            });
                                        }
                                    }

                                    function add_to_cart() {
                                        var id = $('#product-id-chose').children().attr("id");
                                        var name = $("#product-name").html();
                                        var price = $("#product-price").html().split(" ")[0];
                                        var image = $("#product-img").attr("src");
                                        var quantity = document.getElementById('quantity').value;
                                        var formData = {
                                            product: {
                                                idProduct: id,
                                                name: name,
                                                price: price,
                                                image: image
                                            },
                                            quantity: quantity,
                                        }
                                        $.ajax({
                                            type: "POST",
                                            contentType: "application/json",
                                            url: "/add-cart",
                                            data: JSON.stringify(formData),
                                            dataType: 'json',
                                            success: function (result) {
                                                $("#cart_number").html(result);
                                                $("#product-modal").modal('hide');
                                            },
                                            error: function (e) {
                                                console.log(e);
                                            }
                                        });
                                    }
                                </script>
                                <c:forEach var="product" items="${products}">
                                    <div class="col-sm-4 col-xs-6 call-combo" data-id="24">
                                        <div class="item">
                                            <a href="javascript:void(0);"
                                               onclick="view_product_detail('${product.toString()}');">
                                                <div class="image clearfix"><img
                                                        src="/public/public_pages/uploads/product/${product.getImage()}"
                                                        class="img-responsive center-block"></div>
                                                <div class="title clearfix">
                                                    <h4>${product.getName()}</h4>
                                                </div>
                                                <div class="price clearfix">${product.getPrice()}
                                                    <small>VNĐ</small>
                                                </div>
                                                <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i>
                                                </button>
                                            </a>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="product-modal" class="fancybox-overlay fancybox-overlay-fixed"
         style="width: auto; height: auto; display: none;">
        <div class="fancybox-wrap fancybox-desktop fancybox-type-inline fancybox-opened" tabindex="-1"
             style="width: 904px; height: auto; position: absolute; top: 46px; left: 222px; opacity: 1; overflow: visible;">
            <div class="fancybox-skin" style="padding: 0px; width: auto; height: auto;">
                <div class="fancybox-outer">
                    <div class="fancybox-inner" style="overflow: auto; width: 904px; height: auto;">
                        <div id="popup-product-cart" class="popup popup-sp clearfix" style="display: block;">
                            <script type="text/javascript">
                                product.product_addmore = new Array();
                            </script>
                            <div class="popup-sp-wap clearfix"><a class="btn-close btn-close-2" id="close-product-modal"
                                                                  onclick="$.fancybox.close();"></a>
                                <div class="three-vertical top clearfix">
                                    <span></span><span></span><span></span><span></span><span></span></div>
                                <div class="container-fluid">
                                    <div class="row row-1">
                                        <div class="col-sm-5 image pd0">
                                            <img id="product-img"
                                                 src="https://kfcvietnam.com.vn/uploads/product/ee5a21ddbe890709de2cc5f2538bc899.png"
                                                 class="img-responsive">
                                            <a class="like" href="javascript:;"
                                               onclick="product.favorite(209,'product')">
                                            <span id="img-hearth">
                                                    <img src="https://kfcvietnam.com.vn//templates/images/white-hearth.png"
                                                         class="white img-responsive">
                                            </span>
                                                <span id="count_favorite">51</span>
                                            </a>
                                        </div>
                                        <div class="col-sm-7 info">
                                            <div class="title"><span
                                                    class="inline-block"
                                                    id="product-name"></span></div>
                                            <div class="option">
                                                <ul class="select-option" id="product-id">
                                                    <li>
                                                        <ul class="list-unstyled" id="product-name-child">
                                                            <li><i class="fa fa-circle"></i>
                                                            </li>
                                                        </ul>
                                                        <!--ADD MORE-->
                                                        <ul class="list-unstyled" id="list-pro-addmore"></ul>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div id="product-id-chose">
                                                <p id="0"></p>
                                            </div>
                                            <div class="quantity-price-addcart">
                                                <div class="row">
                                                    <div class="col-xs-12 col-md-12 left b-l">
                                                        <span class="sl">Số lượng:&nbsp;&nbsp;</span>
                                                        <div class="quantity-wap clearfix">
                                                            <input id="quantity" type="text" class="quantity" value="1">
                                                            <a class="btn inc button" onclick="increaseValue()">+</a><a
                                                                class="btn dec button" onclick="decreaseValue()">−</a></div>
                                                        <div class="price clearfix">
                                                            <div class="product_product_display" id="product-price">98.
                                                                <small>000</small>
                                                                <small>VNĐ</small>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-12 col-md-12 right b-r">
                                                        <button type="button" class="btn btn-add-cart pull-right"
                                                                onclick="add_to_cart();">Thêm vào giỏ hàng
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- ADD MORE-->
                                </div>
                            </div>
                            <input type="hidden" class="product_product_original_price" value="98000">
                            <input type="hidden" class="price_value" value="98000">
                            <input type="hidden" class="type" value="2">
                            <input type="hidden" class="productType" value="0">
                            <input type="hidden" class="productKhuyenmai" value="0">
                            <input type="hidden" name="product_ID" id="product_ID" value="209">
                            <script>
                                product.updateProductValue(98000);
                            </script>
                            <script>
                                jQuery(document).ready(function () {
                                    jQuery("#close-product-modal").click(function () {
                                        $('#product-modal').modal('hide');
                                    });
                                });

                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
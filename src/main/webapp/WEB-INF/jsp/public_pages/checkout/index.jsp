<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!---User login-->
<section class="sec-thuc-don sec-dktv clearfix" style="display: none;">
    <div class="container wap-sec-thuc-don b-fix">
        <div class="row">
            <div class="col-md-12">
                <ul class="btn-breadcrumb nav nav-justified">
                    <li class="active"><a>Phần ăn đã chọn</a></li>
                    <li class="active"><a>Thông tin giao hàng</a></li>
                    <li><a>Xác nhận đơn hàng</a></li>
                </ul>
            </div>
        </div>
        <div class="note-b">
            <span class="bold">CHÚ Ý:</span>
            <strong>Sau 20:00,</strong>
            KFC sẽ không thể giao hàng tận nơi ở một số khu vực. <a href="javascript:void(0)" onclick="timePayment()">Xem
            danh sách chi tiết.</a>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="box-ttdh clearfix" id="address-user">
                </div>
            </div>
            <script>
                $("#address-user div.endAddress:last").append($("#add-address").html());
            </script>
            <div class="col-md-12" style="" id="box_new_address">
                <div class="box-don-hang">
                    <div class="container-fluid">
                        <div class="row content">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="title">THÔNG TIN GIAO HÀNG</div>
                                    <div class="col-md-10 col-md-push-1">
                                        <form action="/order" method="post" accept-charset="utf-8" id="user-form-address">
                                            <input type="hidden" name="csrf_kfc_name"
                                                   value="e1eb89fe25ba264c951bbe602e553ee8"/>
                                            <div class="login-no-acc wap-dktv">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <input type="text" name="full_name" value=""
                                                                   id="full_name" class="form-control focus empty"
                                                                   minlength="4"/>
                                                            <label class="floating-label">Họ và tên:</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <input type="text" id="address" name="address"
                                                                   class="form-control focus empty"/>
                                                            <label class="floating-label">Địa chỉ (Số nhà - Tên
                                                                đường):</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group clearfix">
                                                            <select class="form-control clearfix selectpicker"
                                                                    data-container="body" data-style="btn btn-findkfc"
                                                                    name="city" id="city"
                                                                    onchange="product.check_address(true);load_district_user(this.value);"
                                                                    data-style="btn btn-location">
                                                                <c:forEach var="province" items="${provinces}">
                                                                    <option value="${province.getIdProvince()}">${province.getName()}</option>
                                                                </c:forEach>
                                                                <%--<option value="1" selected="selected">Hồ Chí Minh</option>--%>
                                                            </select>
                                                            <div class="city_error text-danger" style="display: none;">
                                                                Địa chỉ giao hàng không khớp với khu vực bạn chọn
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group clearfix">
                                                            <select id="district_id" class="form-control selectpicker"
                                                                    data-style="btn btn-findkfc" name="district"
                                                                    onchange="load_ward_user(this.value);">
                                                                <option
                                                                        value="">Quận/Huyện
                                                                </option>
                                                                <option value="10">Quận 1</option>
                                                                <option value="62">Quận 2</option>
                                                                <option value="12">Quận 3</option>
                                                                <option value="25">Quận 4</option>
                                                                <option value="13">Quận 5</option>
                                                                <option value="18">Quận 6</option>
                                                                <option value="22">Quận 7</option>
                                                                <option value="46">Quận 8</option>
                                                                <option value="15">Quận 9</option>
                                                                <option value="14">Quận 10</option>
                                                                <option value="21">Quận 11</option>
                                                                <option value="26">Quận 12</option>
                                                                <option value="24">Bình Tân</option>
                                                                <option value="19">Bình Thạnh</option>
                                                                <option value="59">Bình Chánh</option>
                                                                <option value="16">Tân Bình</option>
                                                                <option value="17">Phú Nhuận</option>
                                                                <option value="20">Gò Vấp</option>
                                                                <option value="23">Tân Phú</option>
                                                                <option value="48">Thủ Đức</option>
                                                                <option value="67">Hóc Môn</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group clearfix">
                                                            <select id="ward_id" class="form-control selectpicker"
                                                                    data-style="btn btn-findkfc" name="ward"
                                                                    onchange="load_ward_price(this.value)">
                                                                <option value="">Phường/Xã</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="pricePayment"></div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <input type="text" name="phone" id="phone" value=""
                                                                   class="form-control focus digits empty"/>
                                                            <label class="floating-label">Điện thoại:</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <input type="text" value=""
                                                                   class="form-control focus empty" minlength="4"
                                                                   name="email"/>
                                                            <label class="floating-label">Email:</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <div class="row">
                                                                <div class="col-sm-12">
                                                                    <div class="form-group" style="margin-bottom: 0;">
                                                                        <button type="submit"
                                                                                onclick="product.save_new_address($(this));"
                                                                                class="btn btn-danger btn-block btn-giao-hang">
                                                                            Giao hàng đến địa chỉ này
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
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
    </div>
</section>
<!--No login-->
<section class="sec-thuc-don sec-dktv clearfix" style="">
    <div class="container wap-sec-thuc-don b-fix">
        <div class="row">
            <div class="col-md-12">
                <ul class="btn-breadcrumb nav nav-justified">
                    <li class="active"><a>Phần ăn đã chọn</a></li>
                    <li class="active"><a>Thông tin giao hàng</a></li>
                    <li><a>Xác nhận đơn hàng</a></li>
                </ul>
            </div>
        </div>
        <div class="note-b">
            <span class="bold">CHÚ Ý:</span>
            <strong>Sau 20:00,</strong>
            KFC sẽ không thể giao hàng tận nơi ở một số khu vực. <a href="javascript:void(0)" onclick="timePayment()">Xem
            danh sách chi tiết.</a>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="box-don-hang">
                    <div id="menu-login-with" class="menu-list-thuc-don select-b clearfix">
                        <select class="selectpicker form-control">
                            <option href="#tab1" data-content='
                            <div class="content-b"> <i class="fa fa-user"></i> <i class="fa fa-square"></i>
                                <span>ĐĂNG NHẬP BẰNG TÀI KHOẢN KFC</span>
                            </div>'></option>
                            <option href="#tab2" data-content='
                            <div class="content-b"> <i class="fa fa-shopping-cart"></i> <i class="fa fa-square"></i>
                                <span>MUA HÀNG KHÔNG CẦN TÀI KHOẢN</span>
                            </div>'></option>
                        </select>
                    </div>
                    <div id="tab-wap" class="tab-content">
                        <div id="tab1" class="tab-pane fade active in">
                            <div class="box-don-hang-x">
                                <div class="container-fluid">
                                    <div class="row content">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div autocomplete="off" class="popup-login wap-dktv">
                                                        <form action="https://kfcvietnam.com.vn/vn/user/do_login.html"
                                                              method="post" accept-charset="utf-8" id="frm_login">
                                                            <div style="display:none">
                                                                <input type="hidden" name="csrf_kfc_name"
                                                                       value="e1eb89fe25ba264c951bbe602e553ee8"/>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <input type="text" value="" placeholder=""
                                                                               name="email" id="email"
                                                                               class="form-control input-lg focus empty"
                                                                               autocomplete="off"/>
                                                                        <label class="floating-label">Email </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <input type="password" value="" placeholder=""
                                                                               name="password" id="password"
                                                                               class="form-control input-lg focus empty"
                                                                               autocomplete="off"/>
                                                                        <label class="floating-label">Mật khẩu </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <div class="row">
                                                                            <div class="col-xs-6">
                                                                                <div class="chapnhan form-group">
                                                                                <span class="text-note"
                                                                                      style="color: #e4002b;">
                                                                                    <a href="https://kfcvietnam.com.vn/vn/quen-mat-khau.html"
                                                                                       class="text-danger">Quên mật khẩu ?</a></a>
                                                                                </span>
                                                                                </div>
                                                                                <div class="clearfix"></div>
                                                                                <div class="checkbox chapnhan">
                                                                                    <label>
                                                                                        <input type="checkbox"
                                                                                               value=""/>
                                                                                        <span class="cr"><i
                                                                                                class="cr-icon fa fa-check"></i></span>
                                                                                        Ghi nhớ </label>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-xs-6">
                                                                                <button onclick="login()"
                                                                                        class="btn btn-danger btn-block btn-lg btn-dk">
                                                                                    đăng nhập
                                                                                </button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <input type="hidden" name="returnurl"
                                                                   value="https://kfcvietnam.com.vn/vn/thong-tin-dat-hang.html"/>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="popup-login wap-dktv">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group form-group-lg">
                                                                            <a href="javascript:void(0)"
                                                                               onclick="loginFB('checkout')"
                                                                               class="fb btn-block">
                                                                                <div class="input-group"><span
                                                                                        class="input-group-addon"><i
                                                                                        class="fa fa-facebook"></i></span>
                                                                                    <div class="form-control">Đăng nhập
                                                                                        bằng Facebook
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <div class="form-group form-group-lg">
                                                                            <a href="javascript:void(0)"
                                                                               id="loginGoogle" class="gm btn-block">
                                                                                <div class="input-group"><span
                                                                                        class="input-group-addon"><i
                                                                                        class="fa fa-google-plus"></i></span>
                                                                                    <div class="form-control">Đăng nhập
                                                                                        bằng Google
                                                                                    </div>
                                                                                </div>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-xs-12">
                                                                        <div class="clearfix form-group text-center">
                                                                            <div class="lb-haveaccount">
                                                                                <span>Bạn chưa có tài khoản?</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-xs-8 col-xs-offset-2">
                                                                        <div class="form-group form-group-lg clearfix">
                                                                            <div class="b-btn gm btn-block center-block">
                                                                                <div class="input-group">
                                                                                    <a href="https://kfcvietnam.com.vn/vn/thanh-vien.html"
                                                                                       class="btn-dangky btn btn-danger form-control"/>Đăng
                                                                                    ký ngay</a>
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
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab2" class="tab-pane fade">
                            <div class="box-don-hang-x">
                                <div class="container-fluid">
                                    <div class="row content">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-md-10 col-md-push-1">
                                                    <form action="/order" method="post" accept-charset="utf-8" id="member-form">
                                                        <input type="hidden" name="csrf_kfc_name"
                                                               value="e1eb89fe25ba264c951bbe602e553ee8">
                                                        <div class="login-no-acc wap-dktv">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <input type="text"
                                                                               class="form-control focus empty"
                                                                               name="name" value="" required>
                                                                        <label class="floating-label">Họ và tên:</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <input type="text"
                                                                               class="form-control focus empty"
                                                                               name="address" required>
                                                                        <label class="floating-label">Địa chỉ (Số nhà -
                                                                            Tên đường):</label>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <script>
                                                                function district(value) {
                                                                    $.ajax({
                                                                        type: "POST",
                                                                        contentType: "application/json",
                                                                        url: '/checkout/ward/' + value,
                                                                        dataType: 'json',
                                                                        success: function (resp) {
                                                                            var i;
                                                                            var html = '';
                                                                            html += '<option value="0">Phường/Xã:</option>';
                                                                            for (i = 0; i < resp.length; i++) {
                                                                                html += '<option value=' + resp[i].idWard + '>' + resp[i].name + '</option>';
                                                                            }
                                                                            $('#select_ward').html(html);
                                                                        },
                                                                        error: function (e) {
                                                                            console.log("ERROR: ", e);
                                                                        }
                                                                    });
                                                                }
                                                            </script>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="form-group clearfix">
                                                                        <select required id="select_district" name="_district"
                                                                                class="form-control clearfix"
                                                                                onchange="district(this.value);">
                                                                            <option value="">Quận/Huyện:</option>
                                                                            <c:forEach var="district"
                                                                                       items="${districts}">
                                                                                <option value="${district.getIdDistrict()}">${district.getName()}</option>
                                                                            </c:forEach>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="form-group clearfix">
                                                                        <select id="select_ward" name="ward"
                                                                                class="form-control clearfix" required>
                                                                            <option value="">Phường/Xã:</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="pricePayment"></div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <input type="text"
                                                                               class="form-control focus empty"
                                                                               name="phone" min="3" max="5" required>
                                                                        <label
                                                                                class="floating-label">Điện thoại:</label>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <button onclick="buy_book()" class="btn btn-danger btn-block btn-giao-hang">
                                                                            Giao hàng đến địa chỉ này
                                                                        </button>
                                                                    </div>
                                                                </div>
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
                </div>
            </div>
        </div>
    </div>
</section>
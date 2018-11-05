<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="sec-thuc-don sec-dktv clearfix">
    <div class="container wap-sec-thuc-don">
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <form action="/register" method="post" accept-charset="utf-8" id="frm_register"><div style="display:none">
            <input type="hidden" name="csrf_kfc_name" value="db19c1f51c94f3c9204d245fb957cb20" />
        </div>    <div class="row">
            <div class="col-md-12 menu-home-title"><h1>Đăng ký thành viên</h1></div>
            <div class="col-md-12 menu-home-des">Vui lòng điền đầy đủ thông tin cá nhân bên dưới.</div>
            <div class="col-md-12">
                <div class="wap-dktv popup-login">
                    <div class="row">
                        <div class="col-md-4">
                            <label class="nhan">Họ và tên <span>(*)</span>:</label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input name="fullname" id="name" type="text" class="form-control input-lg" required/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label class="nhan">Email <span>(*)</span>:</label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input name="email" id="email" type="text" class="form-control input-lg" required/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label class="nhan">Mật khẩu <span>(*)</span>:</label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input name="password" id="password" type="password" class="form-control input-lg" required/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label class="nhan">Lặp lại mật khẩu <span>(*)</span>:</label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input name="repassword" id="repassword" type="password" class="form-control input-lg"/>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-4">
                            <label class="nhan">Điện thoại <span>(*)</span>:</label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input name="phone" id="phone" type="text" class="form-control input-lg"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label class="nhan">Địa chỉ <span>(*)</span>:</label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input name="address" id="address" type="text" class="form-control input-lg"/>
                            </div>
                        </div>
                    </div>
                    <%--<div class="row">--%>
                        <%--<div class="col-md-4">--%>
                            <%--<label class="nhan">Tỉnh/Thành phố <span>(*)</span>:</label>--%>
                        <%--</div>--%>
                        <%--<div class="col-md-8">--%>
                            <%--<div class="form-group">--%>
                                <%--<select data-container="body" onchange="loadProvince(this.value,0);" class="form-control selectpicker" data-style="btn btn-findkfc" name="province">--%>
                                    <%--<option value="0">Tỉnh/Thành phố</option>--%>
                                    <%--<c:forEach items="${listProvinces}" var="objProvince">--%>
                                        <%--<option value="${objProvince.idProvince}">${objProvince.name}</option>--%>
                                    <%--</c:forEach>--%>
                                <%--</select>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="row">--%>
                        <%--<div class="col-md-4">--%>
                            <%--<label class="nhan">Quận/Huyện <span>(*)</span>:</label>--%>
                        <%--</div>--%>
                        <%--<div class="col-md-8">--%>
                            <%--<div class="form-group">--%>
                                <%--<select data-container="body" onchange="loadDistrict(this.value,0);" class="form-control selectpicker" data-style="btn btn-findkfc" name="district" id="district_el">--%>
                                    <%--<option value="0">Quận/Huyện</option>--%>
                                <%--</select>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="row">--%>
                        <%--<div class="col-md-4">--%>
                            <%--<label class="nhan">Phường/Xã <span>(*)</span>:</label>--%>
                        <%--</div>--%>
                        <%--<div class="col-md-8">--%>
                            <%--<div class="form-group">--%>
                                <%--<select data-container="body" class="form-control selectpicker" data-style="btn btn-findkfc" name="ward">--%>
                                    <%--<option value="0">Phường/Xã</option>--%>
                                <%--</select>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <div class="row">
                        <div class="col-md-4">
                            <label class="nhan">Dịch vụ <span>(*)</span>:</label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <select data-container="body" class="form-control selectpicker" data-style="btn btn-findkfc" name="role">
                                    <option value="3">Khách hàng</option>
                                    <option value="4">Shipper</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <label class="nhan note"><span>(*)</span> Thông tin bắt buộc </label>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <button onclick="registerUser()" class="btn btn-danger btn-block btn-lg btn-dk">Đăng ký</button>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
        </form>  </div>
</section>
<%--<script>--%>
    <%--function loadProvince(id) {--%>
        <%--jQuery.ajax({--%>
            <%--url: '/load-district',--%>
            <%--type: 'POST',--%>
            <%--data: {--%>
                <%--id: id--%>
            <%--},--%>
            <%--beforeSend: function () {--%>
                <%--jQuery('#loader').fadeIn();--%>
            <%--},--%>
            <%--error: function () {--%>
                <%--jQuery('#loader').fadeOut();--%>
            <%--},--%>
            <%--success: function (resp) {--%>
                <%--$('#district_el').append(resp);--%>
                <%--alert(resp);--%>
            <%--}--%>
        <%--});--%>
    <%--}--%>
<%--</script>--%>
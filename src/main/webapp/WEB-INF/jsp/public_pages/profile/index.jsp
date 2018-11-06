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
                    <div class="list-infor-user col-md-8">
                        <div class="bg-mobile">
                            <div class="thong-tin-ca-nhan-btn title-mobile">
                                Thông tin tài khoản
                            </div>
                            <div class="infor-form">
                                <div class="left-title">THÔNG TIN TÀI KHOẢN</div>
                                <form action="/profile" method="post" accept-charset="utf-8" id="frm_update1">
                                    <div style="display:none">
                                        <input type="hidden" name="csrf_kfc_name" value="3208eb82aeb3896547f0c089a35faccd" />
                                    </div>
                                    <div class="address information">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="nhan">Họ và tên <span>(*)</span>:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="form-group">
                                                    <input name="idUser" id="idUser" type="hidden" class="form-control input-lg" value="${usersEntity.getIdUser()}" />
                                                    <input name="idRole" id="idRole" type="hidden" class="form-control input-lg" value="${usersEntity.getRole().getIdRole()}" />
                                                    <input name="fullname" id="name" type="text" class="form-control input-lg" required value="${usersEntity.getFullname()}"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="nhan">Email <span>(*)</span>:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="form-group">
                                                    <input name="email" id="email" type="text" class="form-control input-lg" required value="${usersEntity.getEmail()}"/>
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
                                                    <input name="phone" id="phone" type="text" class="form-control input-lg" value="${usersEntity.getPhone()}"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="nhan">Địa chỉ <span>(*)</span>:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="form-group">
                                                    <input name="address" id="address" type="text" class="form-control input-lg" value="${usersEntity.getAddress()}"/>
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
                                            <div class="label text-hide col-md-4 col-xs-4">&nbsp;</div>
                                            <div class="input col-md-8 col-xs-8"><button class="update-btn" onclick="update1()">Cập nhật</button></div>
                                        </div>
                                    </div>
                                    <input type="hidden" name="id" value="152301" />
                                </form>
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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<nav class="nav-header navbar navbar-default clearfix">
    <div class="container clearfix">
        <div class="navbar-top clearfix">
            <div class="navbar-top-wap">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xs-5 userbox userbox-mobile">
                            <div class="logged-desktop">
                                <a class="inline-block" tabindex="0" rel="popover-user">${pageContext.request.userPrincipal.name}</a>
                                <c:if test="${emailHeader == ''}">
                                    <a class="inline-block" onclick="callLogin();">Đăng nhập</a>
                                    <a class="inline-block" href="/register">Đăng kí</a>
                                </c:if>
                            </div>
                            <div class="logged-mobile" style="display: none">
                                <div class="say-hi">
                                    <span>Xin chào!</span><br/>
                                    <a href="/profile">
                                        <h3>${pageContext.request.userPrincipal.name}</h3>
                                    </a>
                                    <span><img src="/public/public_pages/templates/images/gift-menu-mobile.png" class="img-responsive"/>0</span>
                                </div>
                                <ul class="hi-list">
                                    <li><a href="/profile/history">Lịch sử giao dịch</a></li>
                                    <li><a href="/profile/favorite">Món ăn yêu thích</a></li>
                                    <li><a href="/logout">Đăng xuất</a></li>
                                </ul>
                            </div>
                            <div id="user-info" style="display:none;">
                                <div class="list-group">
                                    <div class="list-group-item">
                                        <div class="avartar-user img-circle pull-left">
                                            <img src="/public/public_pages/templates/images/avatar-nu.png" class="img-responsive" alt=""/>
                                        </div>
                                        <div class="username pull-left">
                                            <div class="clearfix"><span>${pageContext.request.userPrincipal.name}</span></div>
                                            <div class="clearfix">
                                                <h5>
                                                    <img src="/about" alt="" class="img-responsive"/>0
                                                </h5>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="/profile" class="list-group-item">Thông tin tài khoản</a>
                                    <a href="/profile/address" class="list-group-item">Địa chỉ giao hàng</a>
                                    <a href="/profile/history" class="list-group-item">Lịch sử giao dịch</a>
                                    <a href="/profile/favorite" class="list-group-item">Món ăn yêu thích</a>
                                    <a href="/logout" class="list-group-item">Đăng xuất</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</nav>
<nav class="nav-fix clearfix">
    <div class="container clearfix">
        <div class="navbar-header clearfix">
            <button type="button" class="btn_menu_mobile">
                <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/about">
                <img src="/public/public_pages/templates/images/logo-2.png" class="logo-img img-responsive" style="width:300px; height:100px;"/>
                <%--<img src="/public/public_pages/templates/images/logo-kfc.png" class="logo-text img-responsive"/>--%>
                <%--<img src="/public/public_pages/templates/images/logo-kfc-new.png" class="logo-text-mobile img-responsive" style="display: none"/>--%>
            </a>
            <div class="cartbox clearfix" id="cart_box" >
                <a href="/cart">
                    <i class="fa fa-shopping-cart"></i>
                    <span id="cart_number">
                        ${sessionScope.cart.getQuantityTotal()}
                    </span>
                    <span class="text-cart"> Giỏ hàng</span>
                    <i class="fa fa-caret-down"></i>
                </a>
                <div id="popup-gio-hang" class="dropdown-menu clearfix">
                    &nbsp;
                </div>
            </div>
            <a class="giao-hang inline-block">
                <img src="/public/public_pages/templates/images/logo-2.png" class="img-responsive img-desktop" style="width:210px; height:70px;"/>
            </a>
        </div>
        <div class="clearfix"></div>
        <div id="navbar" class="navbar-collapse clearfix">
            <div id="mainmenu" class="clearfix">
                <div class="owl-carousel">
                    <div class="item" id="menu_gioithieu"><a href="/about">Giới thiệu</a></div>
                    <div class="item" id="menu_thucdon"><a rel="popup-thuc-don" href="/index/${categories.get(0).getIdCategory()}">Thực đơn</a></div>
                    <div class="item" id="menu_khuyenmai"><a href="/discount">Khuyến mãi</a></div>
                    <div class="item" id="menu_nghenghiep"><a href="/recruitment">Nghề nghiệp</a></div>
                </div>
            </div>
        </div>
        <!--/.nav-collapse -->
    </div>
    <div id="popup-thuc-don" class="clearfix">
        <div class="container">
            <div id="main-thucdon">
                <a class="owlmenu-home-btn left"><i class="fa fa-angle-left"></i></a> <a class="owlmenu-home-btn right"><i class="fa fa-angle-right"></i></a>
                <div class="owl-carousel">
                    <c:forEach var="cat" items="${categories}">
                        <div class="item">
                            <a href="/index/${cat.getIdCategory()}">
                                <div class="image"><img src="/public/public_pages/uploads/images/${cat.getImage()}" class="img-responsive center-block"></div>
                                <div class="title">${cat.getName()}</div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</nav>
<section class="banner  clearfix">
    <img src="/public/public_pages/uploads/images/banner.png" class="img-responsive visible-xs visible-sm">
    <div class="fadeOut owl-carousel owl-theme">
        <div class="item" style="background-image:url(../../../../public/public_pages/uploads/images/banner.png)"><a href="/about" target="_blank" title="">&nbsp;</a></div>

    </div>
</section>
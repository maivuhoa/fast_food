<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<section class="sec-thuc-don clearfix">
    <div class="container wap-sec-thuc-don">
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="row">
            <div class="col-md-12 menu-home-title">
                <h1>Thực đơn</h1>
            </div>
            <div class="col-md-12">
                <div id="menu-list-thuc-don" class="menu-list-thuc-don clearfix">
                    <select id="selectpicker_menu" onclick="menuAjax(this.value)" class="selectpicker form-control" onchange="window.location.href=this.value;">
                        <c:forEach var="cat" items="${categories}">
                            <c:if test="${categorySelected == cat.getIdCategory()}">
                                <option myid="${cat.getIdCategory()}" value="/index/${cat.getIdCategory()}" data-content="<span class='text'><h2>${cat.getName()}</h2></span>"   class="tab_product" style="text-transform: uppercase;" selected>${cat.getName()}</option>
                            </c:if>
                            <c:if test="${categorySelected != cat.getIdCategory()}">
                                <option myid="${cat.getIdCategory()}" value="/index/${cat.getIdCategory()}" data-content="<span class='text'><h2>${cat.getName()}</h2></span>"   class="tab_product" style="text-transform: uppercase;">${cat.getName()}</option>
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
                    <div id="tab_combo" class="tab-pane fade active in ">
                        <div class="list-thuc-don-items">
                            <div class="row">
                                <c:forEach var="product" items="${products}">
                                    <div class="col-sm-4 col-xs-6 call-combo" data-id="24">
                                        <div class="item">
                                            <a href="javascript:void(0);" onclick="call_combo(24);" >
                                                <div class="image clearfix"><img src="/public/public_pages/uploads/product/${product.getImage()}" class="img-responsive center-block"></div>
                                                <div class="title clearfix">
                                                    <h4>${product.getName()}</h4>
                                                </div>
                                                <div class="price clearfix">${product.getPrice()} <small>VNĐ</small></div>
                                                <button type="button" class="btn btn-detail"><i class="fa fa-plus"></i></button>
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
</section>
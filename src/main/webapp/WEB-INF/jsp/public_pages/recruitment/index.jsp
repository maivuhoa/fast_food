<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="nghe-nghiep-main clearfix" id="kfc_static_page_load" >
    <div class="content nghe-nghiep">
        <div class="container wap-sec-nghe-nghiep">
            <div class="three-vertical top b-three-dot clearfix"><span></span><span></span><span></span><span></span><span></span></div>
            <div class="title"><h1>Tuyển Dụng</h1></div>
        </div>
        <section class="nghe-nghiep-block clearfix">
            <div id="tab-wap" class="tab-content">
                <div id="nghe-nghiep" class="tab-pane fade active in">
                    <div class="container">
                        <div class="wap-sec-nghe-nghiep-block">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="content-block">
                                        <div class="top-content">
                                            <div class="row">
                                                <div class="l-image col-md-5"><img src="https://kfcvietnam.com.vn/templates/images/nghenghiep-4.png" class="img-responsive"></div>
                                                <div class="r-text col-md-7">HÃY CÙNG CHÚNG TÔI MANG SỰ HÀI LÒNG VÀ VỊ NGON CỦA 3CE'S Food ĐẾN TẤT CẢ MỌI NGƯỜI Ở KHẮP MỌI MIỀN ĐẤT VIỆT!</div>
                                            </div>
                                        </div>
                                        <div class="mid-content">
                                            <div class="mid-title">Tin tuyển dụng</div>
                                            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                                <c:forEach var="postRestaurant" items="${postsRestaurant}">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading" role="tab" id="headingOne">
                                                            <h4 class="panel-title">
                                                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse-${postRestaurant.getIdPost()}" aria-expanded="false" aria-controls="collapseOne">
                                                                        ${postRestaurant.getName()}</a>
                                                            </h4>
                                                        </div>
                                                        <div id="collapse-${postRestaurant.getIdPost()}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                                            <div class="panel-body">
                                                                    ${postRestaurant.getContent()}
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <div class="bottom-content">
                                            <div class="row">
                                                <div class="b-left col-md-12 col-sm-12 col-xs-12">
                                                    <div class="l-title b-title">THÔNG TIN LIÊN HỆ</div>
                                                    <div class="b-contact">
                                                        <div class="phone">
                                                            <i class="fa fa-phone" aria-hidden="true"></i>
                                                            <span>Điện thoại</span><p>:&nbsp;${shopEntity.getPhone()}</p>
                                                        </div>
                                                        <div class="email">
                                                            <i class="fa fa-envelope-o" aria-hidden="true"></i>
                                                            <span>Email:</span><p>&nbsp;${shopEntity.getEmail()}</p>
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
    </div>
</section>

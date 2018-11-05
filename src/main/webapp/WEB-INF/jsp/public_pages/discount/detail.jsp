<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<section class="khuyen-mai-main clearfix">
    <div class="content khuyen-mai">
        <div class="container wap-sec-khuyen-mai">
            <div class="three-vertical top b-three-dot clearfix"><span></span><span></span><span></span><span></span><span></span></div>
            <div class="title">Khuyến mãi</div>
        </div>
        <section class="khuyen-mai clearfix">
            <div id="khuyen-mai" class="khuyen-mai-content">
                <div class="container">
                    <div class="wap-sec-khuyen-mai-block">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="">
                                    <div class="item-information">
                                        <div class="infor">
                                            <p class="title-item">${postEntity.getName()}</p>
                                            <div class="text-des"><p>${postEntity.getContent()}</p>
                                                <p>${postEntity.getContent()}</p>
                                                <div class="buton-item clearfix">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="list-khuyen-mai-items">
                                            <div class="row">
                                                <c:forEach items="${postEntityNewest}" var="post">
                                                    <div class="col-md-6 block-items">
                                                        <div class="item">
                                                            <div class="clearfix image-item">
                                                                <a href="/discount/${post.getIdPost()}" class="clearfix image-item"><img src="/public/public_pages/uploads/post/${post.getImage()}" class="img-responsive center-block"></a>
                                                            </div>
                                                            <div class="infor">
                                                                <h4><p class="title-item"><a href="/discount/${post.getIdPost()}" class="title-item">${post.getName()}</a></p></h4>

                                                                <p class="text-item">${post.getDescription()}</p>

                                                                <div class="buton-item clearfix">
                                                                    <div class="rm-btn">
                                                                        <a href="/discount/${post.getIdPost()}">Xem thêm</a>
                                                                    </div>
                                                                    <div class="like-share">
                                                                        <button data-toggle="dropdown" href="#" title="Chia sẻ" class="share"><i
                                                                                class="fa fa-share-alt"></i>Chia sẻ</button>
                                                                        <div class="divShare dropdown-menu">
                                                                            <ul>
                                                                                <li><a href="https://www.facebook.com/3CES-Food-1965407583575144/?modal=admin_todo_tour" title="Face" target="_blank"><!--img src="https://www.kfcvietnam.com.vn/templates/images/share_face.png" alt="Face" width="14" height="14" class="img_shares"--> Facebook</a></li>
                                                                                <li><a href="#" title="Google +" target="_blank"><!--img src="https://www.kfcvietnam.com.vn/templates/images/share_gg.png" alt="Google +" width="14" height="14" class="img_shares"--> Google +</a></li>
                                                                                <li><a href="#" title="Zing" target="_blank"><!--img src="https://www.kfcvietnam.com.vn/templates/images/share_zing.png" alt="Zing" width="14" height="14" class="img_shares"--> ZingMe</a></li>
                                                                                <li><a href="#" title="Twitter" target="_blank"><!--img src="https://www.kfcvietnam.com.vn/templates/images/share_twitter.png" alt="Twitter" width="14" height="14" class="img_shares"--> Twitter</a></li>

                                                                            </ul>
                                                                        </div>
                                                                        <a onclick="update_like(73);" href="javascript:;" class="like"><i class="fa fa-heart"></i><span id="count_like_73">130</span></a>
                                                                    </div>
                                                                </div>
                                                            </div>
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
                </div>
    </div>
</section>
    </div>
</section>
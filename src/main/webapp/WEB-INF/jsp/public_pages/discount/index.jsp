<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<section class="khuyen-mai-main clearfix">
    <div class="content khuyen-mai">
        <div class="container wap-sec-khuyen-mai">
            <div class="three-vertical top b-three-dot clearfix">
                <span></span><span></span><span></span><span></span><span></span></div>
            <div class="title"><h1>Khuyến mãi</h1></div>
        </div>
        <section class="khuyen-mai clearfix">
            <div id="khuyen-mai" class="khuyen-mai-content">
                <div class="container">
                    <div class="wap-sec-khuyen-mai-block">
                        <jsp:useBean id="pagedListHolder" scope="request"
                                     type="org.springframework.beans.support.PagedListHolder"/>
                        <c:url value="/discount" var="pagedLink">
                            <c:param name="page" value="~"/>
                        </c:url>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="">
                                    <div class="list-khuyen-mai-items">
                                        <div class="row">
                                            <c:forEach var="post" items="${pagedListHolder.pageList}">
                                                <div class="col-md-6 block-items">
                                                    <div class="item">
                                                        <div class="clearfix image-item">
                                                            <a href="/discount/${post.getIdPost()}"
                                                               class="clearfix image-item"><img
                                                                    src="/public/public_pages/uploads/post/${post.getImage()}"
                                                                    class="img-responsive center-block"></a>
                                                        </div>
                                                        <div class="infor">
                                                            <h4><p class="title-item"><a
                                                                    href="/discount/${post.getIdPost()}"
                                                                    class="title-item">${post.getName()}</a></p></h4>

                                                            <p class="text-item">${post.getDescription()}</p>

                                                            <div class="buton-item clearfix">
                                                                <div class="rm-btn">
                                                                    <a href="/discount/${post.getIdPost()}">Xem
                                                                        thêm</a>
                                                                </div>
                                                                <div class="like-share">
                                                                    <button data-toggle="dropdown" href="#"
                                                                            title="Chia sẻ" class="share"><i
                                                                            class="fa fa-share-alt"></i>Chia sẻ
                                                                    </button>
                                                                    <div class="divShare dropdown-menu">
                                                                        <ul>
                                                                            <li>
                                                                                <a href="https://www.facebook.com/sharer/sharer.php?u=/vn/khuyen-mai/73/thu-hai-co-1-khong-2-cung-kfc.html"
                                                                                   title="Face" target="_blank">
                                                                                    <!--img src="https://www.kfcvietnam.com.vn/templates/images/share_face.png" alt="Face" width="14" height="14" class="img_shares"-->
                                                                                    Facebook</a></li>
                                                                            <li>
                                                                                <a href="https://plus.google.com/share?url=/vn/khuyen-mai/73/thu-hai-co-1-khong-2-cung-kfc.html"
                                                                                   title="Google +" target="_blank">
                                                                                    <!--img src="https://www.kfcvietnam.com.vn/templates/images/share_gg.png" alt="Google +" width="14" height="14" class="img_shares"-->
                                                                                    Google +</a></li>
                                                                            <li>
                                                                                <a href="http://link.apps.zing.vn/share?u=/vn/khuyen-mai/73/thu-hai-co-1-khong-2-cung-kfc.html"
                                                                                   title="Zing" target="_blank">
                                                                                    <!--img src="https://www.kfcvietnam.com.vn/templates/images/share_zing.png" alt="Zing" width="14" height="14" class="img_shares"-->
                                                                                    ZingMe</a></li>
                                                                            <li>
                                                                                <a href="http://twitthis.com/twit?url=/vn/khuyen-mai/73/thu-hai-co-1-khong-2-cung-kfc.html"
                                                                                   title="Twitter" target="_blank">
                                                                                    <!--img src="https://www.kfcvietnam.com.vn/templates/images/share_twitter.png" alt="Twitter" width="14" height="14" class="img_shares"-->
                                                                                    Twitter</a></li>
                                                                        </ul>
                                                                    </div>
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
                    <div class="pager">
                        <%--<ul class="pagination">--%>
                        <%--<ul class="pagination"><li><a class="page-number active" href="0">1</a></li><li><a class="page-number" href="/vn/khuyenmai/page/6">2</a></li><li><a class="page-number" href="/vn/khuyenmai/page/6"><span class="next">&gt;</span></a></li></ul></ul>--%>
                        <tg:paging pagedListHolder="${pagedListHolder}"
                                   pagedLink="${pagedLink}"/>
                    </div>

                </div>
            </div>
        </section>
    </div>
</section>
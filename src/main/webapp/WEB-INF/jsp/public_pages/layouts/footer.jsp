<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<footer class="clearfix">
    <div class="social-submit-mail clearfix">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-5">
                    <div class="social">
                        <ul class="nav nav-pills">
                            <li><a href="https://www.facebook.com/KFCVietnam/" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://www.youtube.com/user/KFCVietnam2011" target="_blank"><i class="fa fa-youtube"></i></a></li>
                            <li><a href="javascript:void(0)" target="_blank"><i class="fa fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-8 col-sm-7">
                    <div class="submit-mail">
                        <form action="https://kfcvietnam.com.vn/vn/do_dk_email.html" method="post" accept-charset="utf-8" id="dk_news_email" class="inline">
                            <div style="display:none">
                                <input type="hidden" name="csrf_kfc_name" value="7eaa990dabe717e0974c9189bd8704e4" />
                            </div>
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="submit-mail-title">Đăng ký nhận thông tin</div>
                                </div>
                                <div class="col-md-7">
                                    <div class="input-group input-group-lg form-group">
                                        <input type="text" id="news_email" name="news_email" class="form-control focus empty" value="" />
                                        <label class="floating-label">Nhập email</label>
                                        <span class="input-group-btn">
                                                <button class="btn btn-danger" type="submit" onclick="news_letter();">Đăng ký</button>
                                                </span>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <img src="/public/public_pages/templates/images/footer-bo.png" class="imgbo img-responsive center-block">
        </div>
    </div>
    <div class="footer-content clearfix">
        <div class="container">
            <div class="footer-menu clearfix">
                <ul class="nav nav-pills">
                    <li>
                        <a href="https://kfcvietnam.com.vn/vn/dat-tiec-sinh-nhat.html">
                            <h4><i class="fa fa-birthday-cake" aria-hidden="true"></i><span>ĐẶT TIỆC SINH NHẬT</span></h4>
                        </a>
                    </li>
                    <li>
                        <a href="https://kfcvietnam.com.vn/vn/chinh-sach-va-quy-dinh-chung.html">
                            <h4>Chính sách và quy định chung</h4>
                        </a>
                    </li>
                    <li>
                        <a href="https://kfcvietnam.com.vn/vn/chinh-sach-hoat-dong.html">
                            <h4>Chính sách hoạt động</h4>
                        </a>
                    </li>
                    <li>
                        <a href="https://kfcvietnam.com.vn/vn/chinh-sach-bao-mat.html">
                            <h4>Chính sách bảo mật thông tin</h4>
                        </a>
                    </li>
                    <li>
                        <a href="https://kfcvietnam.com.vn/vn/lien-he.html">
                            <h4>Liên hệ</h4>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="footer-info clearfix">
                <div class="company clearfix">CÔNG TY LIÊN DOANH TNHH KFC VIỆT NAM</div>
                <div class="row">
                    <div class="col-xs-12 col-md-9">
                        <div class="clearfix"><span class="inline-block">Số 292 Bà Triệu, P.Lê Đại Hành, Q.Hai Bà Trưng, Hà Nội.</span><br><span class="inline-block">Điện thoại: (028) 38489828</span><span class="break"> | </span><span class="inline-block">Email: lienhe@kfcvietnam.com.vn</span> <br/>
                            <span class="inline-block">Mã số thuế: 0100773885</span> <span class="break"> | </span><span class="inline-block">Ngày cấp: 29/10/1998</span> - <span class="inline-block">Nơi cấp: Cục Thuế Thành Phố Hà Nội</span>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-3">
                        <div class="copyright"><a href="http://www.online.gov.vn/CustomWebsiteDisplay.aspx?DocId=8556" target="_blank"><img class="logoOnline" src="https://kfcvietnam.com.vn/templates/images/logoOnline.png" alt=""></a></div>
                    </div>
                </div>
                <div class="copyright clearfix">Copyright © 2017 KFC Việt Nam</div>
            </div>
        </div>
    </div>
</footer>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="vn">
<head>
    <tiles:insertAttribute name="meta_description"></tiles:insertAttribute>
    <link href="/public/public_pages/templates/css/style.css?v=1.2.5" rel="stylesheet"/>
    <link href="/public/public_pages/templates/css/main.css?v=1.2.5" rel="stylesheet"/>
    <link type="text/css" rel="stylesheet" href="/public/public_pages/templates/js/jscrollpane/jquery.jscrollpane.css"/>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="/public/public_pages/templates/js/jquery.min.js"></script>
    <script src="/public/public_pages/templates/js/modernizr.js"></script>
    <script src="/public/public_pages/templates/js/jquery.browser.js"></script>
    <script src="/public/public_pages/templates/js/smoothscroll.js"></script>
    <script src="/public/public_pages/templates/js/bootstrap.min.js"></script>
    <script src="/public/public_pages/templates/js/bootstrap-select.min.js"></script>
    <script src="/public/public_pages/templates/fancybox/jquery.fancybox.min.js"></script>
    <script src="/public/public_pages/templates/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="/public/public_pages/templates/owlcarousel/owl.carousel.min.js"></script>
    <script src="/public/public_pages/templates/js/equalheight.js"></script>
    <!--Coding add-->
    <script src="/public/public_pages/templates/js/jquery.validate.min.js"></script>
    <script src="/public/public_pages/templates/js/jquery.validate.bootstrap.popover.min.js"></script>
    <script type="text/javascript" src="/public/public_pages/templates/js/jscrollpane/jquery.jscrollpane.min.js"></script>
    <!--DateTimePicker Jquery-->
    <link rel="stylesheet" type="text/css" href="/public/public_pages/templates/datetimepicker/jquery.datetimepicker.css"/>
    <script src="/public/public_pages/templates/datetimepicker/jquery.datetimepicker.full.js"></script>

</head>
<body>
<div id="loader" style="display: none;"></div>
<tiles:insertAttribute name="header"></tiles:insertAttribute>
<tiles:insertAttribute name="content"></tiles:insertAttribute>

<tiles:insertAttribute name="footer"></tiles:insertAttribute>


<script src="/public/public_pages/templates/js/message/vn/message.js?v=1.2.5"></script>
<script src="/public/public_pages/templates/js/script.js?v=1.2.5"></script>
<script src="/public/public_pages/templates/js/init.js?v=1.2.5"></script>
<script src="/public/public_pages/templates/js/nhahang.js?v=1.2.5"></script>
<div id="popup-login" class="popup popup-login clearfix" style="display:none;">
    <div class="popup-wap clearfix">
        <a class="btn-close" onclick="$.fancybox.close();"></a>
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="three-vertical bottom clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="container-fluid">
            <div class="form-group text-center">
                <div class="avatar-login inline-block"><img src="/public/public_pages/templates/images/avatar.png" class="avatar img-responsive"></div>
                <div class="title-login inline-block">
                    <div class="popup-head clearfix">Đăng nhập</div>
                </div>
            </div>
            <form action="login" method="post" accept-charset="utf-8" id="frm_loginTop" autocomplete="off">
                <div style="display:none">
                    <input type="hidden" name="csrf_kfc_name" value="7eaa990dabe717e0974c9189bd8704e4" />
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="form-group form-material floating">
                            <input type="text" value="" name="email" id="emailLoginTop" class="form-control focus empty" placeholder="" />
                            <label class="floating-label">Email</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="form-group">
                            <input type="password" value="" name="password" id="passLoginTop" class="form-control focus empty" placeholder="" />
                            <label class="floating-label">Mật khẩu</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-6">
                        <div class="form-group form-group-lg">
                            <div class="b-btn gm btn-block">
                                <div class="input-group">
                                    <input class="form-control btn btn-danger" type="submit" name="submitTop"value="Đăng nhập" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <div class="row">

                <div class="col-xs-12">
                    <div class="clearfix form-group text-center">
                        <div class="lb-haveaccount"><span>Bạn chưa có tài khoản?</span></div>
                    </div>
                </div>
                <div class="col-xs-8 col-xs-offset-2">
                    <div class="form-group form-group-lg">
                        <div class="b-btn gm btn-block center-block">
                            <div class="input-group">
                                <a href="/register" class="btn-dangky btn btn-danger form-control">Đăng ký ngay</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function sendLoginTop(){
            $('#submitTop').click();
        }
    </script>
</div>
<a class="scroll-top"></a>
</body>
</html>
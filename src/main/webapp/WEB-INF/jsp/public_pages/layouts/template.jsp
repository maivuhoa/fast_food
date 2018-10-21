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
    <script src="/public/public_pages/templates/js/product/product.js?v=1.2.5"></script>
    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
            new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-TK9BHZ');
    </script>
    <!-- End Google Tag Manager -->
</head>
<body>
<script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-43944041-1']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-43944041-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'UA-43944041-1');
</script>

<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-43944041-1', 'auto');
    ga('send', 'pageview');
    ga('require', 'ecommerce');
</script>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TK9BHZ"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div id="loader" style="display: none;"></div>
<tiles:insertAttribute name="header"></tiles:insertAttribute>
<tiles:insertAttribute name="content"></tiles:insertAttribute>
<section class="fanpage-find-kfc clearfix">
    <div class="container">
        <div class="row">
            <div class="col-md-7 fanpage hidden-sm hidden-xs">
                <div class="fb-page" data-href="https://www.facebook.com/KFCVietnam/" data-tabs="timeline" data-width="500" data-height="300" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="false">
                    <div class="fb-xfbml-parse-ignore">
                        <blockquote cite="https://www.facebook.com/KFCVietnam/"><a href="https://www.facebook.com/KFCVietnam/">KFC</a></blockquote>
                    </div>
                </div>
                <!--img src="/public/public_pages/templates/images/fanpage.png" class="img-responsive"-->
            </div>
            <div class="col-md-5 find-kfc">
                <div class="row">
                    <div class="col-md-4 col-sm-3 col-xs-3 mobile-block-left"><img src="/public/public_pages/templates/images/find-kfc-icon.png" class="img-responsive center-block"></div>
                    <div class="col-md-8 col-sm-9 col-xs-9 mobile-block-right">
                        <div class="find-kfc-title"><span class="text-center inline-block">TÌM NHÀ HÀNG GẦN NHẤT</span></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <select class="form-control selectpicker" data-container="body" onchange="load_store_search(this.value);" data-style="btn btn-findkfc" title="Tỉnh/Thành phố">
                            <option data-name="ho-chi-minh" value="1">Hồ Chí Minh</option>
                            <option data-name="ha-noi" value="2">Hà Nội</option>
                            <option data-name="hai-duong" value="55">Hải Dương</option>
                            <option data-name="hai-phong" value="3">Hải Phòng</option>
                            <option data-name="quang-ninh" value="66">Quảng Ninh</option>
                            <option data-name="nghe-an" value="28">Nghệ An</option>
                            <option data-name="hue" value="5">Huế</option>
                            <option data-name="da-nang" value="4"selected="selected">Đà Nẵng</option>
                            <option data-name="binh-dinh" value="52">Bình Định</option>
                            <option data-name="khanh-hoa" value="50">Khánh Hòa</option>
                            <option data-name="binh-thuan" value="53">Bình Thuận</option>
                            <option data-name="dak-lak" value="6">Đắk Lắk</option>
                            <option data-name="binh-duong" value="7">Bình Dương</option>
                            <option data-name="dong-nai" value="8">Đồng Nai</option>
                            <option data-name="vung-tau" value="9">Vũng Tàu</option>
                            <option data-name="an-giang" value="51">An Giang</option>
                            <option data-name="can-tho" value="11">Cần Thơ</option>
                            <option data-name="kien-giang" value="54">Kiên Giang</option>
                            <option data-name="thanh-hoa" value="954">Thanh Hóa</option>
                            <option data-name="ben-tre" value="1069">Bến Tre</option>
                            <option data-name="nam-dinh" value="1072">Nam Định</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--script type="text/javascript" src="/public/public_pages/templates/js/product_list.js"></script-->
<!-- product details -->
<div id="popup-product-cart" class="popup popup-sp clearfix" style="display:none;">&nbsp;</div>
<script>
    $(document).ready(function(){

        $('#menu_thucdon').addClass('active');
        $("#selectpicker_menu" ).change(function() {
            var element = $("option:selected", this);
            var alias = $("#selectpicker_menu").val();
            var id_menu = element.attr('myid');
            var menu_alias = 'thuc-don';
            ChangeUrl('page',base_url_lang+ menu_alias+'/'+id_menu +'/'+alias+'.html');
            //Change meta
            $.ajax({
                url:base_url_lang+'product/menuAjax',
                type:'POST',
                dataType:'html',
                data:{
                    id:id_menu,'csrf_kfc_name':token_value
                },
                beforeSend:function(){
                    jQuery("#loader").fadeIn();
                },
                error:function(){
                    jQuery("#loader").fadeOut();
                },
                success:function(data){
                    jQuery("#loader").fadeOut();
                    jQuery("#tab-wap").html(data);
                }
            });
        });
    });
</script>
<tiles:insertAttribute name="footer"></tiles:insertAttribute>

<div id="fb-root"></div>
<script>
    function sendLoginFB(response){
        //console.log(response);
        $.fancybox.close();
        $('#loader').show();
        $.ajax({
            type: "POST",
            url: "",
            data: {'response':response,'csrf_kfc_name':'7eaa990dabe717e0974c9189bd8704e4'},
            dataType: 'json',
            success: function(data){
                $('#loader').fadeOut();
                if(data.status == true){
                    if(data.noemail == true){
                        call_Popup('#popup-update-email');
                    }else{
                        if(data.otp){
                            $('#emailOTP').html(data.email);
                            $('#emailOTP1').html(data.email);
                            $('.account-Login').html('Facebook');
                            call_Popup('#popup-lienket');
                            $("#codeOTP").focus();
                        }else{
                            location.reload();
                        }
                    }
                }else{
                    //window.location.href = '/public/public_pages/';
                    $('#content-thongbao').html(data.mess);
                    call_Popup('#popup-thongbao');
                }
            }
        });
    }
    window.fbAsyncInit = function() {
        FB.init({
            appId      : '1111440968909051',
            cookie     : true,  // enable cookies to allow the server to access
            xfbml      : true,
            version    : 'v2.6'
        });
        //Option Canvas FB
        //FB.Canvas.setSize({ height: heightSite });
    };
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "https://connect.facebook.net/vi_VN/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    function loginFB(){
        FB.login(function(response) {
            if (response.authResponse) {
                FB.api('/me', {fields: 'email, name, gender'},function(response){
                    //console.log(response);
                    sendLoginFB(response);
                    //$("#status").html(JSON.stringify(response));
                });
            }
        },{scope: 'publish_actions,email', return_scopes: true});
    }
    function logoutFB(){
        FB.logout(function(response) {
            // user is now logged out
        });
    }
</script>
<!--Login GG--->
<script src="https://apis.google.com/js/api:client.js"></script>
<script>
    var googleUser = {};
    var startApp = function(){
        gapi.load('auth2', function(){
            // Retrieve the singleton for the GoogleAuth library and set up the client.
            auth2 = gapi.auth2.init({
                client_id: '1041619842087-ae224hem3rjg8hqcehm4ftio4l29bihk.apps.googleusercontent.com',
                cookiepolicy: 'single_host_origin',
                // Request scopes in addition to 'profile' and 'email'
                //scope: 'additional_scope'
            });
            attachSignin(document.getElementById('loginGoogleTop'));
            attachSignin(document.getElementById('loginGoogle'));
        });
    };
    function attachSignin(element){
        auth2.attachClickHandler(element, {},
            function(googleUser) {
                var name = googleUser.getBasicProfile().getName();
                var email = googleUser.getBasicProfile().getEmail();
                var id = googleUser.getBasicProfile().getId();
                var img = googleUser.getBasicProfile().getImageUrl();
                $.fancybox.close();
                $('#loader').show();
                $.ajax({
                    type: "POST",
                    url: "",
                    data: {'name':name,'email':email,'img':img,'id':id,'csrf_kfc_name':'7eaa990dabe717e0974c9189bd8704e4'},
                    dataType: 'json',
                    success: function(data){
                        $('#loader').fadeOut();
                        if(data.status == true){
                            if(data.noemail){
                                call_Popup('#popup-update-email');
                            }else{
                                if(data.otp){
                                    $('#emailOTP').html(data.email);
                                    $('#emailOTP1').html(data.email);
                                    $('.account-Login').html('Google');
                                    call_Popup('#popup-lienket');
                                    $("#codeOTP").focus();
                                }else{
                                    location.reload();
                                }
                            }
                            //window.location.href = '/public/public_pages/vn/user/update.html';
                        }else{
                            $('#content-thongbao').html(data.mess);
                            call_Popup('#popup-thongbao');
                        }
                    }
                });
            },function(error){
                //Error when create button login google
                //alert(JSON.stringify(error, undefined, 2));
            }
        );
    }
</script>
<script>startApp();</script>
<script>
    $(document).ready(function() {
        $('#my-file-selector').on('change', function () {
            var form = $('#frm_apply_cv')[0];
            var formData = new FormData(form);
            $('#loader').show();
            $.ajax({
                type: "POST",
                url: base_url_lang + 'home/uploadCareer',
                data: formData,
                dataType: 'json',
                mimeType: "multipart/form-data",
                contentType: false,
                cache: false,
                processData: false,
                success: function (data) {
                    $('#loader').hide();
                    if (data.status) {
                        $('#nameFile').html(data.mess);
                    } else {
                        $('#nameFile').html('');
                        $('#content-thongbao').html(data.mess);
                        call_Popup('#popup-thongbao');
                    }
                }
            });
            return false;
        });
    })
</script>

<!-- Google-->
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
            <form action="https://kfcvietnam.com.vn/vn/user/do_login_ajax.html" method="post" accept-charset="utf-8" id="frm_loginTop" autocomplete="off">
                <div style="display:none">
                    <input type="hidden" name="csrf_kfc_name" value="7eaa990dabe717e0974c9189bd8704e4" />
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="form-group form-material floating">
                            <input type="text" value="" name="emailLoginTop" id="emailLoginTop" class="form-control focus empty" placeholder="" />
                            <label class="floating-label">Email</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="form-group">
                            <input type="password" value="" name="passLoginTop" id="passLoginTop" class="form-control focus empty" placeholder="" />
                            <label class="floating-label">Mật khẩu</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-6">
                        <div class="clearfix"><a href="https://kfcvietnam.com.vn/vn/quen-mat-khau.html" class="text-danger">Quên mật khẩu ?</a></div>
                        <div class="clearfix">
                            <div class="checkbox chapnhan">
                                <label>
                                    <input type="checkbox" value="">
                                    <span class="cr"><i class="cr-icon fa fa-check"></i></span> Ghi nhớ</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group form-group-lg">
                            <div class="b-btn gm btn-block">
                                <div class="input-group">
                                    <input class="form-control btn btn-danger" type="submit" onclick="loginTop()" name="submitTop"value="Đăng nhập" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group form-group-lg">
                        <a href="javascript:void(0)" onclick="loginFB()" class="fb btn-block">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-facebook"></i></span>
                                <div class="form-control">Đăng nhập bằng Facebook</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-xs-12">
                    <div class="form-group form-group-lg">
                        <a href="javascript:void(0)" id="loginGoogleTop" class="gm btn-block">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa fa-google-plus"></i></span>
                                <div class="form-control">Đăng nhập bằng Google</div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-xs-12">
                    <div class="clearfix form-group text-center">
                        <div class="lb-haveaccount"><span>Bạn chưa có tài khoản?</span></div>
                    </div>
                </div>
                <div class="col-xs-8 col-xs-offset-2">
                    <div class="form-group form-group-lg">
                        <div class="b-btn gm btn-block center-block">
                            <div class="input-group">
                                <a href="https://kfcvietnam.com.vn/vn/thanh-vien.html" class="btn-dangky btn btn-danger form-control">Đăng ký ngay</a>
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
<div id="popup-location" class="popup clearfix" style="display:none;">
    <div class="popup-location clearfix">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-4 pd0 left"><img src="/public/public_pages/templates/images/img-location.png" class="img-responsive"></div>
                <div class="col-xs-8 right">
                    <div class="row">
                        <div class="col-xs-4"><img src="/public/public_pages/templates/images/find-kfc-icon.png" class="img-responsive center-block"></div>
                        <div class="col-xs-8 pd0">
                            <div class="select-location-title">VUI LÒNG <span class="inline-block text-chon-kv">CHỌN KHU VỰC </span> <span class="inline-block clearfix">QUÝ KHÁCH MUỐN ĐẶT HÀNG</span></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-8 col-xs-8 clearfix">
                            <select class="form-control selectpicker" data-container="body" id="location_pick" data-style="btn btn-findkfc" title="Tỉnh/Thành phố">
                                <option data-name="ho-chi-minh" value="1">Hồ Chí Minh</option>
                                <option data-name="ha-noi" value="2">Hà Nội</option>
                                <option data-name="hai-duong" value="55">Hải Dương</option>
                                <option data-name="hai-phong" value="3">Hải Phòng</option>
                                <option data-name="quang-ninh" value="66">Quảng Ninh</option>
                                <option data-name="nghe-an" value="28">Nghệ An</option>
                                <option data-name="hue" value="5">Huế</option>
                                <option data-name="da-nang" value="4"selected="selected">Đà Nẵng</option>
                                <option data-name="binh-dinh" value="52">Bình Định</option>
                                <option data-name="khanh-hoa" value="50">Khánh Hòa</option>
                                <option data-name="binh-thuan" value="53">Bình Thuận</option>
                                <option data-name="dak-lak" value="6">Đắk Lắk</option>
                                <option data-name="binh-duong" value="7">Bình Dương</option>
                                <option data-name="dong-nai" value="8">Đồng Nai</option>
                                <option data-name="vung-tau" value="9">Vũng Tàu</option>
                                <option data-name="an-giang" value="51">An Giang</option>
                                <option data-name="can-tho" value="11">Cần Thơ</option>
                                <option data-name="kien-giang" value="54">Kiên Giang</option>
                                <option data-name="thanh-hoa" value="954">Thanh Hóa</option>
                                <option data-name="ben-tre" value="1069">Bến Tre</option>
                                <option data-name="nam-dinh" value="1072">Nam Định</option>
                            </select>
                        </div>
                        <div class="col-sm-4 col-xs-4 clearfix"><button class="btn btn-danger btn-block" onclick="product.choose_location(jQuery('#location_pick').find('option:selected').val(),false)">TIẾP TỤC</button></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="popup-location-user" class="popup clearfix" style="display:none;">
    <div class="popup-location clearfix">
        <a class="btn-close btn-close-2" onClick="$.fancybox.close();"></a>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-4 pd0 left"><img src="/public/public_pages/templates/images/img-location.png" class="img-responsive"></div>
                <div class="col-xs-8 right">
                    <div class="row">
                        <div class="col-xs-4"><img src="/public/public_pages/templates/images/find-kfc-icon.png" class="img-responsive center-block"></div>
                        <div class="col-xs-8 pd0">
                            <div class="select-location-title">VUI LÒNG <span class="inline-block text-chon-kv">CHỌN KHU VỰC </span> <span class="inline-block clearfix">QUÝ KHÁCH MUỐN ĐẶT HÀNG</span></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-8 col-xs-8 clearfix">
                            <select class="form-control selectpicker" data-container="body" id="location_pick_user" data-style="btn btn-findkfc" title="Tỉnh/Thành phố">
                                <option data-name="ho-chi-minh" value="1">Hồ Chí Minh</option>
                                <option data-name="ha-noi" value="2">Hà Nội</option>
                                <option data-name="hai-duong" value="55">Hải Dương</option>
                                <option data-name="hai-phong" value="3">Hải Phòng</option>
                                <option data-name="quang-ninh" value="66">Quảng Ninh</option>
                                <option data-name="nghe-an" value="28">Nghệ An</option>
                                <option data-name="hue" value="5">Huế</option>
                                <option data-name="da-nang" value="4"selected="selected">Đà Nẵng</option>
                                <option data-name="binh-dinh" value="52">Bình Định</option>
                                <option data-name="khanh-hoa" value="50">Khánh Hòa</option>
                                <option data-name="binh-thuan" value="53">Bình Thuận</option>
                                <option data-name="dak-lak" value="6">Đắk Lắk</option>
                                <option data-name="binh-duong" value="7">Bình Dương</option>
                                <option data-name="dong-nai" value="8">Đồng Nai</option>
                                <option data-name="vung-tau" value="9">Vũng Tàu</option>
                                <option data-name="an-giang" value="51">An Giang</option>
                                <option data-name="can-tho" value="11">Cần Thơ</option>
                                <option data-name="kien-giang" value="54">Kiên Giang</option>
                                <option data-name="thanh-hoa" value="954">Thanh Hóa</option>
                                <option data-name="ben-tre" value="1069">Bến Tre</option>
                                <option data-name="nam-dinh" value="1072">Nam Định</option>
                            </select>
                        </div>
                        <div class="col-sm-4 col-xs-4 clearfix"><button class="btn btn-danger btn-block" onclick="product.choose_location(jQuery('#location_pick_user').find('option:selected').val(),false)">TIẾP TỤC</button></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="popup-thongbao" class="popup popup-login clearfix" style="display:none;">
    <div class="popup-wap clearfix">
        <a class="btn-close" onclick="$.fancybox.close();"></a>
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="three-vertical bottom clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <div class="popup-head text-center">Thông báo!</div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group" id="content-thongbao">&nbsp;</div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="popup-thongbao-khuyenmai" class="popup popup-login clearfix" style="display:none;">
    <div class="popup-wap clearfix">
        <a class="btn-close" onclick="$.fancybox.close();"></a>
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="three-vertical bottom clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <div class="popup-head text-center">Thông báo!</div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group" id="content-thongbao-khuyenmai">&nbsp;</div>
                </div>
                <div class="row text-center">
                    <div class="col-xs-5 col-md-5 col-xs-offset-1 col-md-offset-1">
                        <a href="https://kfcvietnam.com.vn/vn/gio-hang.html" onclick="$.fancybox.close();" class="btn-dangky btn btn-default btn-block">Chọn lại</a>
                    </div>
                    <div class="col-xs-5 col-md-5">
                        <a href="javascript:void(0)" onclick="addCoupon(1);" class="btn-dangky btn btn-danger btn-block">Tiếp tục</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="popup-thongbao-doimatkhau" class="popup popup-login clearfix" style="display:none;">
    <div class="popup-wap clearfix">
        <a class="btn-close" href="https://kfcvietnam.com.vn/"></a>
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="three-vertical bottom clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <div class="popup-head text-center">Thông báo!</div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group" id="content-thongbao-doimatkhau">&nbsp;</div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="popup-thongbao-button" class="popup popup-login clearfix" style="display:none;">
    <div class="popup-wap clearfix">
        <a class="btn-close" onclick="$.fancybox.close();"></a>
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="three-vertical bottom clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <div class="popup-head text-center">Thông báo!</div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group" id="content-thongbao-button">&nbsp;</div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-4">&nbsp;</div>
                <div class="col-xs-4">
                    <div class="form-group">
                        <div class="b-btn gm btn-block center-block">
                            <div class="input-group">
                                <a href="javascript:void(0)" onclick="timePayment()" class="btn-dangky btn btn-danger form-control">Xem chi tiết</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-4">&nbsp;</div>
            </div>
        </div>
    </div>
</div>
<div id="popup-thongbao-price" class="popup popup-login clearfix" style="display:none;">
    <div class="popup-wap clearfix">
        <a class="btn-close" onclick="$.fancybox.close();"></a>
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="three-vertical bottom clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <div class="popup-head text-center">Thông báo!</div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group" id="content-thongbao-price">&nbsp;</div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-4">&nbsp;</div>
                <div class="col-xs-4">
                    <div class="form-group">
                        <div class="b-btn gm btn-block center-block">
                            <div class="input-group">
                                <a href="javascript:void(0)" onclick="pricePayment()" class="btn-dangky btn btn-danger form-control">Xem chi tiết</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-4">&nbsp;</div>
            </div>
        </div>
    </div>
</div>
<div id="modal-thongbao" class="modal fade">
    <div class="popup popup-login clearfix">
        <div class="popup-wap clearfix">
            <a class="btn-close" onclick="$('#modal-thongbao').modal('hide');"></a>
            <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
            <div class="three-vertical bottom clearfix"><span></span><span></span><span></span><span></span><span></span></div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="popup-head text-center">Thông báo!</div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="form-group text-center" id="content-modal-thongbao">&nbsp;</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="popup-thongbao-cart" class="popup popup-login clearfix" style="display:none;">
    <div class="popup-wap clearfix">
        <a class="btn-close" onclick="window.location='https://kfcvietnam.com.vn/vn/product/menu/combo.html'"></a>
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="three-vertical bottom clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <div class="popup-head text-center">Thông báo!</div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group" id="content-thongbao-cart">&nbsp;</div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="order-policy" class="popup popup-apply popup-login clearfix" style="display:none;">
    <div class="popup-wap clearfix">
        <a class="btn-close" onclick="$.fancybox.close();"></a>
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="three-vertical bottom clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="container-fluid">
            <div class="popup-head clearfix">Chính sách hoạt động</div>
            <div class="scroll-kiki">
                <p><strong><em>2.1 Hướng dẫn đặt phần ăn</em></strong><br />
                    <br />
                    Để đặt phần ăn tr&ecirc;n website&nbsp;<a href="http://kfcvietnam.com.vn/" target="_blank"><strong>kfcvietnam.com.vn</strong></a>, Kh&aacute;ch h&agrave;ng c&oacute; thể thực hiện theo 02 c&aacute;ch thức như sau:<br />
                    <br />
                    &nbsp;&nbsp;<em><u>C&aacute;ch 1: Đặt phần ăn trực tuyến theo c&aacute;c bước tr&ecirc;n website&nbsp;</u></em><a href="http://kfcvietnam.com.vn/" target="_blank"><strong><em>kfcvietnam.com.vn</em></strong></a><strong><em><u>:</u></em></strong><br />
                    <br />
                    - Kh&aacute;ch h&agrave;ng chọn phần ăn mong muốn được hiển thị chi tiết tại chuy&ecirc;n mục<strong>&ldquo;Thực Đơn&rdquo;</strong>.<br />
                    <br />
                    - C&aacute;c phần ăn mong muốn sẽ được ghi nhận tại&nbsp;<strong>&ldquo;Phần ăn đ&atilde; chọn&rdquo;</strong>, trong đ&oacute; liệt k&ecirc; chi tiết về phần ăn, gi&aacute; từng phần ăn v&agrave; tổng gi&aacute; của đơn h&agrave;ng. Kh&aacute;ch h&agrave;ng c&oacute; thể thay đổi phần ăn (th&ecirc;m, bớt phần ăn) tại giai đoạn n&agrave;y.<br />
                    <br />
                    - Khi đ&atilde; ho&agrave;n tất đơn h&agrave;ng, Kh&aacute;ch h&agrave;ng chọn&nbsp;<strong>&ldquo;Đặt h&agrave;ng&rdquo;</strong>.<br />
                    <br />
                    - Tại khu vực&nbsp;<strong>&ldquo;Th&ocirc;ng tin giao h&agrave;ng</strong>&rdquo;, kh&aacute;ch h&agrave;ng liệt k&ecirc; c&aacute;c th&ocirc;ng tin cần thiết bao gồm:&nbsp;họ v&agrave; t&ecirc;n,&nbsp;địa chỉ, tỉnh/ th&agrave;nh phố, số điện thoại, email&nbsp;v&agrave; chọn <strong>&ldquo;Giao h&agrave;ng đến địa chỉ n&agrave;y&rdquo;</strong>.
                </p>
                <p>- Tại trang <strong>&ldquo;X&aacute;c nhận đơn h&agrave;ng&rdquo;</strong>, kh&aacute;ch h&agrave;ng d&ograve; lại th&ocirc;ng tin đặt h&agrave;ng v&agrave; chọn n&uacute;t <strong>&ldquo;Đồng &yacute; đặt h&agrave;ng&rdquo;</strong> để ho&agrave;n tất đơn h&agrave;ng.</p>
                <p><br />
                    - Hệ thống sẽ gửi email về đơn h&agrave;ng của kh&aacute;ch h&agrave;ng trong v&ograve;ng 05-10 ph&uacute;t v&agrave; sẽ li&ecirc;n hệ lại để x&aacute;c nhận trong v&ograve;ng 15 ph&uacute;t kể từ khi kh&aacute;ch h&agrave;ng chọn n&uacute;t <strong>&ldquo;Đồng &yacute; đặt h&agrave;ng&rdquo;</strong> tr&ecirc;n website.<br />
                    <br />
                    &nbsp;<em>&nbsp;<u>C&aacute;ch 2: Gọi điện thoại đến tổng đ&agrave;i 19006886:</u></em><br />
                    <br />
                    - Kh&aacute;ch h&agrave;ng li&ecirc;n hệ đến tổng đ&agrave;i để được c&aacute;c tổng đ&agrave;i vi&ecirc;n hỗ trợ.<br />
                    <br />
                    - Kh&aacute;ch h&agrave;ng gọi t&ecirc;n phần ăn được cung cấp tr&ecirc;n website, tờ rơi hoặc c&aacute;c catalogue giới thiệu phần ăn của KFC Việt Nam để nh&acirc;n vi&ecirc;n tổng đ&agrave;i tiếp nhận, tiếp đ&oacute; Kh&aacute;ch h&agrave;ng sẽ được tổng đ&agrave;i vi&ecirc;n y&ecirc;u cầu cung cấp c&aacute;c th&ocirc;ng tin giao h&agrave;ng bao gồm:&nbsp;Họ v&agrave; t&ecirc;n,&nbsp;địa chỉ,&nbsp;tỉnh/ th&agrave;nh phố,&nbsp;số điện thoại,&nbsp;email,&nbsp;c&aacute;c y&ecirc;u cầu giao h&agrave;ng kh&aacute;c (nếu c&oacute;).<br />
                    <br />
                    - Nh&acirc;n vi&ecirc;n của KFC Việt Nam tiếp nhận đơn h&agrave;ng, x&aacute;c nhận đơn đặt h&agrave;ng v&agrave; giao h&agrave;ng trong v&ograve;ng 30 ph&uacute;t trở l&ecirc;n kể từ thời điểm tiếp nhận đơn h&agrave;ng.<br />
                    <br />
                    *&nbsp;<strong>Lưu &yacute;:</strong>&nbsp;Khi đặt h&agrave;ng tr&ecirc;n website&nbsp;<a href="http://kfcvietnam.com.vn/" target="_blank"><strong>kfcvietnam.com.vn</strong></a>,&nbsp;Kh&aacute;ch h&agrave;ng hiểu v&agrave; chấp nhận c&aacute;c điều kiện/ lưu &yacute; sau:<br />
                    &nbsp;<br />
                    &nbsp; - KFC Việt Nam chỉ tiếp nhận đơn h&agrave;ng trực tuyến từ&nbsp;<strong>09:00&nbsp;</strong>s&aacute;ng đến&nbsp;<strong>21:00</strong>&nbsp;tối.<br />
                    &nbsp;<br />
                    &nbsp; - KFC Việt Nam chỉ tiếp nhận đơn h&agrave;ng c&oacute; tổng gi&aacute; tối thiểu&nbsp;<strong>80.000</strong>&nbsp;đồng.<br />
                    <br />
                    <strong><em>2.2 Ch&iacute;nh s&aacute;ch thanh to&aacute;n khi đặt h&agrave;ng tr&ecirc;n website</em></strong>&nbsp;<a href="http://kfcvietnam.com.vn/" target="_blank"><strong><em>kfcvietnam.com.vn</em></strong></a><br />
                    <br />
                    Thanh to&aacute;n trực tiếp tại nơi giao h&agrave;ng.<br />
                    <br />
                    Sau khi đặt h&agrave;ng, nh&acirc;n vi&ecirc;n giao h&agrave;ng của KFC Việt Nam sẽ th&ocirc;ng b&aacute;o cho kh&aacute;ch h&agrave;ng về việc giao h&agrave;ng. Kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n bằng tiền mặt hoặc phiếu qu&agrave; tặng (nếu c&oacute;) tại nơi giao h&agrave;ng, người giao h&agrave;ng sẽ cung cấp h&oacute;a đơn b&aacute;n h&agrave;ng hợp lệ sau khi kh&aacute;ch h&agrave;ng kiểm tra đơn h&agrave;ng.<br />
                    <br />
                    <strong><em>2.3 X&aacute;c nhận đơn h&agrave;ng khi đặt h&agrave;ng trực tuyến tr&ecirc;n website</em></strong>&nbsp;<a href="http://kfcvietnam.com.vn/" target="_blank"><strong><em>kfcvietnam.com.vn</em></strong></a><br />
                    <br />
                    Sau khi ho&agrave;n th&agrave;nh việc đặt h&agrave;ng trực tuyến tr&ecirc;n website&nbsp;<a href="http://kfcvietnam.com.vn/" target="_blank"><strong>kfcvietnam.com.vn</strong></a>, hệ thống sẽ tự động gửi email x&aacute;c nhận v&agrave;o h&ograve;m thư của kh&aacute;ch h&agrave;ng.<br />
                    <br />
                    Trong v&ograve;ng 10 ph&uacute;t, nh&acirc;n vi&ecirc;n trực tổng đ&agrave;i của KFC Việt Nam sẽ li&ecirc;n lạc x&aacute;c nhận, xử l&yacute;, ho&agrave;n th&agrave;nh c&aacute;c thủ tục đặt h&agrave;ng. Nếu kh&ocirc;ng c&oacute; hồi &acirc;m, kh&aacute;ch h&agrave;ng vui l&ograve;ng gọi trực tiếp v&agrave;o hotline&nbsp;<strong>19006886&nbsp;</strong>để phản &aacute;nh trực tiếp về đơn h&agrave;ng.<br />
                    <br />
                    Trong hầu hết trường hợp, kh&aacute;ch h&agrave;ng sẽ nhận được email c&ugrave;ng với th&ocirc;ng tin đặt h&agrave;ng trong v&ograve;ng 10 ph&uacute;t kể từ l&uacute;c kh&aacute;ch h&agrave;ng thực hiện việc đặt h&agrave;ng. Nếu Kh&aacute;ch h&agrave;ng kh&ocirc;ng nhận được sau thời gian n&agrave;y, h&atilde;y kiểm tra thư r&aacute;c hoặc c&aacute;c bộ lọc thư r&aacute;c.<br />
                    <br />
                    <strong><em>2.4 Ch&iacute;nh s&aacute;ch giao h&agrave;ng &ndash; nhận h&agrave;ng</em></strong><br />
                    <br />
                    Sau khi tiếp nhận đơn h&agrave;ng, nh&acirc;n vi&ecirc;n giao h&agrave;ng KFC Việt Nam sẽ giao h&agrave;ng đến địa chỉ do kh&aacute;ch h&agrave;ng cung cấp trong v&ograve;ng 30 ph&uacute;t trở l&ecirc;n. Tại thời điểm giao h&agrave;ng, kh&aacute;ch h&agrave;ng kiểm tra phần ăn theo đơn h&agrave;ng ghi tr&ecirc;n h&oacute;a đơn v&agrave; số tiền cần thanh to&aacute;n. Kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n bằng tiền mặt hoặc phiếu qu&agrave; tặng (nếu c&oacute;). Việc giao h&agrave;ng kết th&uacute;c khi kh&aacute;ch h&agrave;ng x&aacute;c nhận đủ phần ăn.<br />
                    <br />
                    <strong>* C&aacute;c lưu &yacute;:</strong><br />
                    <br />
                    Thời gian giao h&agrave;ng c&oacute; thể nhanh hơn hoặc l&acirc;u hơn với dự kiến v&igrave; l&yacute; do thời tiết, đơn h&agrave;ng tại cửa h&agrave;ng hiện qu&aacute; tải, địa chỉ do kh&aacute;ch h&agrave;ng cung cấp qu&aacute; xa với cửa h&agrave;ng hoặc địa chỉ của kh&aacute;ch h&agrave;ng bị nhầm lẫn với c&aacute;c địa chỉ kh&aacute;c. L&uacute;c n&agrave;y, KFC Việt Nam sẽ th&ocirc;ng b&aacute;o cụ thể đến kh&aacute;ch h&agrave;ng ngay khi ph&aacute;t sinh sự kiện g&acirc;y chậm trễ việc giao h&agrave;ng.<br />
                    <br />
                    Trường hợp kh&aacute;ch h&agrave;ng thay đổi địa chỉ hoặc y&ecirc;u cầu điều chỉnh đơn h&agrave;ng chỉ được thực hiện trong v&ograve;ng 3 ph&uacute;t từ khi x&aacute;c nhận phần ăn v&agrave; địa chỉ giao h&agrave;ng.<br />
                    <br />
                    Việc điều chỉnh đơn h&agrave;ng nhằm thay đổi phần ăn sẽ kh&ocirc;ng được chấp nhận nếu kh&aacute;ch h&agrave;ng th&ocirc;ng b&aacute;o điều chỉnh sau 3 ph&uacute;t kể từ khi đơn h&agrave;ng đ&atilde; được KFC Việt Nam tiếp nhận.<br />
                    <br />
                    <strong><em>2.5 Ch&iacute;nh s&aacute;ch đổi, trả h&agrave;ng</em></strong><br />
                    &nbsp;
                </p>
                <p><em><u>a) Ch&iacute;nh s&aacute;ch đổi h&agrave;ng:</u></em><br />
                    Sau khi y&ecirc;u cầu đơn h&agrave;ng, kh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ tổng đ&agrave;i để y&ecirc;u cầu nh&acirc;n vi&ecirc;n tổng đ&agrave;i của KFC Việt Nam điều chỉnh đơn h&agrave;ng trong v&ograve;ng 3 ph&uacute;t kể từ khi đơn h&agrave;ng đ&atilde; được x&aacute;c nhận. Mọi trường hợp điều chỉnh đơn h&agrave;ng qu&aacute; thời gian n&ecirc;u tr&ecirc;n đều kh&ocirc;ng được chấp nhận.<br />
                    <br />
                    Trường hợp đơn h&agrave;ng sau khi điều chỉnh c&oacute; tổng gi&aacute; trị thấp hơn&nbsp;<strong>80.000</strong>&nbsp;đồng KFC sẽ từ chối việc điều chỉnh n&agrave;y.<br />
                    <br />
                    Trường hợp kh&aacute;ch h&agrave;ng ph&aacute;t hiện phần ăn bị nhầm lẫn do lỗi của KFC, KFC sẽ tiến h&agrave;nh ngay việc đổi h&agrave;ng đ&uacute;ng theo đơn h&agrave;ng đ&atilde; tiếp nhận.<br />
                    <br />
                    Trường hợp kh&aacute;ch h&agrave;ng ph&aacute;t hiện phần ăn bị hư, hỏng, kh&ocirc;ng đạt chất lượng&hellip; KFC sẽ tiến h&agrave;nh ngay việc kiểm tra v&agrave; đổi h&agrave;ng cho kh&aacute;ch h&agrave;ng trong v&ograve;ng 30 ph&uacute;t kể từ khi nhận được phản &aacute;nh từ kh&aacute;ch h&agrave;ng.<br />
                    <br />
                    <em><u>b) Ch&iacute;nh s&aacute;ch trả h&agrave;ng:</u></em><br />
                    Trong trường hợp phần ăn ph&aacute;t hiện c&oacute; sự hư, hỏng, &ocirc;i, thiu&hellip; Kh&aacute;ch h&agrave;ng vui l&ograve;ng th&ocirc;ng b&aacute;o ngay cho KFC Việt Nam qua số điện thoại&nbsp;<strong>19006886</strong>&nbsp;để phản &aacute;nh, KFC Việt Nam sẽ cử nh&acirc;n vi&ecirc;n đến kiểm tra trực tiếp tại địa chỉ của kh&aacute;ch h&agrave;ng v&agrave; thực hiện việc đổi h&agrave;ng, nếu kh&aacute;ch h&agrave;ng kh&ocirc;ng đồng &yacute; với việc đổi h&agrave;ng, KFC Việt Nam sẽ ho&agrave;n tiền cho kh&aacute;ch h&agrave;ng tương ứng với gi&aacute; trị phần ăn bị hư, hỏng.
                </p>
            </div>
        </div>
    </div>
</div>
<div id="terms-and-conditions" class="popup popup-apply popup-login clearfix" style="display:none;">
    <div class="popup-wap clearfix">
        <a class="btn-close" onclick="$.fancybox.close();"></a>
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="three-vertical bottom clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="container-fluid">
            <div class="popup-head clearfix">Chính sách và quy định chung</div>
            <div class="scroll-kiki">
                <p style="text-align: justify;">
                    <em><b>1.1 Chấp nhận chính sách và quy định chung khi sử dụng website</b></em><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">Những chính sách và quy định chung này ảnh hưởng đến việc Khách hàng sử dụng website của KFC Việt Nam và các tổ chức có liên quan đến website của KFC Việt Nam.</span><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">Khi truy cập hoặc đăng nhập vào website này có nghĩa là khách hàng đã chấp nhận và đồng ý với các chính sách và quy định chung này và những chính sách và quy định của chính sách bảo mật thông tin từ KFC Việt Nam.</span><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">Nếu khách hàng không đồng ý với bất kỳ điều khoản nào dưới đây, vui lòng không truy cập vào website của KFC Việt Nam. Chính sách và quy định chung này được xem là hợp đồng giữa Khách hàng và KFC Việt Nam và được áp dụng khi Khách hàng sử dụng website của KFC Việt Nam. Những chính sách và quy định chung này ảnh hưởng đến quyền lợi của Khách hàng, vui lòng đọc kỹ trước khi sử dụng.</span><br />
                    <br />
                    <em><b>1.2 Những thay đổi đối với các chính sách và quy định chung này</b></em><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">KFC Việt Nam có quyền thay đổi các chính sách và quy định chung này bất cứ lúc nào mà không cần thông báo trước với khách hàng. Khách hàng có thể xem phiên bản cập nhật mới nhất của chính sách và quy định chung này bằng cách nhấp chuột vào&nbsp;</span><span style="background-color: rgb(255, 255, 255);"><b>"Chính Sách và Quy Định Chung"</b>&nbsp;</span><span style="background-color: rgb(255, 255, 255);">tại trang chủ của&nbsp;</span><span style="color: rgb(0, 0, 205); background-color: rgb(255, 255, 255);"><b><a href="http://kfcvietnam.com.vn/" target="_blank">kfcvietnam.com.vn</a></b></span><span style="background-color: rgb(255, 255, 255);">. Phiên bản cập nhật này sẽ thay thế tất cả các phiên bản cũ. Nếu khách hàng sử dụng website của KFC Việt Nam sau khi xuất hiện những thay đổi này có nghĩa là khách hàng đã đồng ý với những thay đổi này.</span><br />
                    <br />
                    <em><b>1.3 Tài khoản sử dụng của Khách hàng</b></em><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">Nếu khách hàng sử dụng website của KFC Việt Nam, khách hàng có trách nhiệm duy trì tính bảo mật của tài khoản do khách hàng sử dụng, bảo quản mật mã và hạn chế cho người khác truy cập vào máy tính của khách hàng, và khách hàng đồng ý chịu trách nhiệm cho tất cả mọi hoạt động diễn ra trong tài khoản hoặc mật mã của khách hàng.</span><br />
                    <br />
                    <em><b>1.4 Website của KFC Việt Nam</b></em><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">Những chính sách và quy định chung này áp dụng cho tất cả Khách hàng sử dụng website của KFC Việt Nam. Website này có thể chứa những liên kết đến website của bên thứ ba không thuộc sở hữu của KFC Việt Nam. KFC Việt Nam không có quyền kiểm soát nội dung, chính sách bảo mật thông tin hoặc những phần khác trong các website của bên thứ ba. Hơn nữa, KFC Việt Nam sẽ không thể kiểm duyệt hoặc biên tập lại nội dung trên các website của bên thứ ba. Chúng tôi khuyến khích khách hàng đọc kỹ các điều khoản, điều kiện và chính sách bảo mật thông tin của các website của bên thứ ba mà bạn truy cập.</span><br />
                    <br />
                    <em><b>1.5 Truy cập vào website</b></em><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">KFC Việt Nam chấp thuận cho bạn sử dụng website như đã công bố trong điều khoản sử dụng dịch vụ, bao gồm: (i) sử dụng website cho mục đích cá nhân, không nhằm mục đích thương mại; (ii) không sao chép hoặc cung cấp bất cứ thông tin nào của website này cho bên thứ ba; (iii) Khách hàng không được thay đổi, chỉnh sửa bất cứ phần nào của website này; (iv) Khách hàng phải tuân theo chính sách và quy định chung sử dụng dịch vụ.</span><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">Để truy cập vào một số tính năng của website, khách hàng phải tạo một tài khoản cho riêng mình. Khách hàng không được phép sử dụng tài khoản của người khác nếu không được sự đồng ý của chủ tài khoản. Khi tạo tài khoản, khách hàng phải cung cấp thông tin đầy đủ và chính xác. Khách hàng tự chịu trách nhiệm cho tất cả các hoạt động xảy ra trong tài khoản của mình, và khách hàng phải giữ mật mã tài khoản an toàn. Khách hàng phải lập tức thông báo cho KFC Việt Nam nếu có bất cứ vi phạm nào về độ an toàn hoặc sử dụng tài khoản mà không có sự đồng ý của chủ tài khoản. Mặc dù KFC Việt Nam không chịu trách nhiệm pháp lý cho bất cứ những mất mát nào liên quan đến việc sử dụng tài khoản của khách hàng một cách bất hợp pháp, khách hàng phải chịu trách nhiệm cho những mất mát của KFC Việt Nam hoặc những mất mát do sử dụng bất hợp pháp.</span><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">Khách hàng đồng ý không sử dụng bất cứ hệ thống tự động nào, bao gồm nhưng không giới hạn, người máy, gián điệp...để truy cập vào website và gửi nhiều thông tin yêu cầu đến máy chủ của KFC Việt Nam nhiều hơn một người bình thường có thể làm được bằng việc sử dụng website thông thường trong một khoản thời gian nhất định. Mặc dù đã được đề cập ở trên, KFC Việt Nam chấp thuận cho người điều hành của các công cụ tìm kiếm công cộng được phép sử dụng gián điệp để sao chép thông tin từ website cho mục đích tạo ra những chỉ số tìm kiếm có giá trị công cộng của các thông tin này nhưng không được giữ hoặc lưu trữ những tài liệu này. KFC Việt Nam có quyền thu hồi những tài liệu này ngoại trừ những trường hợp đặc biệt. Khách hàng đồng ý không thu thập bất cứ thông tin cá nhân nào từ website, bao gồm tên tài khoản, và cũng không sử dụng những hệ thống truyền thông do website cung cấp cho mục đích thương mại nào. Khách hàng đồng ý không van nài, với mục đích thương mại, bất kỳ người sử dụng nào của website để yêu cầu đăng ký thông tin.</span><br />
                    <br />
                    <em><b>1.6 Đăng ký thông tin của người sử dụng</b></em><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">Website của KFC Việt Nam cho phép đăng ký thông tin cá nhân. Khách hàng nên hiểu rằng những thông tin đăng ký này có được công bố hay không, KFC Việt Nam cũng không đảm bảo rằng sẽ bảo mật thông tin cho bất cứ phần đăng ký nào. Khách hàng phải đồng ý với việc KFC có thể công bố tên của khách hàng và phần đăng ký thông tin trên website của KFC Việt Nam hoặc trong những phần thông cáo báo chí hoặc trong các phương tiện truyền thông khác.</span><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">Khách hàng sẽ đơn phương chịu trách nhiệm cho phần đăng ký thông tin cá nhân của mình và tầm quan trọng của việc công bố những thông tin này. Để kết nối với phần đăng nhập thông tin, khách hàng xác nhận và cam kết cho: (i) quyền sở hữu hoặc có những giấy phép cần thiết, chấp thuận và cho phép KFC Việt Nam sử dụng tất cả các bằng sáng chế, thương hiệu, bản quyền, nhãn hiệu đã đăng ký bản quyền và tất cả các quyền lợi độc quyền khác trong tất cả các phần đăng ký thông tin và (ii) Khách hàng có văn bản chấp thuận, biên nhận, và sự đồng ý của mỗi cá nhân đăng ký thông tin trong phần đăng ký được sử dụng tên hoặc chân dung cá nhân và những phần đăng ký này mặc nhiên trở thành tài sản của KFC Việt Nam. KFC Việt Nam có thể tự do sử dụng những phần đăng ký thông tin này. Để rõ ràng hơn, khách hàng có thể giữ quyền sở hữu cá nhân trong các phần đăng ký thông tin khác. Tuy nhiên, khi đăng ký thông tin của mình trên website của KFC Việt Nam là khách hàng đã đồng ý cho KFC Việt Nam sử dụng những thông tin cá nhân này và KFC Việt Nam có quyền sử dụng những thông tin này cho mục đích quảng cáo trên website và các kênh truyền thông khác.</span><br />
                    <br />
                    <em><b>1.7 Miễn trừ trách nhiệm về kỹ thuật</b></em><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">Khách hàng đồng ý rằng khi sử dụng website của KFC Việt Nam, khách hàng sẽ tự chấp nhận các rủi ro có thể xảy ra. Các nhân viên văn phòng, ban giám đốc, nhân viên và các đại lý của KFC Việt Nam từ chối bảo hành có liên quan đến website và việc sử dụng website của khách hàng. KFC Việt Nam không bảo hành tính chính xác hoặc hoàn thiện của nội dung trên website hoặc nội dung của bất kỳ website nào được kết nối với website của KFC Việt Nam và chúng tôi không có quyền và nghĩa vụ cho bất cứ (i) những nội dung sai sót và sơ suất hoặc không chính xác, (ii) những tổn thương cá nhân hoặc hư hại tài sản đến từ tự nhiên trong quá trình truy cập và sử dụng website của chúng tôi, (iii) truy cập bất hợp pháp vào các máy chủ của chúng tôi để lấy thông tin cá nhân hoặc/và những thông tin tài chính mà chúng tôi bảo quản trong đó, (iv) cắt ngang hoặc chấm dứt truyền thông tin đến website của chúng tôi, (v) sai sót, vi-rút, hoặc những thứ tương tự như vậy có thể truyền đến thông qua website của chúng tôi bởi bên thứ ba, và (vi) lỗi hoặc sai sót trong phần nội dung hoặc những mất mát hư hỏng do sử dụng nội dung đăng tải, email, đường truyền hoặc những thứ tương tự từ website của KFC Việt Nam. KFC Việt Nam sẽ không bảo hành và chịu trách nhiệm bất cứ sản phẩm, dịch vụ nào hoặc các chương trình khuyến mãi của bên thứ ba thông qua website của KFC Việt Nam và KFC Việt Nam cũng không có trách nhiệm giám sát bất cứ giao dịch nào của Khách hàng với bên thứ ba, những người cung cấp sản phẩm và dịch vụ. Việc mua sản phẩm và dịch vụ thông qua trung gian, tốt nhất là khách hàng nên sử dụng khả năng phán xét của mình để quyết định thế nào là hợp lý.</span><br />
                    <br />
                    <em><b>1.8 Hạn chế về nghĩa vụ pháp lý</b></em><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">Ban giám đốc, nhân viên hoặc các đại lý của KFC Việt Nam không chịu bất cứ trách nhiệm pháp lý nào cho khách hàng trong bất kỳ trường hợp nào bao gồm trực tiếp, gián tiếp, ngẫu nhiên, đặc biệt, hư hỏng do cố ý hay bất kỳ vấn đề gì là kết quả của các vấn đề sau bao gồm nhưng không giới hạn: (i) những nội dung sai sót hoặc không chính xác, (ii) những tổn thương cá nhân hoặc hư hại tài sản đến từ tự nhiên trong quá trình truy cập và sử dụng website của chúng tôi, (iii) truy cập bất hợp pháp vào các máy chủ của chúng tôi để lấy thông tin cá nhân hoặc/và những thông tin tài chính mà chúng tôi bảo quản trong đó, (iv) cắt ngang hoặc chấm dứt truyền thông tin đến website của chúng tôi, (v) sai sót, vi-rút, hoặc những thứ tương tự như vậy có thể truyền đến thông qua website của chúng tôi bởi bên thứ ba, và (vi) lỗi hoặc sai sót trong phần nội dung hoặc những mất mát hư hỏng do sử dụng nội dung đăng tải, email, đường truyền hoặc những thứ tương tự từ website của KFC Việt Nam, dựa trên bảo hành, hợp đồng, sai lầm dân sự, hoặc bất cứ các lý thuyết pháp lý khác, công ty sẽ không chịu trách nhiệm cho những thiệt hại có thể xảy ra này. Các hạn chế về nghĩa vụ pháp lý như đã nói ở trên sẽ được áp dụng trong phạm vi luật pháp cho phép.</span><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">Khách hàng nên nhận thức rõ việc KFC Việt Nam sẽ không chịu trách nhiệm cho việc đăng ký thông tin của người sử dụng, hoặc những chỉ dẫn bất hợp pháp của bất kỳ bên thứ ba nào hoặc bất cứ những rủi ro thiệt hại nào khác cho khách hàng.</span><br />
                    <br />
                    <em><b>1.9 Bồi thường</b></em><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">Khách hàng đồng ý bảo vệ, bồi thường và không gây hại cho KFC Việt Nam, công ty mẹ, ban giám đốc, nhân viên chi nhánh và các đại lý dựa trên toàn bộ/bất cứ các yêu sách, thiệt hại, mất mát, nghĩa vụ, chi phí hoặc nợ (bao gồm nhưng không giới hạn phí công chứng) phát sinh do: (i) Khách hàng truy cập &amp; sử dụng website của KFC Việt Nam, (ii) Khách hàng vi phạm bất cứ điều khoản nào trong phần điều khoản sử dụng dịch vụ này, (iii) Khách hàng vi phạm quyền lợi của bất kỳ bên thứ ba nào, bao gồm nhưng không giới hạn tác quyền, tài sản, hoặc là quyền cá nhân, (iv) bất cứ các yêu sách nào từ phần đăng ký thông tin cá nhân gây thiệt hại cho bên thứ ba. Trách nhiệm về bồi thường sẽ được áp dụng xuyên suốt trong các điều khoản sử dụng cũng như việc truy cập vào website của KFC Việt Nam.</span><br />
                    <br />
                    <em><b>1.10 Tài sản trí tuệ của KFC Việt Nam</b></em><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">Website này chứa nhiều bản quyền thương hiệu có giá trị do KFC Việt Nam và các chi nhánh, thành viên trên toàn thế giới sở hữu và sử dụng. Những bản quyền thương hiệu này được sử dụng để phân biệt các chất lượng sản phẩm và dịch vụ của KFC Việt Nam. Những bản quyền thương hiệu này và các tài sản có liên quan được bảo vệ để tránh không được tái sản xuất và giả mạo theo luật quốc gia và luật quốc tế và không được sao chép dưới bất kỳ hình thức nào nếu không được sự đồng ý bằng văn bản của KFC Việt Nam. Văn bản, hình ảnh minh họa, mã html có trong website này sẽ không được sao chép, phân phối, trưng bày, tái sản xuất và truyền tải dưới bất kỳ hình thức nào hoặc phương tiện nào mà không được sự đồng ý bằng văn bản của KFC Việt Nam. Website của KFC Việt Nam có thể liên kết đến những trang khác không liên quan đến KFC Việt Nam. Các đường kết nối không được cung cấp dưới dạng dịch vụ dành cho Khách hàng và không được tài trợ hoặc liên kết với website của KFC Việt Nam. KFC Việt Nam sẽ không xem xét các đường kết nối này đến từ website nào và không chịu trách nhiệm cho nội dung của bất cứ website nào khác. Khách hàng tự chịu rủi ro khi truy cập các đường kết nối này. KFC Việt Nam sẽ không đại diện hoặc bảo hành cho bất cứ nội dung, tính trọn vẹn, hoặc tính chính xác nào của các đường kết nối này hoặc các website liên kết với website của chúng tôi.</span><br />
                    <br />
                    <span style="background-color: rgb(255, 255, 255);">KFC Việt Nam có quyền điều chỉnh các Điều khoản dịch vụ này bất cứ lúc nào mà không cần thông báo trước, và nhiệm vụ của khách hàng là phải xem lại các điều khoản này nếu có bất kỳ thay đổi nào. Khách hàng sử dụng website của KFC Việt Nam với những điều khoản chỉnh sửa có nghĩa là khách hàng đã đồng ý và chấp nhận những điều khoản chỉnh sửa này.</span>
                </p>
            </div>
        </div>
    </div>
</div>
<div id="popup-lienket" class="popup popup-login clearfix" style="display:none;">
    <div class="popup-wap clearfix">
        <a class="btn-close" onclick="cancelPopupUpdateLogin()"></a>
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="three-vertical bottom clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="container-fluid">
            <div class="row form-group">
                <div class="col-xs-12">
                    <div class="popup-head clearfix">Liên kết tài khoản</div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-xs-12">
                    <div class="content-block clearfix">
                        Tài khoản <span class="account-Login" style="color: #444444;">Facebook</span> bạn vừa dùng để đăng nhập có email: <span id="emailOTP">email@email.com</span>. Email này trước đó đã được dùng để đăng kí tài khoản trên KFC.<br/><br/>
                        Để liên kết tài khoản KFC <span class="account-Login" style="color: #444444;">Facebook</span> của bạn và tài khoản KFC Email này, chúng tôi đã gửi một mã OTP xác thực vào email <span id="emailOTP1">email@email.com</span>. Sau khi điền mã OTP và liên kết thành công, bạn có thể đồng thời đăng nhập trên KFC bằng <span class="account-Login" style="color: #444444;">Facebook</span> hoặc tiếp tục sử dụng Email và mật khẩu trước đó.
                    </div>
                </div>
            </div>
            <div class="row">
                <form action="https://kfcvietnam.com.vn/vn/user/checkOTP.html" method="post" accept-charset="utf-8" id="frm_checkOTP" autocomplete="off">
                    <div style="display:none">
                        <input type="hidden" name="csrf_kfc_name" value="7eaa990dabe717e0974c9189bd8704e4" />
                    </div>
                    <div class="col-xs-8">
                        <div class="form-group">
                            <input type="text" value="" name="codeOTP" id="codeOTP" class="form-control focus empty" placeholder="" />
                            <label class="floating-label">Mã OTP</label>
                            <span id="error-OTP" style="color: #ff0000; font-size: 12px;">&nbsp;</span>
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <div class="form-group">
                            <div class="b-btn gm btn-block center-block">
                                <div class="input-group">
                                    <input class="form-control btn btn-danger" type="submit" onclick="checkOTP()" name="sendOTP" value="Đồng ý" />
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="note-text">Không thấy mã? Vui lòng kiểm tra kĩ Inbox và Spam/Junk</div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="popup-update-email" class="popup popup-login clearfix" style="display:none;">
    <div class="popup-wap clearfix">
        <a class="btn-close" onclick="cancelPopupUpdateLogin()"></a>
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="three-vertical bottom clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="container-fluid">
            <div class="row form-group">
                <div class="col-xs-12">
                    <div class="popup-head clearfix">Cập nhật email</div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-xs-12">
                    <div class="content-block clearfix">
                        Vui lòng cung cấp địa chỉ Email để chúng tôi phục vụ bạn được tốt hơn.
                    </div>
                </div>
            </div>
            <div class="row">
                <form action="https://kfcvietnam.com.vn/vn/user/updateEmail.html" method="post" accept-charset="utf-8" id="frm_updateEmail" autocomplete="off">
                    <div style="display:none">
                        <input type="hidden" name="csrf_kfc_name" value="7eaa990dabe717e0974c9189bd8704e4" />
                    </div>
                    <div class="col-xs-8">
                        <div class="form-group">
                            <input type="text" value="" name="emailUpdate" id="emailUpdate" class="form-control focus empty" placeholder="" />
                            <label class="floating-label">Email</label>
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <div class="form-group">
                            <div class="b-btn gm btn-block center-block">
                                <div class="input-group">
                                    <input class="form-control btn btn-danger" type="submit" onclick="updateEmail()" name="sendUpdateEmail" value="GỬI" />
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div id="popup-dathang" class="popup popup-login clearfix" style="display:none;">
    <div class="popup-wap clearfix">
        <a class="btn-close" onclick="$.fancybox.close();"></a>
        <div class="three-vertical top clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="three-vertical bottom clearfix"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12" id="content-popup-dathang">
                    &nbsp;
                </div>
            </div>
        </div>
    </div>
</div>
<div id="popup-camon" class="popup popup-camon  clearfix" style="display:none;">
    <div class="popup-wap clearfix">
        <a class="btn-close" onclick="$.fancybox.close();"></a>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <div class="popup-head text-center"></div>
                    <div class="sub"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group" id="content-camon"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<a class="scroll-top"></a>
</body>
</html>
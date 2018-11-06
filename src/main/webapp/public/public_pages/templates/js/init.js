//JavaScript init() LDC.
function gotoLink(url){
    location.href = url;
}
function gotoLink_ajax(url){
    var link = $( "#menu_about_ajax option:selected" ).data('link');
    var link_page = base_url_lang + link + ".html";
    $('#loader').show();
    $.ajax({
        type: "POST",
        url: base_url_lang + "home/"+url,
        data: {
            'csrf_kfc_name': token_value
        },
        dataType: 'html',
        async: true,
        error: function (request, status, error) {

        },
        success: function (data) {
            $('#loader').fadeOut();
            $("#tab-wap").html(data);
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-43944041-1']);
            _gaq.push(['_trackPageview']);
            (function() {
              var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
              ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
              var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })();
            ChangeUrl('page',link_page);
        }
    });
}

function gotoPhotoLink_ajax(url){
    var link = $( "#menu_photo_ajax option:selected" ).data('link');
    var link_page =  base_url_lang + link + ".html";
    $('#loader').show();
    $.ajax({
        type: "POST",
        url: base_url_lang + "photo/"+url,
        data: {
            'csrf_kfc_name': token_value
        },
        dataType: 'html',
        async: true,
        error: function (request, status, error) {

        },
        success: function (data) {
            $('#loader').fadeOut();
            $("#tab-wap").html(data);
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-43944041-1']);
            _gaq.push(['_trackPageview']);
            (function() {
              var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
              ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
              var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })();
            ChangeUrl('page',link_page);
       }
    });
}


$(document).ready(function(){
    $(window).scroll(function(){
        $.validator.reposition();
    })
});
//-USER-//---------------------------------------------------------------------------
function login(){
    $.validator.reposition();
    $("#frm_login").validate_popover({
        onsubmit: true,
        popoverPosition: 'top',
        rules: {
            email:{required:true,email: true},
            password:{required:true},
        },
        messages: {
            email:{required:Msg['login.email'],email:Msg['login.email.correct']},
            password:{required:Msg['login.password']},
        },
        submitHandler: function(form){
             $('#loader').show();
             var formData = new FormData(form);
             $.ajax({
                 type: "POST",
                 url: base_url+"user/do_login",
                 data: formData,
                 dataType: 'json',
                 mimeType:"multipart/form-data",
                 contentType: false,
                 cache: false,
                 processData:false,
                 success: function(data) {
                     $('#loader').fadeOut();
                     if(data.status ==true){
                        location.reload();
                        /*if(data.lastUrl){
                            gotoLink(data.lastUrl);
                        }else{
                            gotoLink(base_url_lang+'user/update');
                        }*/
                     }else{
                         $('#content-thongbao').html(Msg['login.error']);
                         call_Popup('#popup-thongbao');
                     }
                 }
            });
            return false;
        }
    });
}
function loginTop(){
    $.validator.reposition();
    $("#frm_loginTop").validate_popover({
        onsubmit: true,
        popoverPosition: 'top',
        rules: {
            emailLoginTop:{required:true,email: true},
            passLoginTop:{required:true},
        },
        messages: {
            emailLoginTop:{required:"",email:""},
            passLoginTop:{required:""},
        },
        submitHandler: function(form){
             $('#loader').show();
             var formData = new FormData(form);
             $.ajax({
                 type: "POST",
                 url: base_url+"user/do_login_ajax",
                 data: formData,
                 dataType: 'json',
                 mimeType:"multipart/form-data",
                 contentType: false,
                 cache: false,
                 processData:false,
                 success: function(data) {
                     $('#loader').fadeOut();
                     if(data.status ==true){
                        location.reload();
                        //gotoLink(base_url_lang+'user/update');
                     }else{
                         $('#content-thongbao').html(Msg['login.error']);
                         call_Popup('#popup-thongbao');
                     }
                 }
            });
            return false;
        }
    });
}
function registerUser(){
    $.validator.reposition();
    $("#frm_register").validate_popover({
        onsubmit: true,
        popoverPosition: 'top',
        rules: {
            name:{required:true},
            email:{required:true,email: true},
            password:{required:true,minlength: 8},
            repassword: {equalTo: "#password"},
            phone:{required: true,number: true,minlength: 10, maxlength: 11},
            day:{required:true},
            month:{required:true},
            year:{required:true},
            //quydinh:{required: true},
        },
        messages: {
            name:{required:Msg['register.name']},
            email:{required:Msg['register.email'],email:Msg['register.email.correct']},
            password:{required:Msg['register.password'],minlength:Msg['register.password.length']},
            repassword:{equalTo:Msg['register.password.correct']},
            phone:{required:Msg['register.phone'],number:Msg['register.phone.correct'],minlength:Msg['register.phone.correct'],maxlength:Msg['register.phone.correct']},
            day:{required:Msg['register.day']},
            month:{required:Msg['register.month']},
            year:{required:Msg['register.year']},
            //quydinh:{required:"Đồng ý với quy định KFC Việt Nam"},
        },
        submitHandler: function(form){
             $('#loader').show();
             var formData = new FormData(form);
             $.ajax({
                 type: "POST",
                 url: base_url+"user/do_dangky",
                 data: formData,
                 dataType: 'json',
                 mimeType:"multipart/form-data",
                 contentType: false,
                 cache: false,
                 processData:false,
                 success: function(data) {
                     $('#loader').fadeOut();
                     if(data.status ==true){
                        $('#frm_register')[0].reset();
                        gotoLink(base_url_lang+'thanh-vien/thong-tin-tai-khoan.html');
                     }else{
                         $('#content-thongbao').html(Msg['register.error']);
                         call_Popup('#popup-thongbao');
                     }
                 }
            });
            return false;
        }
    });
}
function new_pass(){
    $.validator.reposition();
    $("#frm_new_pass").validate_popover({
        onsubmit: true,
        popoverPosition: 'top',
        rules: {
            password:{required:true,minlength: 8},
            repassword: {equalTo: "#password"},
        },
        messages: {
            password:{required:Msg['register.password'],minlength:Msg['register.password.length']},
            repassword:{equalTo:Msg['register.password.correct']},

        },
        submitHandler: function(form){
            $('#loader').show();
            var formData = new FormData(form);
            $.ajax({
                type: "POST",
                url: base_url+"user/do_new_pass",
                data: formData,
                dataType: 'json',
                mimeType:"multipart/form-data",
                contentType: false,
                cache: false,
                processData:false,
                success: function(data) {
                    $('#loader').fadeOut();
                    if(data.status ==true){
                        $('#frm_new_pass')[0].reset();
                        $('#content-thongbao-doimatkhau').html(data.mess);
                        call_Popup('#popup-thongbao-doimatkhau');
                    }else{
                        $('#content-thongbao').html(Msg['register.error']);
                        call_Popup('#popup-thongbao');
                    }
                }
            });
            return false;
        }
    });
}

function quenmatkhau(){
    $.validator.reposition();
    $("#frm_forgot").validate_popover({
        onsubmit: true,
        popoverPosition: 'top',
        rules: {
            email:{required:true,email: true}
        },
        messages: {
            email:{required:Msg['register.email'],email:Msg['register.email.correct']}
        },
        submitHandler: function(form){
            $('#loader').show();
            var formData = new FormData(form);
            $.ajax({
                type: "POST",
                url: base_url_lang+"user/forgot_pass",
                data: formData,
                dataType: 'json',
                mimeType:"multipart/form-data",
                contentType: false,
                cache: false,
                processData:false,
                success: function(data) {
                    $('#loader').fadeOut();
                    if(data.status ==true){
                        $('#frm_forgot')[0].reset();
                        $('#content-thongbao').html(data.mess);
                        call_Popup('#popup-thongbao');
                    }else{
                        $('#content-thongbao').html(data.mess);
                        //$('#content-thongbao').html(Msg['register.error']);
                        call_Popup('#popup-thongbao');
                    }
                }
            });
            return false;
        }
    });
}
function checkEMAIL(email){
    if(email){
        $.ajax({
            type: "POST",
            url: base_url+"user/check_email",
            data: {'email':email,'csrf_kfc_name':token_value},
            dataType: 'json',
            success: function(data){
                if(data.status){
                    $('#content-thongbao').html(Msg['check.email']);
                    call_Popup('#popup-thongbao');
                    $("#email").val("");
                }else{
                    //No thing
                }
            }
        });
    }else{
        //No thing
    }
}

function update1(){
    $.validator.reposition();
    $("#frm_update1").validate_popover({
        onsubmit: true,
        popoverPosition: 'top',
        rules: {
            name:{required:true},
            email:{required:true,email: true},
            birthday:{required:true},
            phone:{required:true},
        },
        messages: {
            name:{required:Msg['register.name']},
            email:{required:Msg['enter.email'],email:Msg['enter.email.correct']},
            birthday:{required:Msg['update.birthday']},
            phone:{required:Msg['register.phone']},
        },
        submitHandler: function(form){
             $('#loader').show();
             var formData = new FormData(form);
             $.ajax({
                 type: "POST",
                 url: base_url+"user/do_update",
                 data: formData,
                 dataType: 'json',
                 mimeType:"multipart/form-data",
                 contentType: false,
                 cache: false,
                 processData:false,
                 success: function(data) {
                     $('#loader').fadeOut();
                     if(data.status ==true){
                        $('#content-thongbao').html(Msg['update.message']);
                         call_Popup('#popup-thongbao');
                     }else{
                        $('#content-thongbao').html(data.message);
                         //$('#content-thongbao').html(Msg['update.error']);
                         call_Popup('#popup-thongbao');
                     }
                 }
            });
            return false;
        }
    });
}
function update2(){
    $.validator.reposition();
    $("#frm_update2").validate_popover({
        onsubmit: true,
        popoverPosition: 'top',
        rules: {
            city_id:{required:true},
            district_id:{required:true},
            address:{required:true},
        },
        messages: {
            city_id:{required:Msg['update.city']},
            district_id:{required:Msg['update.district']},
            address:{required:Msg['update.address']},
        },
        submitHandler: function(form){
             $('#loader').show();
             var formData = new FormData(form);
             $.ajax({
                 type: "POST",
                 url: base_url+"user/do_update",
                 data: formData,
                 dataType: 'json',
                 mimeType:"multipart/form-data",
                 contentType: false,
                 cache: false,
                 processData:false,
                 success: function(data) {
                     $('#loader').fadeOut();
                     if(data.status ==true){
                        $('#content-thongbao').html(Msg['update.message']);
                         call_Popup('#popup-thongbao');
                     }else{
                         $('#content-thongbao').html(Msg['update.error']);
                         call_Popup('#popup-thongbao');
                     }
                 }
            });
            return false;
        }
    });
}
//-END USER-//-----------------------------------------------------------------------------

function changeProvince(id){
    $.ajax({
        type: "POST",
        url: base_url+"user/get_district",
        data: {'id':id,'csrf_kfc_name':token_value},
        dataType: 'html',
        success: function(html){
            if(html){
                $('#district_id').html(html);
            }else{
                //No thing
            }
        }
    });
}

function ChangeUrl(page, url) {
    if (typeof (history.pushState) != "undefined") {
        var obj = { Page: page, Url: url };
        history.pushState(obj, obj.Page, obj.Url);
    } else {
        $('#content-thongbao').html('Trình duyệt của bạn không hổ trợ HTML5!');
        call_Popup('#popup-thongbao');
    }
}

//PHOTO
function deleteAlbum(id,link){
    if(id){
        $.ajax({
            type: "POST",
            url: base_url+"photo/deleteAlbum",
            data: {'id':id,'csrf_kfc_name':token_value},
            dataType: 'json',
            success: function(data){
                if(data.status){
                    gotoLink(base_url_lang+'photo/user/'+link);
                }else{
                    //No thing
                }
            }
        });
    }else{
        //No thing
    }
}
function facebookAlbum(id,photo,content){
    var name = "KFC Thư viện ảnh";
    var link = base_url_lang+"photo/chitiet/"+id+'.html';
    var picture = base_url+"uploads/photo/"+photo;
    var message = content;
    FB.getLoginStatus(function(response) {
        if (response.authResponse) {
            FB.ui({ method: "feed",
                message:message,
                name: name,
                link:link,
                picture: picture,
                description: message
          });
        }else{
            loginFB();
        }
    });
}
function likeAlbum(id){
    $.ajax({
    type: "POST",
    url: base_url+"photo/likeAlbum",
    data: {'id':id,'csrf_kfc_name':token_value},
    dataType: 'json',
    success: function(data){
        if(data.status){
            var like = parseInt($('#like-album').html());
            $('#like-album').html(like+1);
        }else{
            $('#content-thongbao').html('Bạn đã thích!');
            call_Popup('#popup-thongbao');
        }
    }
    });
}
function loadAddress(id){
    $('.updateAddress').html('');
    $.ajax({
    type: "POST",
    url: base_url_lang+"user/loadAddress",
    data: {'id':id,'csrf_kfc_name':token_value},
    dataType: 'html',
    success: function(html){
        if(html){
            $('#updateAddress_'+id).html(html);
            $('.selectpicker').selectpicker('refresh');
        }else{
            $('#content-thongbao').html('Lỗi! Vui lòng làm lại!');
            call_Popup('#popup-thongbao');
        }
    }
    });
}
function saveUpdateAddress() {
    $.validator.reposition();
    console.log(Msg['member.user_name_err']);
    $("#updateAddress").validate_popover({
        onsubmit: true,
        popoverPosition: 'top',
        rules: {
            user_name: {required: true},
            user_email: {required: true, email: true},
            user_city: {required: true},
            user_address: {required: true},
            user_phone: {required: true, minlength: 10, maxlength: 11},
        },
        messages: {
            //name_child: { required: Msg['contact.enter_name_child']},
            user_name: {required: Msg['member.user_name_err']},
            user_email: {required: Msg['member.user_email_err'], email: Msg['member.user_true_email_err']},
            user_city: {required: Msg['member.user_city_err']},
            user_address: {required: Msg['member.user_address_err']},
            user_phone: {required: Msg['member.user_phone_err'], minlength:Msg['register.phone.correct'],maxlength:Msg['register.phone.correct']},
        },
        submitHandler: function (form) {
            $('#loader').show();
            var formData = new FormData(form);
            $.ajax({
                type: "POST",
                url: base_url + "user/doUpdateDiaChi",
                data: formData,
                dataType: 'json',
                mimeType: "multipart/form-data",
                contentType: false,
                cache: false,
                processData: false,
                success: function (data) {
                    $('#loader').fadeOut();
                    if (data.status == true) {
                        location.reload();
                        //gotoLink(base_url_lang+'user/update');
                    } else {
                        $('#content-thongbao').html('Lỗi! Vui lòng cập nhật lại!');
                        call_Popup('#popup-thongbao');
                    }
                }
            });
            return false;
        }
    });
}
function callLogin(){
    call_Popup('#popup-login');
    $('#emailLoginTop').focus();
}
function addCoupon(typeCoupon){
    var coupon = $('#coupon_code').val();
    $('#loader').show();
    $.ajax({
    type: "POST",
    url: base_url_lang+"shop/addCoupon",
    data: {'coupon':coupon, 'typeCoupon': typeCoupon, 'csrf_kfc_name':token_value},
    dataType: 'json',
    success: function(data){
        $('#loader').fadeOut();
        if(data.status){
            //alert('OK');
            location.reload();
        }else{
            if(data.mess == 'productKhuyenmai'){
                $('#content-thongbao-khuyenmai').html(data.mess_more+ "<br/>"+data.productKhuyenmaiName);
                call_Popup('#popup-thongbao-khuyenmai');
            }else{
                $('#content-thongbao').html(data.mess);
                call_Popup('#popup-thongbao');
            }
            
        }
    }
    });
}
function removeCoupon(){
    $('#loader').show();
    $.ajax({
    type: "POST",
    url: base_url+"shop/removeCoupon",
    data: {'id':'coupon','csrf_kfc_name':token_value},
    dataType: 'json',
    success: function(data){
        $('#loader').fadeOut();
        if(data.status){
            location.reload();
        }else{
            $('#content-thongbao').html(data.mess);
            call_Popup('#popup-thongbao');
        }
    }
    });
}
function removeCartKhuyenMai(){
    $('#loader').show();
    $.ajax({
        type: "POST",
        url: base_url+"shop/removeCartKhuyenMai",
        data: {'id':'1','csrf_kfc_name':token_value},
        dataType: 'json',
        success: function(data){
            $('#loader').fadeOut();
            if(data.status){
                if(data.cartID){
                    var listList = data.cartID.split(";");
                    for(i=0;i<listList.length-1;i++){
                        jQuery("#cart_"+listList[i]).remove();
                    }
                    product.update_total_price();
                }
                addCoupon();
            }else{
                location.reload();
            }
        }
    });
}
function updateEmail(){
    $.validator.reposition();
    $("#frm_updateEmail").validate_popover({
        onsubmit: true,
        popoverPosition: 'top',
        rules: {
            emailUpdate:{required:true,email: true},
        },
        messages: {
            emailUpdate:{required:"",email:""},
        },
        submitHandler: function(form){
             $('#loader').show();
             var formData = new FormData(form);
             $.ajax({
                 type: "POST",
                 url: base_url+"user/updateEmail",
                 data: formData,
                 dataType: 'json',
                 mimeType:"multipart/form-data",
                 contentType: false,
                 cache: false,
                 processData:false,
                 success: function(data) {
                     $('#loader').fadeOut();
                     if(data.status ==true){
                        location.reload();
                     }else{
                         $('#content-thongbao').html(data.mess);
                         call_Popup('#popup-thongbao');
                     }
                 }
            });
            return false;
        }
    });
}
function checkOTP(){
    $.validator.reposition();
    $("#frm_checkOTP").validate_popover({
        onsubmit: true,
        popoverPosition: 'top',
        rules: {
            codeOTP:{required:true},
        },
        messages: {
            codeOTP:{required:""},
        },
        submitHandler: function(form){
             $('#loader').show();
             var formData = new FormData(form);
             $.ajax({
                 type: "POST",
                 url: base_url+"user/checkOTP",
                 data: formData,
                 dataType: 'json',
                 mimeType:"multipart/form-data",
                 contentType: false,
                 cache: false,
                 processData:false,
                 success: function(data) {
                     $('#loader').fadeOut();
                     if(data.status ==true){
                        location.reload();
                     }else{
                         $('#error-OTP').html(data.mess);
                         //call_Popup('#popup-thongbao');
                         $('#codeOTP').val('');
                         $('#codeOTP').focus();
                     }
                 }
            });
            return false;
        }
    });
}
function cancelPopupUpdateLogin(){
    $('#loader').show();
    $.ajax({
    type: "POST",
    url: base_url+"user/cancelUpdateEmail",
    data: {'id':'email','csrf_kfc_name':token_value},
    dataType: 'json',
    success: function(data){
        $('#loader').fadeOut();
        if(data.status){
            $.fancybox.close();
        }else{
            $.fancybox.close();
        }
    }
    });
}

function timePayment(){
    $('#loader').show();
    $.ajax({
        type: "POST",
        url: base_url_lang+"shop/timePayment",
        data: {'id':'email','csrf_kfc_name':token_value},
        dataType: 'html',
        success: function(data){
            $('#loader').fadeOut();
            $('#content-popup-dathang').html(data);
            $("#popup-dathang .content-dathangb").mCustomScrollbar({
                scrollInertia: 0,
                theme: "rounded-dark",
                scrollbarPosition: "outside"
            });
            call_Popup('#popup-dathang');
        }
    });
}
function pricePayment(){
    $('#loader').show();
    $.ajax({
        type: "POST",
        url: base_url_lang+"shop/pricePayment",
        data: {'id':'email','csrf_kfc_name':token_value},
        dataType: 'html',
        success: function(data){
            $('#loader').fadeOut();
            $('#content-popup-dathang').html(data);
            $("#popup-dathang .content-dathangb").mCustomScrollbar({
                scrollInertia: 0,
                theme: "rounded-dark",
                scrollbarPosition: "outside"
            });
            call_Popup('#popup-dathang');
        }
    });
}
/*Begin send contact*/
function sendcontact() {
    $.validator.reposition();
    $("#frm_contact").validate_popover({
        onsubmit: true,
        popoverPosition: 'top',
        rules: {
            fullname: {required: true},
            email: {required: true, email: true},
            message: {required: true},
            captcha: {required: true}
        },
        messages: {
            fullname: {required: Msg['contact.fullname']},
            email: {required: Msg['contact.email.correct'], email: Msg['contact.enter_true_email']},
            message: {required: Msg['contact.message']},
            captcha: {required: Msg['contact.captcha']}
        },
        submitHandler: function (form) {
            $('#loader').show();
            var formData = new FormData(form);
            $.ajax({
                type: "POST",
                url: base_url_lang + "do_lienhe",
                data: formData,
                dataType: 'json',
                mimeType: "multipart/form-data",
                contentType: false,
                cache: false,
                processData: false,
                success: function (data) {
                    $('#loader').fadeOut();
                    if (data.status == true) {
                        //console.log(Msg['contact.pop_success']);
                        $('#content-thongbao').html(Msg['contact.pop_success']);
                        call_Popup('#popup-thongbao');
                        $('#frm_contact')[0].reset();
                        //gotoLink(base_url+"do_lienhe");
                    } else {
                        $('#content-thongbao').html(Msg['contact.pop_fail']);
                        call_Popup('#popup-thongbao');
                        //console.log(data.cap);
                    }
                }
            });
            return false;
        }
    });
}

/*End send contact*/
/*Begin register email*/
function news_letter() {
    $.validator.reposition();
    $("#dk_news_email").validate_popover({
        onsubmit: true,
        popoverPosition: 'top',
        rules: {
            news_email: {required: true, email: true},
        },
        messages: {
            news_email: {required: Msg['news.email.correct'], email: Msg['news.enter_true_email']},
        },
        submitHandler: function (form) {
            $('#loader').show();
            var formData = new FormData(form);
            $.ajax({
                type: "POST",
                url: base_url_lang + "do_dk_email",
                data: formData,
                dataType: 'json',
                mimeType: "multipart/form-data",
                contentType: false,
                cache: false,
                processData: false,
                success: function (data) {
                    $('#loader').fadeOut();
                    if (data.status == true) {
                        //console.log(Msg['contact.pop_success']);
                        $('#content-thongbao').html(Msg['news.pop_success']);
                        call_Popup('#popup-thongbao');
                        $('#dk_news_email')[0].reset();
                        //gotoLink(base_url+"do_lienhe");
                    } else {
                        $('#content-thongbao').html(Msg['news.pop_fail']);
                        call_Popup('#popup-thongbao');
                        //console.log(data.cap);
                    }
                }
            });
            return false;
        }
    });
}
/*End register email*/
/*** Quế update number like for news & promotion **/
function update_like(record_id) {
    $('#loader').show();
    $.ajax({
        type: "AJAX",
        url: base_url + "/home/update_num_like/" + record_id,
        data: {record_id: record_id},
        dataType: "json",
        success: function (data) {
            if (data.status == false) {
                $('#loader').fadeOut();
                $("#count_like_" + record_id).html(data.like_old);
                $('#content-thongbao').html(data.mess);
                call_Popup('#popup-thongbao');
                //jAlert(data.mess,Msg['notice']);
            } else {
                $('#loader').fadeOut();
                $("#count_like_" + record_id).html(data.status);
            }

        }

    })
}
/*** Quế update code order party , carrer**/
function apply_cv() {
    $.validator.reposition();
    $("#frm_apply_cv").validate_popover({
        onsubmit: true,
        popoverPosition: 'top',
        rules: {
            vitri_apply: {required: true},
            full_name: {required: true},
            ngay_sinh: {required: true},
            thang_sinh: {required: true},
            nam_sinh: {required: true},
            cmnd: {required: true},
            phone: {required: true},
            email: {required: true, email: true},
            address: {required: true},
            city_apply: {required: true},
            district_apply: {required: true}
        },
        messages: {
            vitri_apply: {required: Msg['td.vitri']},
            full_name: {required: Msg['td.full_name']},
            ngay_sinh: {required: Msg['td.ngay_sinh']},
            thang_sinh: {required: Msg['td.thang_sinh']},
            nam_sinh: {required: Msg['td.nam_sinh']},
            cmnd: {required: Msg['td.cmnd']},
            phone: {required: Msg['td.phone']},
            email: {required: Msg['td.email'], email: Msg['td.email_err']},
            address: {required: Msg['td.address']},
            city_apply: {required: Msg['td.city_apply']},
            district_apply: {required: Msg['td.district_apply']}

        },
        submitHandler: function (form) {
            $('#loader').show();
            var formData = new FormData(form);
            $.ajax({
                type: "POST",
                url: base_url_lang + "home/apply_cv/",
                data: formData,
                dataType: 'json',
                mimeType: "multipart/form-data",
                contentType: false,
                cache: false,
                processData: false,
                success: function (data) {
                    $('#loader').fadeOut();
                    if (data.success == true) {
                        $('#content-camon').html(data.mess);
                        call_Popup('#popup-camon');
                        $('#frm_apply_cv')[0].reset();
                        $('#nameFile').html('');
                        //gotoLink(base_url+"do_lienhe");
                    } else {
                        $('#content-thongbao').html(data.mess);
                        call_Popup('#popup-thongbao');
                    }
                }
            });
            return false;
        }
    });
}

    $('#fileUpload').on('click',function(){
        var form = $('#frm_apply_cv')[0];
        var formData = new FormData(form);
        $('#loader').show();
        $.ajax({
            type: "POST",
            url: base_url_lang+'home/uploadCareer',
            data: formData,
            dataType: 'json',
            mimeType:"multipart/form-data",
            contentType: false,
            cache: false,
            processData:false,
            success: function(data){
                $('#loader').hide();
                if(data.status){
                    $('#nameFile').html(data.mess);
                }else{
                    $('#nameFile').html('');
                    $('#content-thongbao').html(data.mess);
                    call_Popup('#popup-thongbao');
                }
            }
        });
        return false;
    });


/***** giới thiêu  & trang tĩnh ***/
function get_tintucchitiet_ajax(id,alias) {
    $.ajax({
        type: "POST",
        url: base_url_lang + "home/tintucchitiet_ajax/"+id,
        data: {
            'id':id,'csrf_kfc_name': token_value
        },
        dataType: 'html',
        async: true,
        error: function (request, status, error) {

        },
        success: function (data) {
            $("#tab-wap").html(data);
            ChangeUrl('page',base_url_lang+"tintucchitiet/"+id+"/"+ alias +".html")
        }
    });
}

function load_party_district() {
    var city_id = $('#city_id').val();
    $.ajax({
        type: "POST",
        url: base_url_lang + "happy/load_district",
        data: {
            city_id: city_id, 'csrf_kfc_name': token_value
        },
        dataType: 'html',
        async: true,
        error: function (request, status, error) {

        },
        success: function (data) {
            $("#district_id").html(data);
            $('.selectpicker').selectpicker('refresh');
            $("#district_id").trigger('change');
        }
    });
}
function load_district_new() {
    $('#loader').show();
    var city_id = $('#city_id').val();
    $.ajax({
        type: "POST",
        url: base_url_lang + "home/load_district",
        data: {
            city_id: city_id, 'csrf_kfc_name': token_value
        },
        dataType: 'html',
        async: true,
        error: function (request, status, error) {
            $('#loader').fadeOut();
        },
        success: function (data) {
            $('#loader').fadeOut();
            $("#district_id").html(data);
            $('.selectpicker').selectpicker('refresh');
        }
    });
}
function load_district() {
    $('#loader').show();
    var city_id = $('#city_id').val();
    $.ajax({
        type: "POST",
        url: base_url_lang + "home/load_district",
        data: {
            city_id: city_id, 'csrf_kfc_name': token_value
        },
        dataType: 'html',
        async: true,
        error: function (request, status, error) {
            $('#loader').fadeOut();
        },
        success: function (data) {
            $('#loader').fadeOut();
            $("#district_id").html(data);
            $('.selectpicker').selectpicker('refresh');
            $("#district_id").trigger('change');
        }
    });
}

function load_city(city_id) {
    $('#loader').show();
    var city_id = city_id;
    $.ajax({
        type: "POST",
        url: base_url_lang + "home/load_city",
        data: {
            city_id: city_id, 'csrf_kfc_name': token_value
        },
        dataType: 'html',
        async: true,
        error: function (request, status, error) {
            $('#loader').fadeOut();
        },
        success: function (data) {
            $('#loader').fadeOut();
            $("#city_id").html(data);
            $('.selectpicker').selectpicker('refresh');
            $("#city_id").trigger('change');
        }
    });
}
function load_stores_party_info() {
    $('#loader').show();
    var city_id = $('#city_id').val();
    var province_id = $('#district_id').val();
    if (province_id == undefined) {
        province_id = 0;
    }
    $.ajax({
        type: "POST",
        url: base_url_lang + "happy/load_stores_party_info",
        data: {
            city_id: city_id,
            province_id: province_id, 'csrf_kfc_name': token_value
        },
        dataType: 'html',
        async: true,
        error: function (request, status, error) {
            $('#loader').fadeOut();
        },
        success: function (data) {
            $('#loader').fadeOut();
            $("#location_id").html(data);
            $('.selectpicker').selectpicker('refresh');
        }
    });
}

function send_party() {
    $.validator.reposition();
    $("#frm_party").validate_popover({
        onsubmit: true,
        popoverPosition: 'top',
        rules: {
            name_child: {required: true},
            birthday: {required: true},
            name_parent: {required: true},
            mobile: {required: true, number: true},
            order_address: {required: true},
            email_ct: {required: true, email: true},
            order_date: {required: true},
            number_party: {required: true, number: true, range: [10, 1000]}
        },
        messages: {
            name_child: {required: Msg['contact.enter_name_child']},
            birthday: {required: Msg['contact.enter_age']},
            name_parent: {required: Msg['contact.enter_name_parent']},
            order_address: {required: Msg['contact.enter_order_address']},
            mobile: {required: Msg['contact.enter_mobile'], number: Msg['contact.enter_true_mobile']},
            email_ct: {required: Msg['contact.enter_email'], email: Msg['contact.enter_true_email']},
            number_party: {
                required: Msg['contact.enter_number_party'],
                number: Msg['contact.enter_true_number_party'],
                range: Msg['contact.enter_true_number_min']
            },
            order_date: {required: Msg['contact.enter_order_date']}
        },
        submitHandler: function (form) {
            $('#loader').show();
            var formData = new FormData(form);
            $.ajax({
                type: "POST",
                url: base_url_lang + "happy/send_party",
                data: formData,
                dataType: 'json',
                mimeType: "multipart/form-data",
                contentType: false,
                cache: false,
                processData: false,
                success: function (data) {
                    $('#loader').fadeOut();
                    if (data.success == true) {
                        //console.log(Msg['contact.pop_success']);
                        $('#content-thongbao').html(Msg['contact.send_party_successful']);
                        call_Popup('#popup-thongbao');
                        $('#frm_party')[0].reset();
                        //gotoLink(base_url+"do_lienhe");
                    } else {
                        $('#content-thongbao').html(Msg['contact.send_party_unsuccessful']);
                        call_Popup('#popup-thongbao');
                        //console.log(data.cap);
                    }
                }
            });
            return false;
        }
    });
}
/** LOAD */
function load_district_checkout(id,value) {
    $('#loader').show();
    $.ajax({
        type: "POST",
        url: base_url_lang + "user/get_district",
        data: {'id': id,'district_id':value,'csrf_kfc_name': token_value},
        dataType: 'html',
        success: function (html) {
            $('#loader').fadeOut();
            $('#ck_district_id').html(html);
            $('.selectpicker').selectpicker('refresh');
        }
    });
}
function load_ward_checkout(id,value){
    $('#loader').show();
    $.ajax({
        type: "POST",
        url: base_url_lang + "user/get_ward",
        data: {'id': id,'ward_id':value,'csrf_kfc_name': token_value},
        dataType: 'html',
        success: function (html) {
            $('#loader').fadeOut();
            $('#ck_ward_id').html(html);
            $('.selectpicker').selectpicker('refresh');
            $('.pricePayment').html('');
        }
    });
}

function load_district_user(id,value) {
    $('#loader').show();
    $.ajax({
        type: "POST",
        url: base_url_lang + "user/get_district",
        data: {'id': id,'district_id':value,'csrf_kfc_name': token_value},
        dataType: 'html',
        success: function (html) {
            $('#loader').fadeOut();
            $('#district_id').html(html);
            $('.selectpicker').selectpicker('refresh');
        }
    });
}
function load_ward_user(id,value){
    $('#loader').show();
    $.ajax({
        type: "POST",
        url: base_url_lang + "user/get_ward",
        data: {'id': id,'ward_id':value,'csrf_kfc_name': token_value},
        dataType: 'html',
        success: function (html) {
            $('#loader').fadeOut();
            $('#ward_id').html(html);
            $('.selectpicker').selectpicker('refresh');
            $('.pricePayment').html('');
        }
    });
}
function load_ward_price(id){
    $('#loader').show();
    $.ajax({
        type: "POST",
        url: base_url_lang + "user/get_ward_price",
        data: {'id': id,'csrf_kfc_name': token_value},
        dataType: 'html',
        success: function (html) {
            $('#loader').fadeOut();
            $('.pricePayment').html(html);
        }
    });
}
function saveUserAddress() {
    $.validator.reposition();
    console.log(Msg['member.user_name_err']);
    $("#add_new_contact").validate_popover({
        onsubmit: true,
        popoverPosition: 'top',
        rules: {
            user_name: {required: true},
            user_email: {required: true, email: true},
            user_city: {required: true},
            user_address: {required: true},
            user_phone: {required: true, minlength: 10, maxlength: 11},
        },
        messages: {
            //name_child: { required: Msg['contact.enter_name_child']},
            user_name: {required: Msg['member.user_name_err']},
            user_email: {required: Msg['member.user_email_err'], email: Msg['member.user_true_email_err']},
            user_city: {required: Msg['member.user_city_err']},
            user_address: {required: Msg['member.user_address_err']},
            user_phone: {required: Msg['member.user_phone_err'], minlength:Msg['register.phone.correct'],maxlength:Msg['register.phone.correct']},
        },
        submitHandler: function (form) {
            $('#loader').show();
            var formData = new FormData(form);
            $.ajax({
                type: "POST",
                url: base_url + "user/doThemDiaChi",
                data: formData,
                dataType: 'json',
                mimeType: "multipart/form-data",
                contentType: false,
                cache: false,
                processData: false,
                success: function (data) {
                    $('#loader').fadeOut();
                    if (data.status == true) {
                        location.reload();
                        //gotoLink(base_url_lang+'user/update');
                    } else {
                        //$('#content-thongbao').html(Msg['login.error']);
                        //call_Popup('#popup-thongbao');
                    }
                }
            });
            return false;
        }
    });
}
function deleteAddressUser(id) {
    $('#loader').show();
    $.ajax({
        type: "POST",
        url: base_url + "user/doDeleteAddressUser",
        data: {'id': id, 'csrf_kfc_name': token_value},
        dataType: 'json',
        success: function (data) {
            $('#loader').fadeOut();
            if (data.status == true) {
                $("#show_address_user_db_" + id).remove();
                location.reload();
            } else {
                //No thing
            }
        }
    });
}
function view_messgage(){
   var link =  $("#view_messgage").data('id');
}
/*huong dan su dung tab begin*/
$(document).ready(function () {
    $('#btn_manual').addClass('btn_manual_active');
    $('#btn_manual').click(function () {
        $('#btn_tearm').removeClass('btn_manual_active').addClass('btn_manual');
        $('#btn_manual').addClass('btn_manual_active').removeClass('btn_manual');

        $('#tearm').hide();
        $('#manual').show('slow');
    });
    $('#btn_tearm').click(function () {
        $('#btn_manual').removeClass('btn_manual_active').addClass('btn_manual');
        $('#btn_tearm').addClass('btn_manual_active').removeClass('btn_manual');

        $('#manual').hide();
        $('#tearm').show('slow');
    });
    $('#tearm').hide();
});
/*huong dan su dung end*/
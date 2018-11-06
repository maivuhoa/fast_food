function init_smoothscroll() {
    var platform = navigator.platform.toLowerCase();
    if ((platform.indexOf('win') == 0 || platform.indexOf('linux') == 0) && !Modernizr.touch) {
        if ($.browser.webkit) {
            $.webkitSmoothScroll();
        }
    }
}
function init_Banner() {
    if ($(".banner .fadeOut").length) {
        $('.banner .fadeOut').owlCarousel({
            items: 1,
            //animateOut: 'fadeOut',
            loop: true,
            margin: 0,
            autoplay: true,
            smartSpeed: 1250,
            fluidSpeed: 1250,
            autoplaySpeed: 1250,
            navSpeed: 1250,
            dotsSpeed: 1250,
            dragEndSpeed: 1250,
            //autoplayTimeout:1250,
            autoplayHoverPause: true
        });
    }
}

function init_menuScroll() {
    if ($("#mainmenu").length) {
        var owlmenu = $('#mainmenu .owl-carousel');
        owlmenu.owlCarousel({
            margin: 0,
            loop: false,
            autoWidth: false,
            nav: false,
            dots: false,
            responsive: {
                0: {
                    items: 2
                },
                600: {
                    items: 2
                },
                992: {
                    items: 6
                }
            }
        })
        $(".owlmenu-btn.right").click(function() {
            owlmenu.trigger('next.owl');
        })
        $(".owlmenu-btn.left").click(function() {
            owlmenu.trigger('prev.owl');
        })
    }
}

function init_mapGallery() {
    $(".store_list").mCustomScrollbar({
        scrollInertia: 0,
        theme: "dark-3",
    });
    $('#carousel').carousel({
        interval: 2000
    });
    if ($(".store_list_sub").length) {
        $(".store_list_sub li").click(function () {
            $(".store_list_sub li").removeClass("active");
            $(this).addClass("active");
        })
    }
    if ($(".map_gallery_box").length) {
        var owlmap_gallery = $('.map_gallery_box .owl-carousel');
        owlmap_gallery.owlCarousel({
            items: 2,
            margin: 15,
            loop: false,
            autoWidth: false,
            nav: false,
            dots: false
        })
        $(".owlmap-gallery-btn.right").click(function() {
            owlmap_gallery.trigger('next.owl');
        })
        $(".owlmap-gallery-btn.left").click(function() {
            owlmap_gallery.trigger('prev.owl');
        });

        $("[rel=map-gallery]").fancybox({
            margin: 40,
            padding: 0,
            openEffect: 'fade',
            closeEffect: 'none',
            nextEffect: 'none',
            prevEffect: 'none'
        });
    }
};

function init_thucdonHome() {
    if ($("#menu-home").length) {
        var owlmenuhome = $('#menu-home .owl-carousel');
        owlmenuhome.owlCarousel({
            margin: 18,
            loop: false,
            autoWidth: false,
            nav: false,
            dots: false,
            responsive: {
                0: {
                    items: 1
                },
                360: {
                    items: 2
                },
                600: {
                    items: 2
                },
                992: {
                    items: 3
                }
            }
        })
        $("#menu-home .owlmenu-home-btn.right").click(function() {
            owlmenuhome.trigger('next.owl');
        })
        $("#menu-home .owlmenu-home-btn.left").click(function() {
            owlmenuhome.trigger('prev.owl');
        })
    }
    if ($("#main-thucdon").length) {
        var owl_mainthucdon = $('#main-thucdon .owl-carousel');
        owl_mainthucdon.owlCarousel({
            margin: 0,
            loop: false,
            autoWidth: false,
            nav: false,
            dots: false,
            responsive: {
                0: {
                    items: 2
                },
                360: {
                    items: 2
                },
                600: {
                    items: 3
                },
                992: {
                    items: 5
                }
            }
        })
        $("#main-thucdon .owlmenu-home-btn.right").click(function() {
            owl_mainthucdon.trigger('next.owl');
        })
        $("#main-thucdon .owlmenu-home-btn.left").click(function() {
            owl_mainthucdon.trigger('prev.owl');
        })
    }
}

function tab_listthucdon() {
    $('.menu-list-thuc-don .selectpicker').on('changed.bs.select', function(e) {
        e.preventDefault();
        var selected = $(this).find("option:selected");
        $(selected).tab('show');
    });
}

function tab_optionpay() {
    $('.option-pay input').on('change', function() {
        var selected = $(".option-pay input:checked");
        $(selected).tab('show');
    });
    $('.b-don-hang input').on('change', function() {
        var selected = $(".b-don-hang input:checked");
        //alert('xxx');
        $(selected).tab('show');
    });
    $(".httt-new .input-block input").focus(function() {
        $(".httt-new .right-block #card").removeClass().addClass($(this).attr('class'));
    });
}

function affixNav() {
    if ($(window).width() > 991) {
        var navbar = $('nav.nav-fix'),
            distance = navbar.offset().top,
            $window = $(window);
        $window.scroll(function() {
            if ($window.scrollTop() >= distance) {
                navbar.removeClass('navbar-fixed-top').addClass('navbar-fixed-top');
                $("body").css("padding-top", $(".nav-fix").outerHeight(true));
            } else {
                navbar.removeClass('navbar-fixed-top');
                $("body").css("padding-top", "0px");
            }
        });
    }
}

function scroll_top() {
    if ($(window).width() <= 991) var top = 80;
    else
        var top = -80;
    $('.scroll-top').affix({
        offset: {
            top: $(".nav-fix").outerHeight(true),
            bottom: function() {
                return (this.bottom = $('footer').outerHeight(true) + top)
            }
        }
    })
    $('.scroll-top').click(function() {
        $("html, body").animate({
            scrollTop: 0
        }, "slow");
        return false;
    })
}

function init_popover() {
    $('[rel=popover-user]').popover({
        content: function() {
            return $('#user-info').html();
        },
        html: true,
        title: false,
        trigger: 'focus',
        placement: 'bottom',
        template: '<div class="popover popover-user-info" role="tooltip"><div class="arrow"></div><div class="popover-content"></div></div>'
    });
}

function init_popup_Thucdon() {
    $('[rel=popup-thuc-don]').hover(function() {
        $("#menu_thucdon").addClass("actived");
        $("#popup-thuc-don").stop().slideDown(200);
        $("#popup-thuc-don").hover(function() {
            $("#popup-thuc-don").addClass("hover");
        }, function() {
            $("#popup-thuc-don").removeClass("hover");
            $("#menu_thucdon").removeClass("actived");
            $("#popup-thuc-don").stop().slideUp(200);
        });
    }, function() {
        setTimeout(function() {
            if (!$("#popup-thuc-don").hasClass("hover")) {
                $("#menu_thucdon").removeClass("actived");
                $("#popup-thuc-don").stop().slideUp(200);
            }
        }, 100);
    });
}

function init_popup_Thucvienupload() {
    $('[rel=popup-upload]').click(function() {
        $("#popup-upload").slideDown("fast");
    });
}

function init_menuMobile() {
    $('.btn_menu_mobile').click(function() {
        $(".menuMobile").removeClass("menuH");
    });
    $('.menuMobile .btn-close-menu').click(function() {
        $(".menuMobile").addClass("menuH");
    });


    //$('.b-don-hang .content .lc-1').click(function() {
    //    $(".b-don-hang .tab-content-1 .left-1").addClass("active");
    //    $(".b-don-hang .tab-content-2 .left-2,.b-don-hang .tab-content-3 .left-3,.b-don-hang .tab-content-2,.b-don-hang .tab-content-3").removeClass("active");
    //});
    //
    //$('.b-don-hang .content .lc-2').click(function() {
    //    $(".b-don-hang .tab-content-2 .left-2,.b-don-hang .tab-content-2").addClass("active");
    //    $(".b-don-hang .tab-content-1 .left-1,.b-don-hang .tab-content-3 .left-3,.b-don-hang .tab-content-1,.b-don-hang .tab-content-3").removeClass("active");
    //});
    //
    //$('.b-don-hang .content .lc-3').click(function() {
    //    $(".b-don-hang .tab-content-3 .left-3,.b-don-hang .tab-content-3").addClass("active");
    //    $(".b-don-hang .tab-content-1 .left-1,.b-don-hang .tab-content-2 .left-2,.b-don-hang .tab-content-1,.b-don-hang .tab-content-2").removeClass("active");
    //});
}

function init_newAddress() {
    $('#new-address').click(function() {
        $('.new-address-form').addClass('active');
    });
    $(".dia-chi-giao-hang #new-address").click(function(){
        $(".new-address-form").slideDown("slow");
    });
    $(".dia-chi-giao-hang #edit_user_address").click(function(){
        $('.updateAddressblock').stop(true, false).slideDown();
    });
}

function call_Popup(url) {
    if (url == '#popup-location') {
        var toppopup = 0.3;
    } else {
        var toppopup = 0.5;
    }
    $.fancybox({
        href: url,
        topRatio: toppopup,
        margin: 0,
        padding: 0,
        openEffect: 'fade',
        closeEffect: 'fade',
        width: '100%',
        height: '100%',
        modal: true,
        closeBtn: false,
        helpers: {
            overlay: {
                locked: true // try changing to true and scrolling around the page
            }
        }
    });
}

function call_Popup_CV(url, cv_id) {
    $("#cvonline_id").val(cv_id);
    $.ajax({
        type: "POST",
        url: base_url_lang +"home/load_career",
        data: {
            cv_id:cv_id,'csrf_kfc_name':token_value
        },
        dataType: 'json',
        async:true,
        error: function (request, status, error){
            $('#loader').fadeOut();
        },
        success: function(data) {
            $('#loader').fadeOut();
            $("#locationApply").val(data.name);
            $("#category_careers_id").val(data.category_careers_id);
            if(data.category_careers_id == '1'){
                $("#send-cv-div").hide();
            }else{
                $("#send-cv-div").show();
            }
        }

    });
    call_Popup(url);
}

function call_Modal(url) {
    $(url).modal({
        backdrop: false,
        show: true,
    });
}

function call_Popupmap(url) {
    $.fancybox({
        href: url,
        width: '100%',
        height: '100%',
        openEffect: 'fade',
        closeEffect: 'none',
    });
}

function check_input_value_email() { /*Begin animation dang ky*/
    $('#emailLoginTop').blur(function() {
        if ($('#emailLoginTop').val() == '') {
            $('#emailLoginTop').addClass('empty');
        } else {
            $('#emailLoginTop').removeClass('empty');
        }
    })
    $('[name="email"],[name="password"],[type="text"]').blur(function() {
        if ($(this).val() == '') {
            $(this).addClass('empty');
        } else {
            $(this).removeClass('empty');
        }
    }) /*End animation dang ky*/
}

function check_input_value_password() { /*Begin animation dang ky*/
    $('#passLoginTop').blur(function() {
        if ($('#passLoginTop').val() == '') {
            $('#passLoginTop').addClass('empty');
        } else {
            $('#passLoginTop').removeClass('empty');
        }
    }) /*End animation dang ky*/
}

function check_input_value_card_seria() { /*Begin animation dang ky*/
    $('#card_seria').blur(function() {
        if ($('#card_seria').val() == '') {
            $('#card_seria').addClass('empty');
        } else {
            $('#card_seria').removeClass('empty');
        }
    }) /*End animation dang ky*/
}

function check_input_value_card_member() { /*Begin animation dang ky*/
    $('#card_member').blur(function() {
        if ($('#card_member').val() == '') {
            $('#card_member').addClass('empty');
        } else {
            $('#card_member').removeClass('empty');
        }
    }) /*End animation dang ky*/
}

function check_input_value_card_date() { /*Begin animation dang ky*/
    $('#card_date').blur(function() {
        if ($('#card_date').val() == '') {
            $('#card_date').addClass('empty');
        } else {
            $('#card_date').removeClass('empty');
        }
    }) /*End animation dang ky*/
}

function check_input_value_ccv() { /*Begin animation dang ky*/
    $('#ccv').blur(function() {
        if ($('#ccv').val() == '') {
            $('#ccv').addClass('empty');
        } else {
            $('#ccv').removeClass('empty');
        }
    }) /*End animation dang ky*/
}

function call_product(id) {
    jQuery.ajax({
        url: base_url_lang + 'product/details/' + id,
        type: 'GET',
        beforeSend: function() {
            $('#loader').fadeIn();
            jQuery("#popup-product-cart").html('');
        },
        error: function() {
            $("#loader").fadeOut();
        },
        success: function(resp) {
            $('#loader').fadeOut();
            jQuery("#popup-product-cart").html(resp);
            incrementing();
            init_mScrollbar();
            tab_listthucdon();
            call_Popup('#popup-product-cart');

            $('#btn-right').attr('data-id', $('.call-trigger[data-id=' + id + ']').next().data('id'));
            $('#btn-left').attr('data-id', $('.call-trigger[data-id=' + id + ']').prev().data('id'));
        }
    });
}


function call_combo(id) {
    jQuery.fancybox.update();
    jQuery.ajax({
        url: base_url_lang + 'product/combo/' + id,
        type: 'GET',
        beforeSend: function() {
            $('#loader').fadeIn();
            jQuery("#popup-product-cart").html('');
        },
        error: function() {
            $("#loader").fadeOut();
        },
        success: function(resp) {
            $('#loader').fadeOut();
            jQuery("#popup-product-cart").html(resp);
            incrementing();
            init_mScrollbar();
            tab_listthucdon();
            call_Popup('#popup-product-cart');

            $('#btn-right-com').attr('data-id', $('.call-combo[data-id=' + id + ']').next().data('id'));
            $('#btn-left-com').attr('data-id', $('.call-combo[data-id=' + id + ']').prev().data('id'));
        }
    });
}

function init_mScrollbar() {
    if ($(window).width() > 991) {
        $(".popup-sp .list-thuc-don-items").mCustomScrollbar({
            axis: "x",
            theme: "3d-thick",
            scrollInertia: 0,
            advanced: {
                autoExpandHorizontalScroll: true
            }
        });
    } else
        $(".popup-sp .list-thuc-don-items").mCustomScrollbar('destroy');
    $("#order-policy .scroll-kiki").mCustomScrollbar({
        scrollInertia: 0,
        theme: "rounded-dark",
        scrollbarPosition: "outside"
    });
}

function incrementing() {
    $(".numbers-row").append('<a class="btn inc button">+</a><a class="btn dec button">−</a>');
    $(".numbers-row .button").on("click", function() {
        var $button = $(this);
        var oldValue = $button.parent().find("input").val();
        if ($button.text() == "+") {
            var newVal = parseFloat(oldValue) + 1;
        } else {
            // Don't allow decrementing below zero
            if (oldValue > 1) {
                var newVal = parseFloat(oldValue) - 1;
            } else {
                newVal = 1;
            }
        }
        $button.parent().find("input").val(newVal);
    });
    $(".quantity-cart").append('<a class="btn inc button">+</a><a class="btn dec button">−</a>');
    $(".quantity-cart .button").on("click", function() {
        var $button = $(this);
        var oldValue = $button.parent().find("input").val();
        if ($button.text() == "+") {
            var newVal = parseFloat(oldValue) + 1;
        } else {
            // Don't allow decrementing below zero
            if (oldValue > 1) {
                var newVal = parseFloat(oldValue) - 1;
            } else {
                newVal = 1;
            }
        }
        $button.parent().find(".quantity").val(newVal);
        product.change_quantity(jQuery(this).parent().data('id'));

    });
}

function changeElement(e) {
    if (($(window).width()) <= 991) {
        $('.locationbox-mobile .selectpicker').selectpicker('destroy');
        $('.nav-header .navbar-top-wap').prependTo(".menuMobile #navbar_mobile");
        var langbox = $(".langbox-mobile");
        var locationbox = $(".locationbox-mobile");
        var userbox = $(".userbox-mobile");
        $(".navbar-top-wap .row").html([langbox, locationbox, userbox]);
        $('.locationbox-mobile select').addClass('selectpicker').selectpicker('render');
        $('.return-histories').appendTo("#content-mobile");
    }
    if (($(window).width()) <= 599) {
        $('.return-histories').prependTo("#content-mobile");
        $('.top-mobile button').appendTo(".bot-mobile");
        $('.bot-mobile a').appendTo(".top-mobile");

        $('.b-don-hang .tab-content-1').appendTo(".b-don-hang .left-content-1");
        $('.b-don-hang .tab-content-2').appendTo(".b-don-hang .left-content-2");
        $('.b-don-hang .tab-content-3').appendTo(".b-don-hang .left-content-3");
    }
}

function responsive(e) {
    $('.selectpicker').selectpicker({
        container: 'body',
    });
    if ($(".fancybox").length) {
        $(".fancybox").fancybox({
            openEffect: 'fade',
            closeEffect: 'none'
        });
    }
    $(".btn-close").click(function(){
        $.validator.hide_validate_popover($(".error"));
    });
}
function ChangeUrl(page, url) {

    if (typeof (history.pushState) != "undefined") {
        var obj = { Page: page, Url: url };
        history.pushState(obj, obj.Page, obj.Url);
    }
}

$(document).ready(function(e) {
    init_smoothscroll();
    responsive();
    affixNav()
    init_Banner();
    init_menuScroll();
    init_mapGallery();
    init_thucdonHome();
    init_popover();
    init_popup_Thucdon();
    incrementing();
    init_mScrollbar();
    init_menuMobile();
    //init_httt();
    tab_listthucdon();
    tab_optionpay();
    check_input_value_email();
    check_input_value_password();
    check_input_value_card_seria();
    check_input_value_card_member();
    check_input_value_card_date();
    check_input_value_ccv();
    scroll_top();
    init_newAddress();
})
$(window).load(function(e) {
    changeElement();
})
$(window).resize(function(e) {
    responsive();
    init_mScrollbar();
});
$(window).scroll(function() {
    //$.validator.hide_validate_popover();
    //$.validator.reposition();
});
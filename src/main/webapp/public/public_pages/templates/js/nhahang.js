/** MAP NHA HANG --------------------------------------------------------------------**/
function load_maps() {
    $('#loader').show();
    $('.informap-mobile-block').remove();
    $('.map_gallery').remove();
    var city_id = $('#city_id').val();
    var province_id = $('#district_id').val();
    if (province_id == undefined) {
        province_id = 0;
    }
    $.ajax({
        type: "POST",
        url: base_url_lang + "home/load_maps",
        data: {
            city_id: city_id,
            province_id: province_id,
            'csrf_kfc_name': token_value
        },
        dataType: 'html',
        async: true,
        error: function (request, status, error) {
            $('#loader').fadeOut();
        },
        success: function (data) {
            $('#loader').fadeOut();
            $("#load_maps_kfc").html(data);
            initialize();
        }
    });
}
function load_stores_map() {
    $('#loader').show();
    var city_id = $('#city_id').val();
    var province_id = $('#district_id').val();
    var alias_city = $('select#city_id option:selected').attr('data-name');
    var alias_district = $('select#district_id option:selected').attr('data-name');

    if (province_id == undefined) {
        province_id = 0;
    }
    if(alias_district == undefined){
        alias_district = '';
    }else{
        alias_district = '/'+alias_district+'.html';
    }
    if(alias_city == 'all'){
        ChangeUrl('page',base_url_lang+ Msg['stores'] + ".html");
    }else{
        ChangeUrl('page',base_url_lang+ Msg['stores_link'] + "/"+ alias_city+"/"+city_id+"/"+province_id+alias_district);
    }
    $.ajax({
        type: "POST",
        url: base_url_lang + "home/storescity_ajax/"+alias_city + "/"+city_id+"/"+province_id,
        data: {
            'csrf_kfc_name': token_value,'alias':alias_city,'city_id':city_id,'province_id':province_id
        },
        dataType: 'html',
        async: true,
        error: function (request, status, error) {

        },
        success: function (data) {
            $('#loader').fadeOut();
            $("#load_map_city_ajax").html(data);
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-43944041-1']);
            _gaq.push(['_trackPageview']);
            (function() {
                var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })();
        }
    });
}

function load_stores_info() {
    $('#loader').show();
    var city_id = $('#city_id').val();
    var province_id = $('#district_id').val();
    var alias_city = $('select#city_id option:selected').attr('data-name');
    var alias_district = $('select#district_id option:selected').attr('data-name');
    var link = '';
    if(alias_city!=undefined)
        link = base_url_lang+ alias_city;
    if(alias_district!=undefined)
        link = link+'/'+alias_district;
    if(link!='')
        ChangeUrl('stores_detail',link);
    if (province_id == undefined) {
        province_id = 0;
    }
    $.ajax({
        type: "POST",
        url: base_url_lang + "home/load_stores_info",
        data: {
            city_id: city_id,
            province_id: province_id,
            'csrf_kfc_name': token_value
        },
        dataType: 'html',
        async: true,
        error: function (request, status, error) {
            $('#loader').fadeOut();
        },
        success: function (data) {
            $('#loader').fadeOut();
            $("#load_nhahang_ajax").html(data);
        }
    });
}
function load_images_map(location_id) {
    $('#loader').show();
    $.ajax({
        type: "POST",
        url: base_url_lang + "home/load_images_map",
        data: {
            location_id: location_id,
            'csrf_kfc_name': token_value
        },
        dataType: 'html',
        async: true,
        error: function (request, status, error) {
            $(".store_left_bottom").hideLoading();
        },
        success: function (data) {
            $('#loader').fadeOut();
            $(".store_image_map").html(data);
        }
    });
}
function load_store_search(city_id) {
    var alias = $('select#load_store_search_id option:selected').attr('data-name');
    window.location.href = base_url_lang+ Msg['stores_link'] + '/'+ alias +'/'+city_id+'.html';
}
/** LDC -------------------------------------------------------------------------------*/
function getLocation(){
    $('html, body').animate({
        scrollTop: $("#map_detail").offset().top-120
    }, 1000);
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}
function showPosition(position) {
    var lat = position.coords.latitude;
    var long = position.coords.longitude;
    loadViewMap();
    $.ajax({
        type: "POST",
        url: base_url_lang +"home/load_location",
        data: {
            lat:lat,long:long,'csrf_kfc_name':token_value
        },
        dataType: 'html',
        async:true,
        error: function (request, status, error){
            $('#loader').fadeOut();
        },
        success: function(data) {
            $('#loader').fadeOut();
            $("#load_nhahang_ajax").html(data);
            load_maps_location(lat,long);
        }
    });
}
function load_maps_location(lat,long){
    $('#loader').show();
    $.ajax({
        type: "POST",
        url: base_url_lang+"home/load_maps_location",
        data: {
            lat:lat,
            long:long,
            'csrf_kfc_name':token_value
        },
        dataType: 'html',
        async:true,
        error: function (request, status, error){
            $('#loader').fadeOut();
        },
        success: function(data) {
            $('#loader').fadeOut();
            $("#load_maps_kfc").html(data);
            initialize();
        }
    });
}
function loadViewMap(){
    $.ajax({
        type: "POST",
        url: base_url_lang+"home/loadViewMap",
        data: {
            'csrf_kfc_name':token_value
        },
        dataType: 'html',
        async:true,
        error: function (request, status, error){
            $('#loader').fadeOut();
        },
        success: function(html) {
            $("#map_detail").html(html);
        }
    });
}
function load_location_detail(alias,id){
    var alias_city = $('select#city_id option:selected').attr('data-name');
    var alias_district = $('select#district_id option:selected').attr('data-name');
    var city_id = $('#activeAddress_'+id).data('city');
    var district_id = $('#activeAddress_'+id).data('district');
    
    if(alias_district == undefined){
        alias_district = '';
    }else{
        alias_district = alias_district+'/';
    }
    ChangeUrl('page',base_url_lang + Msg['stores_link'] + '/'+alias_city+'/'+city_id+'/'+district_id+'/'+0+'/'+alias_district+alias+'.html');
    $('#loader').show();
    $('html, body').animate({
        scrollTop: $("#map_detail").offset().top-120
    }, 1000);
    $.ajax({
        type: "POST",
        url: base_url_lang+"home/load_location_id",
        data: {
            id:id,
            'csrf_kfc_name':token_value
        },
        dataType: 'html',
        error: function (request, status, error){
            $('#loader').fadeOut();
        },
        success: function(html) {
            $('#loader').fadeOut();
            $("#load_maps_kfc").html('');
            $('.store_list .clearfix').removeClass('active');
            $('#activeAddress_'+id).addClass('active');
            $('#district_id option[value="'+district_id +'"').attr("selected", true);
            $('#city_id option[value="'+city_id +'"').attr("selected", true);
            $('select.selectpicker').selectpicker('refresh');
            $("#map_detail").html(html);
            var width_map = $("#map_detail").width();
            var height_map = $("#map_detail").height();
            $("#map-canvas").css({ 'width': width_map, 'height': height_map });
            initialize();
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-43944041-1']);
            _gaq.push(['_trackPageview']);
            (function() {
                var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })();

        }
    });
}
function load_store_city(alias,city_id){
    location.href = base_url_lang+ Msg['stores_link'] + "/"+ alias+"/"+city_id;
}
function load_store_city_new_ajax(alias,city_id){

    if(alias == 'all'){
        ChangeUrl('page',base_url_lang+ + Msg['stores'] + ".html");
    }else{
        ChangeUrl('page',base_url_lang+ + Msg['stores_link'] + "/"+ alias+"/"+city_id+'.html');
    }
    $.ajax({
        type: "POST",
        url: base_url_lang + "home/storescity_ajax/"+alias + "/"+city_id ,
        data: {
            'csrf_kfc_name': token_value,'alias':alias,'city_id':city_id
        },
        dataType: 'html',
        async: true,
        error: function (request, status, error) {

        },
        success: function (data) {
            //$("#city_id").children().removeAttr("selected");
            $('#city_id option[value="'+city_id +'"').attr("selected", true);
            //$('.selectpicker').selectpicker('refresh');
            load_district();
            $("#load_map_city_ajax").html(data);
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-43944041-1']);
            _gaq.push(['_trackPageview']);
            (function() {
                var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })();
        }
    });
}
function load_store_city_ajax(alias,city_id){
    if(alias == 'all'){
        ChangeUrl('page',base_url_lang + Msg['stores']+".html");
    }else{
        ChangeUrl('page',base_url_lang + Msg['stores_link'] + "/"+ alias+"/"+city_id+'.html');
    }
    $.ajax({
        type: "POST",
        url: base_url_lang + "home/storescity_ajax/"+alias + "/"+city_id ,
        data: {
            'csrf_kfc_name': token_value,'alias':alias,'city_id':city_id
        },
        dataType: 'html',
        async: true,
        error: function (request, status, error) {
        },
        success: function (data) {
            //$("#city_id").children().removeAttr("selected");
            $('#city_id option[value="'+city_id +'"').attr("selected", true);
            //$('.selectpicker').selectpicker('refresh');
            load_district();
            $("#load_map_city_ajax").html(data);
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-43944041-1']);
            _gaq.push(['_trackPageview']);
            (function() {
                var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })();
        }
    });
}


/** THE END*/
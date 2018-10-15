function call_item_Giohang(){
    $("#popup-gio-hang").stop().slideDown(300);
}
function hidden_item_Giohang(){
    $("#popup-gio-hang").stop().slideUp(300);
}
var product = {
    changed_product:new Array(),
    check_payment:function(){
        var selected = jQuery("input[name='httt']:checked").val();
        if(selected == 1){
            jQuery("#payment_credit_div").hide();
        }
        else {
            //jQuery("#payment_credit_div").show();
        }
    },
    edit_combo_cart:function(id){
        jQuery.ajax({
            url:base_url_lang+'product/edit_combo/'+id,
            type:'GET',
            beforeSend:function(){
                $('#loader').fadeIn();
                jQuery("#popup-product-cart").html('');
            },
            error:function(){
                $("#loader").fadeOut();
            },
            success:function(resp){
                $('#loader').fadeOut();
                jQuery("#popup-product-cart").html(resp);
                incrementing();
                init_mScrollbar();
                tab_listthucdon();
                call_Popup('#popup-product-cart');
            }
        });
    },
    update_combo:function(id){
        var quantity = jQuery("#update_combo_quantity").val();
        var price = jQuery(".price_value").val();
        var type = jQuery(".type").val();
        var cart_id = jQuery(".cart_id").val();
        var productType = jQuery(".productType").val();
        var productKhuyenmai = jQuery(".productKhuyenmai").val();
        var post_data = {
                quantity:quantity,
                price:price,
                type:type,
                productType:productType,
                productKhuyenmai:productKhuyenmai,
                combo:id,
                cart_id:cart_id,
                change_product:product.product_change,
                combo_product:product.combo_product,
                combo_product_id:product.combo_product_id,
                combo_group:product.combo_product_group,
                product_addmore:product.product_addmore
            };
        jQuery.ajax({
            url:base_url_lang+'product/update_combo_cart',
            type:'POST',
            dataType:'json',
            data:post_data,
            beforeSend:function(){
                jQuery('#loader').fadeIn();
            },
            error:function(){
                jQuery('#loader').fadeOut();
            },
            success:function(resp){
                $('#loader').fadeOut();
                if(resp.success){
                    $.fancybox.close();
                    window.location = document.URL;
                }
                else {
                    $('#content-modal-thongbao').html(resp.message);
                    call_Modal('#modal-thongbao');
                }
            }
        })
    },
    update_combo_mobile:function(id,redirect){
        if(!redirect){
            redirect = '';
        }
        var quantity = jQuery("#update_combo_quantity").val();
        var price = jQuery(".price_value").val();
        var type = jQuery(".type").val();
        var cart_id = jQuery(".cart_id").val();
        var productType = jQuery(".productType").val();
        var productKhuyenmai = jQuery(".productKhuyenmai").val();
        var post_data = {
            quantity:quantity,
            price:price,
            type:type,
            productType:productType,
            productKhuyenmai:productKhuyenmai,
            combo:id,
            cart_id:cart_id,
            change_product:product.product_change,
            combo_product:product.combo_product,
            combo_product_id:product.combo_product_id,
            combo_group:product.combo_product_group,
            csrf_kfc_name:token_value
        };
        jQuery.ajax({
            url:base_url_lang+'product/update_combo_cart',
            type:'POST',
            dataType:'json',
            data:post_data,
            beforeSend:function(){
                jQuery('#loader').fadeIn();
            },
            error:function(){
                jQuery('#loader').fadeOut();
            },
            success:function(resp){
                $('#loader').fadeOut();
                $.fancybox.close();
                if(redirect != '')
                    window.location = base_url_lang+'shop/'+redirect;
                else
                    window.location = document.URL;
            }
        })
    },
    add_to_cart:function(id,is_mobile){
        if(!is_mobile){
            is_mobile = false;
        }
        var quantity = jQuery(".quantity").val();
        var price = jQuery(".price_value").val();
        var type = jQuery(".type").val();
        var productType = jQuery(".productType").val();
        var productKhuyenmai = jQuery(".productKhuyenmai").val();
        var post_data = {
            quantity:quantity,
            price:price,
            type:type,
            productType:productType,
            productKhuyenmai:productKhuyenmai,
            product:id,
            product_addmore:product.product_addmore,
            csrf_kfc_name:token_value
        };
        if(type == 1){
            var post_data = {
                quantity:quantity,
                price:price,
                type:type,
                productType:productType,
                productKhuyenmai:productKhuyenmai,
                combo:id,
                change_product:product.product_change,
                combo_product:product.combo_product,
                combo_product_id:product.combo_product_id,
                combo_group:product.combo_product_group,
                product_addmore:product.product_addmore,
                csrf_kfc_name:token_value
            };
        }
        var has_error = false;
        if(type == 1){
            jQuery.each(product.combo_product_group,function(index,value){
                if(product.combo_product[index] == 0){
                    has_error = true;
                }
            });
        }
        if(has_error){
            $('#content-modal-thongbao').html(Msg['combo.select_product']);
            call_Modal('#modal-thongbao');
        }
        else {
            jQuery.ajax({
                url:base_url_lang+'product/add_to_cart',
                type:'POST',
                dataType:'json',
                data:post_data,
                beforeSend:function(){
                    jQuery('#loader').fadeIn();
                },
                error:function(){
                    jQuery('#loader').fadeOut();
                },
                success:function(resp){
                    $('#loader').fadeOut();
                    jQuery("#cart_box").show();
                    if(resp.success){
                        $.fancybox.close();

                        if(resp.number >= 10){
                            jQuery("#cart_number").html(' '+resp.number);
                            var product_info = '<div class="arrow-up"></div> <div class="image"><a href="'+base_url_lang+'gio-hang.html"><img src="'+ base_url +resp.image+'" class="img-responsive"/></a></div><div class="content"><div class="name"><a href="'+base_url_lang+'gio-hang.html">'+resp.name+'</a></div><div class="price">'+resp.price+' vnd</div></div>';
                            jQuery("#popup-gio-hang").html(product_info);
                            call_item_Giohang();
                            setTimeout(function(){
                                hidden_item_Giohang();
                            }, 3000);
                        }
                        else {
                            jQuery("#cart_number").html(' 0'+resp.number);
                            var product_info = '<div class="arrow-up"></div> <div class="image"><a href="'+base_url_lang+'gio-hang.html"><img src="'+ base_url +resp.image+'" class="img-responsive"/></a></div><div class="content"><div class="name"><a href="'+base_url_lang+'gio-hang.html">'+resp.name+'</a></div><div class="price">'+resp.price+' vnd</div></div>';
                            jQuery("#popup-gio-hang").html(product_info);
                            call_item_Giohang();
                            setTimeout(function(){
                                hidden_item_Giohang();
                            },3000);
                        }
                        if(is_mobile){
                            setTimeout(function(){
                                window.location = base_url_lang+'thuc-don/0/phan-an-combo.html';
                            },1000);
                        }
                    }
                    else {
                        $('#content-modal-thongbao').html(resp.message);
                        call_Modal('#modal-thongbao');
                    }
                }
            })
        }
    },
    remove_product:function(id){
        jQuery("#cart_"+id).remove();
        jQuery.ajax({
            url:base_url_lang+'product/remove_cart',
            type:'POST',
            dataType:'json',
            data:{
                id:id
            },
            beforeSend:function(){
                jQuery('#loader').fadeIn();
            },
            error:function(){
                jQuery('#loader').fadeOut();
            },
            success:function(resp){
                jQuery('#loader').fadeOut();
                if(!resp.success){
                    window.location = document.URL;
                }
                if(resp.cart_empty){
                    jQuery("#update_cart").prepend('<div class="row" style="text-align: center;"> <p style="padding: 20px 0;font-size: 17px;">'+resp.mess+'</p></div>');
                    jQuery(".blink").remove();
                    jQuery("#data_discount").html('');
                }
            }
        })
        product.update_total_price();
    },
    change_product_group:function(combo_id,group_id,combo_product_id,product_id){
        jQuery.each(product.combo_product_group,function(index,value){
            if(value == group_id){
                product.combo_product[index] = product_id;
                product.combo_product_id[index] = combo_product_id;
                if(product.changed_product['change_'+group_id+'_'+product_id]){
                    product.product_change[index] = product_id+'|'+product.changed_product['change_'+group_id+'_'+product_id];
                }
                else {
                    product.product_change[index] = product_id+'|'+product_id;
                }
            }
        })
        jQuery.ajax({
            type:'POST',
            data:{
                combo_id:combo_id,
                group_id:group_id,
                product_id:combo_product_id
            },
            url:base_url_lang+'product/update_combo_product',
            beforeSend:function(){
                jQuery("#loader").fadeIn();
            },
            success:function(resp){
                //jQuery("#loader").fadeOut();
                jQuery(".combo-change-"+combo_id).html(resp)
                jQuery(document).trigger('resize');
                jQuery.each(jQuery(".combo-change-"+combo_id).find(".combo_product_change"),function(index,value){
                    if(product.changed_product['change_'+jQuery(this).data('parent_group')+'_'+jQuery(this).data('parent')]){
                        if(parseInt(product.changed_product['change_'+jQuery(this).data('parent_group')+'_'+jQuery(this).data('parent')]) == parseInt(jQuery(this).data('id')))
                            jQuery(this).attr('checked','checked');
                    }
                });
                if($('#list-pro-add-more').length) {
                    $("#list-pro-add-more input[type=checkbox]").each(function(index){
                        for(i=0; i<product.product_addmore.length;i++){
                            if(jQuery(this).val() == product.product_addmore[i]){
                                $(jQuery(this)).attr('checked', true);
                            }
                        }                        
                    });
                }
                //console.log(product.product_addmore);
                product.calc_combo_price();
            },
            error:function(){
                jQuery("#loader").fadeOut();
            }
        });
    },
    
    change_product_group_mobile:function(combo_id,group_id,combo_product_id,product_id,count_group){
        jQuery(".show_product_group_"+group_id).html(jQuery(".product_combo_"+group_id+"_"+product_id).html())
        jQuery.each(product.combo_product_group,function(index,value){
            if(value == group_id){
                product.combo_product[index] = product_id;
                product.combo_product_id[index] = combo_product_id;
                if(product.changed_product['change_'+group_id+'_'+product_id]){
                    product.product_change[index] = product_id+'|'+product.changed_product['change_'+group_id+'_'+product_id];
                }
                else {
                    product.product_change[index] = product_id+'|'+product_id;
                }
            }
        })
        jQuery.ajax({
            type:'POST',
            data:{
                combo_id:combo_id,
                group_id:group_id,
                product_id:combo_product_id,
                csrf_kfc_name:token_value,
                count_group:count_group
            },
            url:base_url_lang+'product/update_combo_product_mobile',
            beforeSend:function(){
                jQuery("#loader").fadeIn();
            },
            success:function(resp){
                //jQuery("#loader").fadeOut();
                jQuery(".combo-change-"+combo_id).html(resp)
                jQuery.each(jQuery(".combo-change-"+combo_id).find(".combo_product_change"),function(index,value){
                    if(product.changed_product['change_'+jQuery(this).data('parent_group')+'_'+jQuery(this).data('parent')]){
                        if(parseInt(product.changed_product['change_'+jQuery(this).data('parent_group')+'_'+jQuery(this).data('parent')]) == parseInt(jQuery(this).data('id')))
                            jQuery(this).attr('checked','checked');
                    }
                });
                if($('#list-pro-add-more').length) {
                    $("#list-pro-add-more input[type=checkbox]").each(function(index){
                        for(i=0; i<product.product_addmore.length;i++){
                            if(jQuery(this).val() == product.product_addmore[i]){
                                $(jQuery(this)).attr('checked', true);
                            }
                        }                        
                    });
                }
                //console.log(product.product_addmore);
                product.calc_combo_price();
            },
            error:function(){
                jQuery("#loader").fadeOut();
            }
        });
    },
    change_quantity:function(id){
        var quantity = jQuery("#quantity_"+id).val();
        if(quantity == 0){
            quantity = 1;
            jQuery("#quantity_"+id).val(1);
        }
        var price = jQuery("#price_"+id).val();
        var total_price = quantity*price;
        jQuery("#total_price_"+id).val(total_price);
        jQuery("#after_price_"+id).html(product.call_price(total_price));
        jQuery.ajax({
            url:base_url_lang+'product/update_cart',
            type:'POST',
            dataType:'json',
            data:{
                id:id,
                quantity:quantity
            },
            beforeSend:function(){

            },
            error:function(){

            },
            success:function(resp){
                if(!resp.success){
                    window.location = document.URL;
                }
            }
        })
        product.update_total_price();
    },
    update_total_price:function(){
        var total = 0;
        var number = 0;
        jQuery.each(jQuery(".total_price"),function(index,value){
            total += parseInt(jQuery(this).val());
        });
        jQuery.each(jQuery(".quantity"),function(index,value){
            number += parseInt(jQuery(this).val());
        });
        if(number>=10){
            number = number;
        }else{
            number = '0'+number;
        }
        jQuery("#cart_number").html(number);
        var score = $("#cart_total_point").data('score');
        var point = $("#cart_total_point").data('point');
        jQuery("#cart_total_price").html(product.call_price(total));
        jQuery("#cart_total_point").html(product.call_point(total,score,point));
        
    },
    place_order:function(){
        jQuery.ajax({
            url:base_url_lang+'product/place_order',
            type:'POST',
            dataType:'json',
            data:{
                coupon:jQuery("#coupon_code").val(),
                note:jQuery("#note").val()
            },
            beforeSend:function(){
                jQuery("#loader").fadeIn();
            },
            error:function(){
                jQuery("#loader").fadeOut();
            },
            success:function(resp){
                jQuery("#loader").fadeOut();
                if(!resp.success){
                    if(resp.message) {
                        $('#content-thongbao').html(resp.message);
                        call_Popup('#popup-thongbao');
                    }
                }
                else {
                    window.location = base_url_lang+resp.link+'.html';
                }
            }
        })
    },
    open_new_addresss:function(){
        jQuery("#box_new_address").show();
        jQuery("#full_name").focus();
    },
    check_address:function(effect,id){
        if(!id)
            var id = 'city';
        if(jQuery("#"+id).val() != jQuery("#current_location").val()){
            if(effect){
                jQuery(".btn-giao-hang").attr('disabled','disabled');
                jQuery(".btn-cutomer-send").attr('disabled','disabled');
                jQuery(".city_error").show();
            }
            return false;
        }
        else {
            if(effect){
                jQuery(".btn-giao-hang").removeAttr('disabled');
                jQuery(".btn-cutomer-send").removeAttr('disabled');
                jQuery(".city_error").hide();
            }
            return true;
        }
    },
    save_new_address:function(element){
        $.validator.reposition();
        $("#user-form-address").validate_popover({
            onsubmit: true,
            popoverPosition: 'top',
            rules: {
                full_name:{required:true},
                address:{required:true},
                district:{required:true},
                ward:{required:true},
                phone:{required:true,minlength: 10, maxlength: 11},
                email:{required:true,email:true}
            },
            messages: {
                full_name:{required:Msg['register.name']},
                address:{required:Msg['update.address']},
                district:{required:Msg['update.district']},
                ward:{required:Msg['update.ward']},
                phone:{required:Msg['register.phone'],number:Msg['register.phone.correct'],minlength:Msg['register.phone.correct'],maxlength:Msg['register.phone.correct']},
                email:{required:Msg['contact.email.correct'],email:Msg['contact.enter_true_email']}
            },
            submitHandler: function(form){
                jQuery.ajax({
                    url:base_url_lang+'product/save_new_address',
                    type:'POST',
                    dataType:'json',
                    data:$('#user-form-address').serialize(),
                    beforeSend:function(){
                        jQuery("#loader").fadeIn();
                    },
                    error:function(){
                        jQuery("#loader").fadeOut();
                    },
                    success:function(resp){
                        jQuery("#loader").fadeOut();
                        if(!resp.status){
                            if(resp.message){
                                if(resp.button){
                                    if(resp.button == 'button'){
                                        $('#content-thongbao-button').html(resp.message);
                                        call_Popup('#popup-thongbao-button');
                                    }else{
                                        $('#content-thongbao-price').html(resp.message);
                                        call_Popup('#popup-thongbao-price');
                                    }
                                }else{
                                    $('#content-thongbao').html(resp.message);
                                    call_Popup('#popup-thongbao');
                                }
                            }
                        }
                        else {
                            window.location = base_url_lang+resp.link+'.html';
                        }
                    }
                });
            }
        });
    },
    save_old_address:function(id){
        jQuery.ajax({
            url:base_url_lang+'product/save_old_address',
            type:'POST',
            dataType:'json',
            data:{
                id:id
            },
            beforeSend:function(){
                jQuery("#loader").fadeIn();
            },
            error:function(){
                jQuery("#loader").fadeOut();
            },
            success:function(resp){
                jQuery("#loader").fadeOut();
                if(!resp.success){
                    if(resp.button){
                        if(resp.button == 'button'){
                            $('#content-thongbao-button').html(resp.message);
                            call_Popup('#popup-thongbao-button');
                        }else{
                            $('#content-thongbao-price').html(resp.message);
                            call_Popup('#popup-thongbao-price');
                        }
                    }else{
                        $('#content-thongbao').html(resp.message);
                        call_Popup('#popup-thongbao');
                    }
                }
                else {
                    window.location = base_url_lang+resp.link+'.html';
                }
            }
        });
    },
    delete_old_address:function(id){
        if(id){
            jQuery.ajax({
                url:base_url_lang+'product/remove_address/'+id,
                type:'POST',
                dataType:'json',
                beforeSend:function(){
                    jQuery("#loader").fadeIn();
                },
                error:function(){
                    jQuery("#loader").fadeOut();
                },
                success:function(resp){
                    jQuery("#loader").fadeOut();
                    if(resp.success){
                        var address_item = jQuery('.address_item').length;
                        location.reload();
                    }
                }
            });
        }
    },
    save_member_form:function(element){
        $.validator.reposition();
        $("#member-form").validate_popover({
            onsubmit: true,
            popoverPosition: 'top',
            rules: {
                member_name:{required:true},
                member_address:{required:true},
                district:{required:true},
                ward:{required:true},
                member_tel:{required:true,minlength: 10, maxlength: 11},
                member_email:{required:true,email:true}
            },
            messages: {
                member_name:{required:Msg['register.name']},
                member_address:{required:Msg['update.address']},
                district:{required:Msg['update.district']},
                ward:{required:Msg['update.ward']},
                member_tel:{required:Msg['register.phone'],number:Msg['register.phone.correct'],minlength:Msg['register.phone.correct'],maxlength:Msg['register.phone.correct']},
                member_email:{required:Msg['contact.email.correct'],email:Msg['contact.enter_true_email']}
            },
            submitHandler: function(form){
                jQuery.ajax({
                    url:base_url_lang+'product/update_member_form',
                    type:'POST',
                    dataType:'json',
                    data:$('#member-form').serialize(),
                    beforeSend:function(){
                        jQuery("#loader").fadeIn();
                    },
                    error:function(){
                        jQuery("#loader").fadeOut();
                    },
                    success:function(resp){
                        jQuery("#loader").fadeOut();
                        if(!resp.success){
                            if(resp.button){
                                if(resp.button == 'button'){
                                    $('#content-thongbao-button').html(resp.message);
                                    call_Popup('#popup-thongbao-button');
                                }else{
                                    $('#content-thongbao-price').html(resp.message);
                                    call_Popup('#popup-thongbao-price');
                                }
                            }else{
                                $('#content-thongbao').html(resp.message);
                                call_Popup('#popup-thongbao');
                            }
                        }
                        else {
                            window.location = base_url_lang+resp.link+'.html';
                        }
                    }
                });
            }
        });
    },
    save_order:function(element){
        jQuery.ajax({
            url:base_url_lang+'product/save_order',
            data:{
                payment_type:jQuery("input[name='httt']:checked").val(),
                payment_agree:jQuery("input[name='payment_agree']").is(':checked'),
            },
            type:'POST',
            beforeSend:function(){
                jQuery("#loader").fadeIn();
            },
            error:function(){
                jQuery("#loader").fadeOut();
            },
            success:function(resp){
                if(!resp.status){
                    jQuery("#loader").fadeOut();
                    if(resp.message){
                        $('#content-thongbao').html(resp.message);
                        call_Popup('#popup-thongbao');
                    }
                }
                else {
                    sendEcommerce();
                    socket.emit('update',{test:'updated'});
                    if(jQuery("input[name='httt']:checked").val() == 3){
                        window.location = base_url+'payment/napas/'+resp.orderID+'/'+resp.amount;
                    }else if(jQuery("input[name='httt']:checked").val() == 2){
                        jQuery.each(resp.message[0],function(index,value){
                            var html = '<input type="hidden" name="'+index+'" id="'+index+'" value="'+value+'" />';
                            jQuery("#payment_form").append(html);
                        })
                        jQuery("#payment_form").submit();
                    }
                    else{
                        window.location = base_url_lang+'shop/success/'+resp.transaction_id+'.html';
                    }
                }
            }
        });
    },
    choose_location:function(id,is_menu){
        if(id){
            jQuery.ajax({
                url:base_url_lang+'product/save_location/'+id,
                dataType:'json',
                beforeSend:function(){
                    jQuery("#loader").fadeIn();
                },
                error:function(){
                    jQuery("#loader").fadeOut();
                },
                success:function(resp){
                    jQuery("#loader").fadeOut();
                    if(resp.success){
                        $.fancybox.close();
                        if(resp.message){
                            $('#content-thongbao').html(resp.message);
                            call_Popup('#popup-thongbao');
                            setTimeout('product.refresh()',3000);
                        }
                        else {
                            if(!is_menu)
                                window.location = document.URL;
                            else
                                window.location = base_url_lang+'product/menu/combo';
                        }
                    }
                }
            })
        }
    },
    refresh:function(){
        window.location = document.URL;
    },
    change_product:function(self){
        var parent = self.data('parent');
        var name = self.data('name');
        var group = self.data('parent_group');
        product.changed_product['change_'+group+'_'+parent] = self.data('id');
        if(parseInt(group) == 0)
            jQuery(".product_combo_"+group+"_"+parent).html('<i class="fa fa-circle"></i>'+name);
        else
            jQuery(".product_combo_"+group+"_"+parent).html(name);
        product.calc_combo_price();
    },
    change_product_mobile:function(self){
        var parent = self.data('parent');
        var name = self.data('name');
        var group = self.data('parent_group');
        product.changed_product['change_'+group+'_'+parent] = self.data('id');
        jQuery(".product_combo_"+group+"_"+parent).html(name);
        jQuery(".show_product_group_"+group).html(name);
        product.calc_combo_price();
    },
    calc_combo_price:function(){
        /*var original = parseFloat(jQuery(".combo_product_original_price").val());
        var count = 0;
        jQuery.each(product.combo_product,function(index,value){
            if(jQuery("input[name='combo_change_"+product.combo_product_group[index]+"_"+value+"']:checked").length > 0){
                  if(jQuery("input[name='combo_change_"+product.combo_product_group[index]+"_"+value+"']:checked").data('id') != jQuery("input[name='combo_change_"+product.combo_product_group[index]+"_"+value+"']:checked").data('parent')){
                      original += parseFloat(jQuery("input[name='combo_change_"+product.combo_product_group[index]+"_"+value+"']:checked").data('price'));
                  }
                product.product_change[index] = value+'|'+jQuery("input[name='combo_change_"+product.combo_product_group[index]+"_"+value+"']:checked").data('id');
                count++;
            }
        });
        if($('#list-pro-add-more').length) {
            $("#list-pro-add-more input[type=checkbox]").each(function(index){
                if(jQuery(this).is(':checked')){
                    original += parseFloat(jQuery(this).data('price'));
                }
            });
        }
        jQuery(".price_value").val(original);
        jQuery(".combo_product_display").html(product.call_price(original));*/
        var combo_ID = jQuery('#combo_ID').val();
        jQuery.ajax({
            url:base_url_lang+'product/getPriceCombo',
            type:'POST',
            dataType:'json',
            data:{
                combo_ID:combo_ID,'csrf_kfc_name':token_value
            },
            beforeSend:function(){
                jQuery("#loader").fadeIn();
            },
            error:function(){
                jQuery("#loader").fadeOut();
            },
            success:function(data){
                //jQuery("#loader").fadeOut();
                if(data.status){
                    var original = parseFloat(data.price);
                    var count = 0;
                    jQuery.each(product.combo_product,function(index,value){
                        if(jQuery("input[name='combo_change_"+product.combo_product_group[index]+"_"+value+"']:checked").length > 0){
                              if(jQuery("input[name='combo_change_"+product.combo_product_group[index]+"_"+value+"']:checked").data('id') != jQuery("input[name='combo_change_"+product.combo_product_group[index]+"_"+value+"']:checked").data('parent')){
                                  original += parseFloat(jQuery("input[name='combo_change_"+product.combo_product_group[index]+"_"+value+"']:checked").data('price'));
                              }
                            product.product_change[index] = value+'|'+jQuery("input[name='combo_change_"+product.combo_product_group[index]+"_"+value+"']:checked").data('id');
                            count++;
                        }
                    });
                    if($('#list-pro-add-more').length) {
                        $("#list-pro-add-more input[type=checkbox]").each(function(index){
                            if(jQuery(this).is(':checked')){
                                original += parseFloat(jQuery(this).data('price'));
                            }
                        });
                    }
                    jQuery(".price_value").val(original);
                    jQuery(".combo_product_display").html(product.call_price(original));
                    product.updateProductValue(original);
                }else{
                    location.reload();
                }
            }
        });
    },
    updateProductValue(original){
         jQuery.ajax({
            url:base_url_lang+'product/updatePriceValue/',
            type:'POST',
            dataType:'json',
            data:{
                original:original,'csrf_kfc_name':token_value
            },
            beforeSend:function(){
                jQuery("#loader").fadeIn();
            },
            error:function(){
                jQuery("#loader").fadeOut();
            },
            success:function(resp){
                jQuery("#loader").fadeOut();
            }
        });
    },
    update_product_to_top:function(){
        //
    },
    call_point:function(price,score,point){
        var string_point = parseInt((price/score)*point);
        string_point += ' <small>Điểm</small>';
        return string_point;
    },
    call_price:function(price){
        price = price.toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
        price = price.split(',');
        var string_price = price[0];
        for(i in price){
            if(i > 0){
                string_price += '.<small>'+price[i]+'</small>';
            }
        }
        string_price += ' <small>VNĐ</small>';
        return string_price;
    },
    payment_choose:function(){
        var choose = jQuery("input[name='card']:checked").val();
        call_Popup('#popup-card-info')
    },
    payment_submit:function(){
        jQuery.ajax({
            url:base_url_lang+'product/payment_submit',
            dataType:'json',
            type:'POST',
            data:{
                card_number:jQuery("#card_number").val(),
                ccv:jQuery("#ccv").val(),
                card_month:jQuery("#card_month").val(),
                card_year:jQuery("#card_year").val()
            },
            beforeSend:function(){
                jQuery("#loader").fadeIn();
                jQuery("#payment_error").hide();
            },
            error:function(){
                jQuery("#loader").fadeOut();
            },
            success:function(resp){
                jQuery("#loader").fadeOut();
                if(resp.status){
                    $.fancybox.close();
                    socket.emit('update',{test:'updated'});
                    call_Popup('#popup-dhtc');
                }
                else {
                    if(resp.message){
                        jQuery("#payment_error").show().html(resp.message);
                    }
                }
            }
        })
    },
    favorite:function(id,loai){
        if(id){
            jQuery.ajax({
                url:base_url_lang+'product/add_favorite',
                type:'POST',
                dataType:'json',
                data:{
                    id:id,'loai':loai,'csrf_kfc_name':token_value
                },
                beforeSend:function(){
                    jQuery("#loader").fadeIn();
                },
                error:function(){
                    jQuery("#loader").fadeOut();
                },
                success:function(data){
                    jQuery("#loader").fadeOut();
                    if(data.status ==false && data.is_login=='fail'){
                      call_Popup('#popup-login');
                    }else
                        if(data.status){
                            $('#count_favorite').html(data.number);
                            $('#img-hearth').html('<img src="'+base_url+'/templates/images/red-hearth.png" class="red img-responsive"/>');
                        }else{
                            $('#content-modal-thongbao').html(data.mess);
                            call_Modal('#modal-thongbao');
                        }
                }
            });
        }
    },
    remove_favorite:function(id){
        if(id){
            jQuery.ajax({
                url:base_url_lang+'product/remove_favorite',
                type:'POST',
                dataType:'json',
                data:{
                    id:id,'csrf_kfc_name':token_value
                },
                beforeSend:function(){
                    jQuery("#loader").fadeIn();
                },
                error:function(){
                    jQuery("#loader").fadeOut();
                },
                success:function(data){
                    jQuery("#loader").fadeOut();
                    if(data.status ==false && data.is_login=='fail'){
                        call_Popup('#popup-login');
                    }else
                    if(data.status){
                        location.reload();
                    }else{
                        $('#content-modal-thongbao').html(data.mess);
                        call_Modal('#modal-thongbao');
                    }
                }
            });
        }
    },
    //ADD MORE PRODUCT-PRODUCT
    addmore_product:function(mobile){
        /*product.product_addmore = new Array();
        var name = "";
        var original = parseFloat(jQuery(".product_product_original_price").val());
        var i = 0;
        $("#list-pro-add-more input[type=checkbox]").each(function(index){
            if(jQuery(this).is(':checked')){
                original += parseFloat(jQuery(this).data('price'));
                if(mobile){
                    name += '<li>'+jQuery(this).data('name')+'</li>';
                }else{
                    name += '<li><i class="fa fa-circle"></i> '+jQuery(this).data('name')+'</li>';
                }
                product.product_addmore[i] = jQuery(this).val();
                i++;
            }
        });
        jQuery(".price_value").val(original);
        jQuery(".product_product_display").html(product.call_price(original));
        jQuery('#list-pro-addmore').html(name);
        product.updateProductValue(original);*/
        var product_ID = jQuery('#product_ID').val();
        jQuery.ajax({
            url:base_url_lang+'product/getPriceProduct',
            type:'POST',
            dataType:'json',
            data:{
                product_ID:product_ID,'csrf_kfc_name':token_value
            },
            beforeSend:function(){
                jQuery("#loader").fadeIn();
            },
            error:function(){
                jQuery("#loader").fadeOut();
            },
            success:function(data){
                //jQuery("#loader").fadeOut();
                if(data.status){
                    product.product_addmore = new Array();
                    var name = "";
                    var original = parseFloat(data.price);
                    var i = 0;
                    $("#list-pro-add-more input[type=checkbox]").each(function(index){
                        if(jQuery(this).is(':checked')){
                            original += parseFloat(jQuery(this).data('price'));
                            if(mobile){
                                name += '<li>'+jQuery(this).data('name')+'</li>';
                            }else{
                                name += '<li><i class="fa fa-circle"></i> '+jQuery(this).data('name')+'</li>';
                            }
                            product.product_addmore[i] = jQuery(this).val();
                            i++;
                        }
                    });
                    jQuery(".price_value").val(original);
                    jQuery(".product_product_display").html(product.call_price(original));
                    jQuery('#list-pro-addmore').html(name);
                    product.updateProductValue(original);
                }else{
                    location.reload();
                }
            }
        });
    },
    addmore_product_combo:function(mobile){
        product.product_addmore = new Array();
        var name = "";
        var i = 0;
        $("#list-pro-add-more input[type=checkbox]").each(function(index){
            if(jQuery(this).is(':checked')){
                if(mobile){
                    name += '<li>'+jQuery(this).data('name')+'</li>';
                }else{
                    name += '<li><i class="fa fa-circle"></i> '+jQuery(this).data('name')+'</li>';
                }
                product.product_addmore[i] = jQuery(this).val();
                i++;
            }
        });
        product.calc_combo_price();
        jQuery('#list-pro-addmore').html(name);
        //console.log(product.product_addmore);
    },
    //THE END PRODUCT
}
jQuery(document).ready(function($) {
    jQuery("#current_location").on('change',function(){

    });
});
function changeLocation(id){
    product.choose_location(id);
}
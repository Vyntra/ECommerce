
//Common js code of all pages

function ajaxUtils2(url, purpose, box=''){

    $.ajax({
        type    : 'GET',
        url     : url,
        contentType : 'application/json',
        success : function(response){
            if(purpose === 'display_types_brands'){
                $.each(response, function(key, value){ //product_description/
                    if(box == '#ProductTypes'){
                        var childNode = "<div class='col-3'><a class='alink' href='#'>"+value.typeName+"</a></div>";
                    }
                    else{
                        var childNode = "<div class='col-3'><a class='alink' href='#'>"+value.brandName+"</a></div>";
                    }
                    $(box).append(childNode);
                });
            }
            else if(purpose === 'add_to_wishlist'){ //header
                showBanner(response[0],response[1]);
                if(response[2]){
                    sessionStorage.setItem("wishlistId", response[2]);
                }
            }
            else if(purpose === 'add_to_cart'){
                showBanner(response[0],response[1]);
            }
            else if(purpose === 'WishBag'){
                $.each(response, function(key, value){ //header
                    var itemHTML = '<div class="WishItem"><div class="WishItemPic"></div><div class="WishItemDetails">'+
                                    '<div class="WishItemText"><h4>'+value.productName+'</h4>'+
                                    '<p><i><span>'+value.productType+'</span><span>.</span><span>'+value.productBrand+'</span></i></p>'+
                                    '<p>Price : Rs. '+value.price+'</p>'+
                                    '<p>Rating: </p>'+
                                    '</div><div class="WishItemButtons"><button class="btn btn-primary">Add to cart</button></div>'+
                                    '<div class="WishItemDelete"><i class="fas fa-trash-alt fa-lg text-danger"></i></div></div></div>';
                    $("#WishItemsContainer").append(itemHTML);
                });
            }
        },
        error : function(response){
            console.log(response);
        }
    });
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////

//header.jsp js code starts
    //Search bar code starts

$(document).ready(function() {

    $('.search').each(function() {

        var self = $(this);
        var form = self.children('form');
        var input = form.children('input');
        var span = $('<span />').appendTo(form);
        var bar = self.children('.bar');
        var close = self.children('.close');
        var list = self.children('ul');

        input.keypress(function (e) {
            if(e.which && e.charCode) {
                resizeForText(input, span, $(this).val() + String.fromCharCode(e.keyCode | e.charCode));
            }
        });

        input.keyup(function(e) {
            if(e.keyCode === 8 || e.keyCode === 46) {
                resizeForText(input, span, $(this).val());
            }
        });

        resizeForText(input, span, self.val());

        form.submit(function(e) {
            e.preventDefault();
            if(!self.hasClass('prepare')) {
                input.blur();
                $('<span />').text(input.val()).appendTo(bar);
                self.addClass('prepare submit');

                setTimeout(function() {
                    self.removeClass('submit');
                }, 200);

                setTimeout(function() {
                    self.addClass('animate');
                    bar.animate({width: (self.outerWidth() - 32)}, 800, function() {
                        var searchW = ((list.outerWidth() + 32) > (72 + bar.outerWidth())) ? (list.outerWidth() + 32) : 72 + bar.outerWidth();
                        self.animate({width: searchW}, 400);
                        setTimeout(function() {
                            self.animate({height: self.outerHeight() + list.outerHeight()}, 500, function() {
                                list.addClass('show');
                            });
                        }, 200);
                    });

                    setTimeout(function() {
                        self.addClass('done');
                    }, 800);
                }, 1250);
            }

        });

        close.on('click', function(e) {
            self.removeClass('done');
            setTimeout(function() {
                input.val('');

                bar.animate({width: 32}, 1000, function() {
                    self.addClass('reset');
                    bar.children('span').remove();
                    setTimeout(function() {
                        self.removeClass('animate reset prepare');
                        setTimeout(function() {
                            input.animate({
                                width: 32
                            }, 400, function() {
                                bar.removeAttr('style');
                            });
                        }, 200);
                    }, 400);
                });

                list.removeClass('show');
                setTimeout(function() {
                    self.animate({height: 62}, 400, function() {
                        self.animate({width: 92}, 400, function() {
                            self.removeAttr('style');
                        });
                    });
                }, 200);
            }, 500);
        });

    });

});

function resizeForText(input, span, text) {
    text = (!text) ? ' ' : text;
    span.text(text);
    input.width(span.width());
}

    //Search bar code ends

$(document).ready(function(){
    $("#ProductBrandsParentDiv").hide();
    $("#ProductTypesParentDiv").hide();
    ajaxUtils2('/get_all_types', 'display_types_brands', '#ProductTypes');
    ajaxUtils2('/get_all_brands', 'display_types_brands', '#ProductBrands');
});

$(document).on('mouseover','#Types',function(){
    $("#ProductBrandsParentDiv").hide();
    $("#ProductTypesParentDiv").show();
});

$(document).on('mouseover','#Brands',function(){
    $("#ProductTypesParentDiv").hide();
    $("#ProductBrandsParentDiv").show();
});

$(document).on('mouseout','#Types',function(){
    $("#ProductTypesParentDiv").hide();
});

$(document).on('mouseout','#Brands',function(){
    $("#ProductBrandsParentDiv").hide();
});

//////
$(document).on('mouseover','#ProductTypesParentDiv',function(){
    $("#ProductBrandsParentDiv").hide();
    $("#ProductTypesParentDiv").show();
});

$(document).on('mouseover','#ProductBrandsParentDiv',function(){
    $("#ProductTypesParentDiv").hide();
    $("#ProductBrandsParentDiv").show();
});

$(document).on('mouseout','#ProductTypesParentDiv',function(){
    $("#ProductTypesParentDiv").hide();
});

$(document).on('mouseout','#ProductBrandsParentDiv',function(){
    $("#ProductBrandsParentDiv").hide();
});

// Banner code
function showBanner(class_type, message){
    var banner = $("#banner");

    banner.attr("class","");
    banner.hide();
    banner.addClass("banner_"+class_type);
    banner.text(message);
    banner.show();
    banner.addClass("banner_animate");
}

// WishBag Code
$(document).on('click','#WishlistDiv',function(){
    $("#WishDream").fadeIn();
    $("#WishBag").fadeIn();
    populateWishBag();
});

$(document).on('click','#WishBagClose',function(){
    $("#WishDream").fadeOut();
    $("#WishBag").fadeOut();
    setTimeout(function(){
        $("#WishItemsContainer").empty();
    },500);
});

function populateWishBag(){
    var wishlistId;
    if(sessionStorage.getItem('wishlistId') === null){
        wishlistId = "-1";
    }
    else{
        wishlistId = sessionStorage.getItem('wishlistId');
    }
    ajaxUtils2('/get_wishlist_products/'+wishlistId,'WishBag');
}

//header.jsp js code ends

///////////////////////////////////////////////////////////////////////////////////////////////////////////

//home.jsp js code starts
$(document).ready(function(){
    if($('#Advertisements')){
        advertisement();
    }
});


function advertisement() {
    var randomColor1 = '#'+Math.floor(Math.random()*16777215).toString(16);
    var randomColor2 = '#'+Math.floor(Math.random()*16777215).toString(16);
    $("#Advertisements").css('background-image','linear-gradient(to right bottom, '+randomColor1+', '+randomColor2+')');
    setTimeout(function(){ advertisement() }, 3000);
}

//home.jsp js code ends

///////////////////////////////////////////////////////////////////////////////////////////////////////////

//product_descriptor.jsp js code starts

$(document).on('click','#add_to_wishlist',function(){
    var wishlistId;
    if(sessionStorage.getItem('wishlistId') === null){
        wishlistId = "-1";
    }
    else{
        wishlistId = sessionStorage.getItem('wishlistId');
    }
    var productId = $(this).attr('data-product_id');
    var url = '/add_to_wishlist/'+ productId +'/'+ wishlistId;
    ajaxUtils2(url, 'add_to_wishlist');
});

$(document).on('click','#add_to_cart',function(){
    var productId = $(this).attr('data-product_id');
    var url = '/add_to_cart/'+ productId;
    ajaxUtils2(url, 'add_to_cart');
});


//product_descriptor.jsp js code ends
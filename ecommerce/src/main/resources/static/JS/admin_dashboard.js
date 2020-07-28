

$(document).on('click','#SubmitProductType',function(){
      var TypeName = $(this).closest("form").find("input").val();
      var data = "action=" + "save_product_type" + "&TypeName=" + TypeName;
      ajaxUtils1(data);
});

$(document).on('click','#SubmitProductBrand',function(){
      var BrandName = $(this).closest("form").find("input").val();
      var data = "action=" + "save_product_brand" + "&BrandName=" + BrandName;
      ajaxUtils1(data);
});

$(document).on('click','#SubmitProduct',function(){
      var ProductName = $(this).closest("form").find("#ProductName").val();
      var Stock = $(this).closest("form").find("#Stock").val();
      var Rating = $(this).closest("form").find("#Rating").val();
      var Price = $(this).closest("form").find("#Price").val();
      var Discount = $(this).closest("form").find("#Discount").val();
      var Image = $(this).closest("form").find("#Image").val();
      var ProductBrand = $(this).closest("form").find("#ProductBrand").val();
      var ProductType = $(this).closest("form").find("#ProductType").val();
      var Description = $(this).closest("form").find("textarea").val();
      var data = "action=" + "save_product" + "&ProductName=" + ProductName + "&Stock=" + Stock + "&Rating="
               + Rating + "&Price=" + Price + "&Discount=" + Discount + "&Image=" + Image + "&Description="
               + Description + "&ProductType=" + ProductType + "&ProductBrand=" + ProductBrand;
      ajaxUtils1(data);
});


function ajaxUtils1(data){
    $.ajax({
        type    : 'POST',
        data    : data,
        url     : 'admin_edits',
        success : function(response){
          console.log("ajaxUtils1 call success");
        },
        error   : function(response){
          console.log("ajaxUtils1 call error");
        }
    });
}

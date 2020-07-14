<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>

.product_description_main{
    width: 90%;
    margin: 50px auto 0px auto;
}
.outdiv
{
     width:85%;
     height:600px;
     border:3px solid black;
     border-radius:12px;
     background-color:yelow;
     float:left;
}
.btndiv{
    width: 13%;
    float: right;
}
.leftdiv
{
     float:left;
     width:48%;
     height:99.5%;
     background-color:blue;
     border-radius:10px;
     margin:1px;

}
.rightdiv
{
     margin:1px;
     float:right;
     width:50%;
     height:99.5%;
     background-color:red;
     border-radius:10px;
}

</style>
</head>

<%@ include file = "header.jsp" %>

<body>
<div class="product_description_main container">
<div class=outdiv>
      <div class=leftdiv>
	<p> ${product.image}</p>
      </div>
      <div class=rightdiv>
	<p>Product Name: ${product.productName}</p><br>
	<p>Stock : ${product.stock}</p>
	<p>Product Price is: ${product.price}</p>
	<p>Product discount : ${product.discount}</p>
	<p>Product description: ${product.description}</p>
	<p>Product Type: ${product.productType.typeName}</p>
	<p>Product Brand: ${product.productBrand.brandName}</p>
      </div>
</div>
<div class="btndiv">
    <button type="button" class="btn btn-primary">Add to wishlist</button>
    <button type="button" class="btn btn-primary">Add to cart</button>
    <button type="button" class="btn btn-success">Purchase</button>
</div>
</div>
</body>
<div class="footer">
</div>
</html>
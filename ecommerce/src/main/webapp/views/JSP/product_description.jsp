<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.nav {
  overflow: hidden;
  background-color: grey;
}

.nav a {
  float: left;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 20px;
  font-family:Georgia;
}
input[type=text] {
  float: right;
  padding: 6px;
  margin-top: 8px;
  margin-right: 16px;
  background-color: red;
  font-size: 17px;
}
.some
{
      margin-top:10px;
      display:inline-block;
      background-color:pink;
      width:200px;
      border:2px solid black;
      border-radius:8px;
      color:black;
}
.nav a:hover {
  background-color: orange;
  color: black;
}
.outdiv
{
     margin:50px 250px;
     width:70%;
     height:600px;
     border:3px solid black;
     border-radius:12px;
     background-color:yelow;
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

<div class="nav">
  <a href="#home">Home</a>
  <a href="#men">Men</a>
  <a href="#women">Women</a>
  <a href="#kids">Kids</a>
  <a href="#about">About</a>
<a href="#search><input type="text" class="some"  placeholder="explore...."></a>
</div>

<body>
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
</body>
<div class="footer">
</div>
</html>
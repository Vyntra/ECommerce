<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Vyntra</title>


    <style>
     .outdiv
               {
    	min-width:25%;
    	height:400px;
    	border:2px solid black;
    	border-radius:15px;
    	float: left;
    	margin-right: 50px;
               }
             .seconddiv
              {
    	margin-left:5px;
    	background-color:green;
    	color:black;
    	border-radius:10px;
    	width:25%;
    	height:25px;
    	text-align:center;
               }
               img
              {
      	position: absolute;
      	left: 0px;
      	top: 0px;
      	z-index: -2;
              }
    </style>

</head>
<%@ include file = "header.jsp" %>
<body>
<div id="Advertisements">
<i>advertisements</i>
</div>
   <div id="TrendingProducts">
   <c:forEach items="${top_products}" var="product">

       <a href="product_description/${product.productId}">
       <div class="outdiv">
                        <div>
              	<img src="lips.jpg" width="20%" height="350px" style="border-radius:15px;">
                        </div>
                        <div class="seconddiv">
              	<p style="padding:3px;">10%  off</p>
                        </div>
                        <div>
              	<br><br><br><br><br><br><br><br><br><br><br><br><br>
              	<p style="text-align:center;color:black">${product.productName}</p>
              	<p style="text-align:center;color:black">Price : Rs.${product.price}</p>
                        </div>
                   </div>
       </a>
   </c:forEach>
   </div>
</body>
<%@ include file = "footer.jsp" %>
</html>
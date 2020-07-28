<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href='https://fonts.googleapis.com/css?family=Quicksand'>
        <link rel="stylesheet" href='https://fonts.googleapis.com/css?family=Raleway'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
        </style>
    </head>
    <%@ include file = "header.jsp" %>
    <body>
        <div id="productDescriptionMain" class="container">
            <div id="productDiv">
                <div id="productImageDiv">
                    <p> ${product.image}</p>
                </div>
                <div id="productDetailsDiv">
                    <p id='productNameP'>${product.productName}</p>
                    <p id='productTypeP'>
                        ${product.productType.typeName}
                        <i class="fa fa-circle"></i>
                        ${product.productBrand.brandName}
                    </p>
                    
                    <c:if test="${product.discount > 0}">
                    <p>Price :
                        <strike><i>Rs. </i><span class="Quicksand">${product.price}</span></strike>
                        <i>Rs.</i><span class="Quicksand">
                        <c:out value="${product.price - product.price*product.discount*0.01}"/></span>
                        ( <span class="Quicksand">${product.discount}</span> % off )
                    </p>
                    </c:if>
                    <c:if test="${product.discount == 0}">
                    <p>Price: <i>Rs.</i> <span class="Quicksand">${product.price}</span></p>
                    </c:if>
                    
                    <p>Stock left : <span class="Quicksand">${product.stock}</span></p>
                    <p>Rating :
                        <c:forEach var="j" begin="1" end="${product.rating}">
                        <i class="fa fa-star gold" aria-hidden="true"></i>
                        </c:forEach>
                        <span class="Quicksand">[ ${product.rating} <i>|</i> 5 ]</span>
                    </p>
                    <fieldset>
                        <legend>Description</legend>
                        ${product.description}
                    </fieldset>
                    <p id="productDetailsFooter">Quality is our trademark!</p>
                </div>
            </div>
            <div id="productButtonsDiv">
                <button type="button" class="btn btn-primary" id="add_to_wishlist">Add to wishlist</button><br><br>
                <button type="button" class="btn btn-primary" id="add_to_cart">Add to cart</button><br><br>
                <button type="button" class="btn btn-success" id="purchase">Purchase</button><br><br>
            </div>
        </div>
    </body>
</html>
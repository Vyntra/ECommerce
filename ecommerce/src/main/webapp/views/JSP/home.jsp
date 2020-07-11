<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Vyntra</title>
    <script type="text/javascript" src="webjars/jquery/3.5.0/jquery.min.js"></script>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<%@ include file = "header.jsp" %>
<body>
   <p>
   <c:forEach items="${top_products}" var="product">
       <p>
       here
       ${product.productName}
       </p>
   </c:forEach>
   </p>
</body>
<%@ include file = "footer.jsp" %>
</html>
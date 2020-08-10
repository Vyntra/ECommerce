<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/CSS/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!--<script type="text/javascript" src="JS/jquery.min.js"></script>-->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <script type="text/javascript" src="/JS/main.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>


    <!--csrf token code starts-->
    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <!-- <script>
    $(function () {
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    $(document).ajaxSend(function(e, xhr, options) {
    xhr.setRequestHeader(header, token);
    });
    });
    </script> -->
    <!--csrf token code ends-->

    <style>

      #WishDream{
        position: fixed;
        width: 100%;
        height: 100%;
        z-index: 2;
        background-image: url("/IMAGES/dreameffect.png");
        background-repeat: no-repeat;
        background-size: cover;
        display: none;
      }
      #WishBag{
        position: fixed;
        width: 70%;
        height: 90%;
        top: 6%;
        left: 22%;
        background-color: lightblue;
        opacity: 1;
        z-index: 3;
        display: none;
        border-radius: 10px;
        box-shadow: 0px 0px 5px 0.5px #595959;
        border: 2px solid #595959;
        border-top-color: #e3e3e3;
      }
      #WishBagClose{
        position: absolute;
        left: 96.8%;
        width: 3%;
        height: 25px;
        text-align: center;
        border-top-right-radius: 5px;
      }
      #WishBagClose:hover {
        background-color: red;
        box-shadow: inset 0px 0px 4px 0.5px #595959;
        color: white;
      }
      #WishBagHeader{
        font-family: 'Raleway';
        text-align: center;
        font-weight: bold;
        margin-top: 20px;
        margin-bottom: 20px;
      }
      #WishItemsContainer{height: 100%;}
      .WishItem{
        width: 90%;
        height: 35%;
        margin: 10px auto;
        background-color: white;
        box-shadow: inset 0px 0px 5px 1px grey;
        border-radius: 5px;
        border: 1px solid grey;
      }
      .WishItemPic{
        width: 30%;
        background-color: orange;
        float: left;
        height: 100%;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
        box-shadow: inset 0px 0px 5px 1px grey;
        text-align: center;
      }
      .WishItemDetails{
        width: 70%;
        height: 100%;
        float: left;
      }
      .WishItemText{
        float: left;
        width: 100%;
        height: 80%;
        padding: 1% 1% 0% 5%;
      }
      .WishItemButtons{
        float: left;
        width: 90%;
        height: 19%;
        text-align: right;
        margin: 1% 5% 0% 0%;
      }
      .WishItemDelete{
        float: left;
        width: 5%;
        height: 17%;
        margin-top: 3%;
      }
    </style>
  </head>
  <div>
    <div id="WishDream"></div>
    <div id="WishBag">
      <div id="WishBagClose"><i class="fa fa-times fa-lg" aria-hidden="true"></i></div>
      <div id="WishBagHeader"><i><h2>Wish Bag<h2></i></div>
      <div id="WishItemsContainer">
        <!-- <div class="WishItem">
          <div class="WishItemPic"></div>
          <div class="WishItemDetails">
            <div class="WishItemText">
              <h4>Stylish plain shirt</h4>
              <p><i><span>Shirt</span><span>.</span><span>Peter England</span></i></p>
              <p>Price : Rs. 2500.0</p>
              <p>Rating: </p>
            </div>
            <div class="WishItemButtons"><button class="btn btn-primary">Add to cart</button></div>
            <div class="WishItemDelete"><i class="fas fa-trash-alt fa-lg text-danger"></i></div>
          </div>
        </div> -->
      </div>
    </div>

    <div class="row nav">
      <div class="nav_btn col"><a class="alink" href="/">Vyntra</a></div>
      <div class="nav_btn col" id="Types"><a class="alink" href="/">Types</a></div>
      <div class="nav_btn col" id="Brands"><a class="alink" href="/">Brands</a></div>
      <div class="nav_btn col-7" id="SearchContainer">
        <div class="search">
          <div class="bar">
            <div class="icon">
              <i></i>
            </div>
          </div>
          <form>
            <input type="text">
          </form>
          <div class="close"></div>
        </div>
      </div>
      <div class="nav_btn col" id="Cart">
        <a class="alink" href="/"><i class="fa fa-shopping-cart fa-lg" aria-hidden="true"></i></a>
      </div>
      <div class="nav_btn col">
        <c:if test="${login_check == 'success'}">
        <a class="alink" href="/login">Login</a>
        </c:if>
        <c:if test="${login_check == 'error'}">
        <a class="alink" href="/logout">Logout</a>
        </c:if>
      </div>
    </div>
  </div>
  <div>
    <div class="row">
      <div class="col"></div>
      <div class="col-10" id="ProductTypesParentDiv"><div class="col-11 row" id="ProductTypes"></div></div>
    </div>
  </div>
  <div>
    <div class="row">
      <div class="col"></div>
      <div class="col-9" id="ProductBrandsParentDiv"><div class="col-11 row" id="ProductBrands"></div></div>
    </div>
  </div>
  <div id="WishlistDiv">
    <i class="fa fa-shopping-bag fa-2x" aria-hidden="true"></i>
  </div>
  <div id="banner"></div>

</html>
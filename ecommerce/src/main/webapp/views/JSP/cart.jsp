<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
     float:left;
     margin:50px 100px;
     width:50%;
     height:600px;
     border:3px solid black;
     border-radius:12px;
     background-color:yelow;
}
.buttonsdiv
{
    margin:50px 0px 0px 0px;
    float:right;
     width:30%;
     position=absolute;
	 height=300px;
     border-radius:10px;
}

.leftdiv
{
     margin-top:20px;
     float:left;
     width:48%;
     height:95%;
     background-color:blue;
     border-radius:10px;
     margin:1px;

}
.rightdiv
{
     margin-top:20px;
     float:right;
     width:48%;
     height:35%;
	 background-color:red;
     border-radius:10px;
}
.container
{
    margin:80px 80px 10px 10px;
    float:left;
    width:30%;
    position=absolute;
	height=100px;
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
	<center>hello</center>
      </div>
      <div class=rightdiv>
	<p>hii</p>
      </div>

</div>
<div class=buttonsdiv>


	  <button type="button" class="btn btn-success">Add To WishList</button>
	  <button type="button" class="btn btn-success">Continue Shopping</button>
	  </div>

</div>
 <div class="container">
  <button type="button" class="btn btn-success">purchase</button>
</div>




</body>
<div class="footer">
</div>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gear Support</title>
    <link rel="stylesheet" href="../css/Client.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://demeter.5fpro.com/tw/zipcode-selector.js"></script>
    <script src="../js/Client.js"></script>
    
      <script src="https://cdn.jsdelivr.net/npm/js-cookie@beta/dist/js.cookie.min.js"></script>
</head>
<body>
    <div class="topnav" id="myTopnav">
        <a href="${pageContext.request.contextPath}/" class="active"><img src="https://images2.imgbox.com/71/1c/8IWCo4X8_o.png" alt="logo" style="height: 30px;"></a>
        <a href="http://localhost:5500/FrontWeb/HmPage/HmPg2.html">關於我們</a>
        <a href="${pageContext.request.contextPath}/pages/products.view">商店</a>
        <div id="member" class="dropdown">
          <button class="dropbtn">會員專區
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">

            <a href="client.view">會員資料</a>
            <a href="cartlist.view">購物車</a>
            
          </div>
        </div>
        
        <a href="#about">店鋪資訊</a>
        <a href="http://localhost:5500/FrontWeb/Cart/cart.html"><img src="https://images2.imgbox.com/5e/33/iCLQGSdA_o.png" alt="cart"></a>
        
    
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a><br>
      </div>
      <!-- -------------banner img--------------- -->
      <div class="banner">
        <img src="https://www.smartsites.com/media/banner-outdoor-gear.jpg" alt="" style="width:100%; margin-top: 60px;">
      </div>
      <div id="myBtnContainer">
        <button class="btn" > <a href="http://localhost:5500/FrontWeb/Client/Client.html"></a> 會員專區</button>
        <button class="btn" > 訂單查詢</button>
        <button class="btn" ><a class="link" href="http://localhost:5500/FrontWeb/Cart/cart.html">購物車</a> </button>
      </div>
      <div class="container">
      
<!-- --------------------Form-------------------- -->
        <form class="well form-horizontal" action=" " method="post"  id="contact_form">
    <fieldset>
     
    
    <legend><center><h2><b>會員基本資料</b></h2></center></legend><br>
    
    <div class="container">
      <form action="action_page.php">
        <div class="row">
          <div class="col-25">
            <label for="fname">姓名</label>
          </div>
          <div class="col-75">
            <input type="text" id="fname" name="firstname" placeholder="姓名">
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="fname">電子郵件</label>
          </div>
          <div class="col-75">
            <input type="text" id="email" name="firstname" placeholder="@mail.com">
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="lname">電話</label>
          </div>
          <div class="col-75">
            <input type="text" id="lname" name="lastname" placeholder="電話"><br>
            <input type="text" id="lname" class="countyNum" name="lastname" placeholder="區碼">-<input type="text" id="lname" name="lastname" placeholder="家用電話">

          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="birthday">生日</label>
          </div>
          <div class="col-75">
            <input type="date" id="birthday" name="lastname" placeholder="生日">
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="country">收件地址</label>
          </div>
          <div class="col-75">
            <input class="js-demeter-tw-zipcode-selector" data-city="#city" data-dist="#dist" placeholder="請輸入郵遞區號" />
            <select id="city" placeholder="請選擇縣市"></select>
            <select id="dist" placeholder="請選擇鄉鎮區"></select>
            <input type="text" placeholder="地址"style="width:250px">
          </div>
        </div><br>
        
        <div class="row">
          <input type="submit" value="儲存">
        </div>
      </form>
    </div>
   
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored ="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
  
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  
  <link rel="stylesheet" href="../css/Product.css">
  <script src="../js/Product.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/js-cookie@beta/dist/js.cookie.min.js"></script>
</head>
<body>
  <div class="topnav" id="myTopnav">
    <a href="/javaweb-mvc-finalfantasy/" class="active"><img src="https://images2.imgbox.com/71/1c/8IWCo4X8_o.png" alt="logo" style="height: 30px;"></a>
    <a href="http://localhost:5500/FrontWeb/HmPage/HmPg2.html">關於我們</a>
    <a href="/javaweb-mvc-finalfantasy/pages/products.view">商店</a>
    <div class="dropdown">
      <button class="dropbtn">會員專區
        <i class="fa fa-caret-down"></i>
      </button>
      <div  class="dropdown-content">
		<!-- 
        <a class="member" href="/javaweb-mvc-finalfantasy/pages/client.view" >會員資料</a>
        <a class="member" href="/javaweb-mvc-finalfantasy/pages/cartlist.view">購物車</a>
        -->
       	<a class="member" onclick="filter(this)" >會員資料</a>
        <a class="member" onclick="filter(this)">購物車</a>
      </div>
    </div>
    <a href="#about">店鋪資訊</a>
    <a href="http://localhost:5500/FrontWeb/Cart/cart.html"><img src="https://images2.imgbox.com/5e/33/iCLQGSdA_o.png" alt="cart"></a>
    <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a><br>
  </div>
  <!-- 商品圖 -->
  <section id="gallery">
    <div id="panel">
      <img id="largeImage" src="https://images2.imgbox.com/92/34/HIZXuD94_o.jpeg" style="width:70% ;"/>
      <div id="thumbs">
      <!--  
          <img src="https://images2.imgbox.com/92/34/HIZXuD94_o.jpeg" alt="1st image description" style="width: 80px;"/>
          <img src="https://images2.imgbox.com/d7/d4/xg0VbrKL_o.jpeg" alt="1st image description" style="width: 80px;"/>
          <img src="https://images2.imgbox.com/50/ad/p1nD2Ucz_o.jpeg" alt="1st image description" style="width: 80px;"/>
      -->
      </div>
    </div>
    <!-- 商品資訊 -->
    <div class="productDescription">
        <p >產品名稱：</p><h1 id="productName"> 輕量組合碗 (STW-050T)</h1>
        <p >品牌：</p><h2 id="productBrand"> Snow Peak</h2>
        <p >價格：</p> <h2 id="productPrice"> 790 NTD</h2><br><br> 
      <div class="clear"></div>
      <!-- 數量 -->
      <!--  
      <div class="Quantity">
          <button onclick="decrement()">-</button>
          <input id="demo" value="1" style="font-size:30px; width:50px;text-align:center;border-radius: 20px;">
          <button onclick="increment()">+</button> 
          <h1>件</h1><br>
      </div>-->
      <br>
      <!-- 購物車按鈕 -->
        <button class="addtocart">加入購物車</button>
    </div>
  </section>
  <!-- 抓圖片功能 -->
  <script>
    $('#thumbs img').click(function(){
  $('#largeImage').attr('src',$(this).attr('src').replace('thumb','large'));
  $('#description').html($(this).attr('alt'));
});
    
  //照片數量變數
    let picNum;
    //接收傳值
    var thisURL = document.URL;

    var getval = thisURL.split('?')[1];
    var productID = getval.split("=")[1];
    console.log(productID);
    
    $(document).ready(function () {
        $.ajax({
          type: 'get',
          url: `http://localhost:8080/javaweb-mvc-finalfantasy/pages/products/detail/${productID }`,
          dataType: 'json',
          success: function (data){
        	  
            $('#productName').text(`${data.productname}`);
            $('#productBrand').text(`${data.productname}`);
            $('#productPrice').text(`${data.price} NTD`)
            $('#largeImage').prop('src',data.picmain);

            if(data.picmain!=null){
              $('#thumbs').append(`<img  src="${data.picmain}" alt="1st image description" style="width: 80px;" />`);
            }
            if(data.picfirst!=null){
              $('#thumbs').append(`<img  src="${data.picfirst}" alt="1st image description" style="width: 80px;" />`);
            }
            if(data.picsecond!=null){
              $('#thumbs').append(`<img  src="${data.picsecond}" alt="1st image description" style="width: 80px;" />`);
            }
            if(data.picthird!=null){
              $('#thumbs').append(`<img  src="${data.picthird}" alt="1st image description" style="width: 80px;" />`);
            }
            if(data.picfourth!=null){
              $('#thumbs').append(`<img  src="${data.picfourth}" alt="1st image description" style="width: 80px;" />`);
            }
            
          }

        })
      })
      
      $('#thumbs').on("click", "img", function (element) {
      var temp=element.currentTarget.getAttribute('src');
      $('#largeImage').prop('src', temp);
    });
    
  //按下購物車按鈕後送出商品id
    $('.addtocart').click(function () {
    	if(Cookies.get("user")!=undefined){
    		$.ajax({
    	    	  type: 'get',
    	          url: `http://localhost:8080/javaweb-mvc-finalfantasy/pages/addtocart/${productID}`,
    	          dataType: 'json'
    	      })
    	      alert("已加入購物車");
    	}else{
    		console.log("${pageContext.request.contextPath}");
    		window.location.href ="/javaweb-mvc-finalfantasy/secure/login.view";
    	}
      
    })
    

    
    function filter(str){
	  
	  
	  console.log(Cookies.get());
	  if(Cookies.get("user")!=undefined){
		  if(str.innerHTML=='購物車'){
			  window.location.href ="/javaweb-mvc-finalfantasy/pages/cartlist.view"
		  };
		  if(str.innerHTML=='會員資料'){
			  window.location.href ="/javaweb-mvc-finalfantasy/pages/client.view"
		  };
		  
	  }else{
		  window.location.href ="/javaweb-mvc-finalfantasy/secure/login.view";
	  }
  }

    
    
    
    
  </script>
</body>
</html>
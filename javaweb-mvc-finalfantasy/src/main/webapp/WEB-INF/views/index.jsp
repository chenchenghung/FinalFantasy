<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title> Gear Support</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./css/HmPg2.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/js-cookie@beta/dist/js.cookie.min.js"></script>
</head>
<body>



<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large"><img src="https://images2.imgbox.com/71/1c/8IWCo4X8_o.png" alt="logo" style="height: 30px;"></a>
    <a href="#band" class="w3-bar-item w3-button w3-padding-large w3-hide-small">關於我們</a>
    <a href="pages/products.view" class="w3-bar-item w3-button w3-padding-large w3-hide-small">商店</a>
    <a href="pages/newaccount.view" class="w3-bar-item w3-button w3-padding-large w3-hide-small">加入會員</a>
    <a href="pages/client.view" class="w3-bar-item w3-button w3-padding-large w3-hide-small">會員專區</a>
	<button id="login" class="w3-bar-item w3-button w3-padding-large w3-hide-small">會員專區</button>
	<button id="logout" class="w3-bar-item w3-button w3-padding-large w3-hide-small">登出</button>
	
    <a href="#shopInfo" class="w3-bar-item w3-button w3-padding-large w3-hide-small">店鋪資訊</a>
    <a href="pages/cartlist.view" class="w3-bar-item w3-button w3-padding-large w3-hide-small"><img src="https://images2.imgbox.com/5e/33/iCLQGSdA_o.png" alt="cart"></a>
    <input class="w3-padding-large w3-hide-small w3-right" type="search" id="site-search" name="q" style="height: 20px; margin-top:10px;margin-right: 20px;">
    <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a>
  </div>
</div>

<!-- Navbar on small screens (remove the onclick attribute if you want the navbar to always show on top of the content when clicking on the links) -->


<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="#band"   class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">關於我們</a>
  <a href="#tour" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">新品上架</a>
  <a href="#contact" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">加入會員</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">代理品牌</a>
  <a href="#shop" class="w3-bar-item w3-button w3-padding-large">商店</a>
</div>

<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">

  <!-- Automatic Slideshow Images -->
  <div class="mySlides w3-display-container w3-center">
    <a href="#"><img src="https://wisebaby.tw/wp-content/uploads/20210815161802_64.jpg" style="width:100%"></a>
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <a href=""><img src="https://i.ytimg.com/vi/mrSsIQbTmuc/maxresdefault.jpg" style="width:100%"></a>
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <a href=""><img src="https://cms.cdn.91app.com/images/original/40287/5072a16c-8d06-4968-bf9b-608caeb0f3d5-1609817994-foh4vsgthb_m_1200x801_800x534_400x267.jpg" style="width:100%"></a>
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      
    </div>
  </div>

  <!-- The About Section -->
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px " id="band">
    <img src="https://storage.googleapis.com/stateless-ourtrails/2019/12/7c1d084b-.jpg" alt="" style="width:100%">
    <h2 class="w3-wide">/關於 Gear Support</h2>
    <p class="w3-opacity"><i>We love Life</i></p>
    <p class="w3-justify">忙碌的都市生活，是否讓你一直想往戶外前進，
        但看到市面上琳瑯滿目的產品，不知該如何入手，
        不論是價位上讓人卻步的各大知名品牌，又或是便宜到會擔心是不是品質有疑慮的產品，
        讓許多人在真的踏出戶外前，
        就先踏不進戶外用品店。<br>除了在價格上更好入手，更不用擔心是否品質堪憂，
        也能提供客人專業的意見，讓你在踏出戶外前，
        不用擔心是否又缺了甚麼，或是這裝備適不適用，        
        讓你的戶外生活可以盡情的沉浸在大自然中，達到真正的放鬆！<br>                       
        我們的信念和堅持，讓愛上露營 I LOVE CAMPING 能與眾不同！</p>
  </div>

  <!--NewProduct Section -->
  <div class="w3-black" id="tour">
    <div class="w3-container w3-content w3-padding-64" style="max-width:800px">
      <h2 class="w3-wide w3-center">/本週新品</h2>
    

      <div class="w3-row-padding w3-padding-32" style="margin:0 -16px">
        <div class="w3-third w3-margin-bottom">
          <img src="https://images2.imgbox.com/9a/01/pFamYyWu_o.jpeg" alt="image host"style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Snowpeak 焚火台LL </b></p>
            <p class="w3-opacity">ST-034</p>
            <p></p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('ticketModal').style.display='block'">放入購物車</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="https://images2.imgbox.com/9a/01/pFamYyWu_o.jpeg" alt="Paris" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Snowpeak 焚火台LL </b></p>
            <p class="w3-opacity">ST-034</p>
            <p></p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('ticketModal').style.display='block'">放入購物車</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="https://images2.imgbox.com/9a/01/pFamYyWu_o.jpeg" alt="San Francisco" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Snowpeak 焚火台LL </b></p>
            <p class="w3-opacity">ST-034</p>
            <p></p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('ticketModal').style.display='block'">放入購物車</button>
          </div>
        </div><br>
        
        <div class="viewmore"><a href="http://localhost:5500/FrontWeb/ShopppingPg/ShopPg.html">看更多></a></div>
      </div>
    </div>
  </div>

  <!-- Ticket Modal -->
  <div id="ticketModal" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal w3-center w3-padding-32"> 
        <span onclick="document.getElementById('ticketModal').style.display='none'" 
       class="w3-button w3-teal w3-xlarge w3-display-topright">×</span>
        <h2 class="w3-wide"><i class="fa fa-suitcase w3-margin-right"></i>Tickets</h2>
      </header>
      <div class="w3-container">
        <p><label><i class="fa fa-shopping-cart"></i> Tickets, $15 per person</label></p>
        <input class="w3-input w3-border" type="text" placeholder="How many?">
        <p><label><i class="fa fa-user"></i> Send To</label></p>
        <input class="w3-input w3-border" type="text" placeholder="Enter email">
        <button class="w3-button w3-block w3-teal w3-padding-16 w3-section w3-right">PAY <i class="fa fa-check"></i></button>
        <button class="w3-button w3-red w3-section" onclick="document.getElementById('ticketModal').style.display='none'">Close <i class="fa fa-remove"></i></button>
        <p class="w3-right">Need <a href="#" class="w3-text-blue">help?</a></p>
      </div>
    </div>
    
  </div>

  <!-- The Contact Section -->
  <div class="w3-container w3-content w3-padding-64" style="max-width:800px" id="contact">
    <h2 class="w3-wide w3-center">/加入會員</h2>
    <p class="w3-opacity w3-center"><i>享更多優惠!</i></p>
    <div class="w3-row w3-padding-32">
      <div class="w3-col m6 w3-large w3-margin-bottom">
        <i class="fa fa-map-marker" style="width:30px"></i> 台中市公益路二段51號18F<br>
        <i class="fa fa-phone" style="width:30px"></i> Phone: 04-23560000<br>
        <i class="fa fa-envelope" style="width:30px"> </i> Email: mail@mail.com<br>
      </div>
      <div class="w3-col m6">
        <form action="/action_page.php" target="_blank">
          <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
            <div class="w3-half">
              <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
            </div>
            <div class="w3-half">
              <input class="w3-input w3-border" type="text" placeholder="Email" required name="Email">
            </div>
          </div>
          <input class="w3-input w3-border" type="password" placeholder="password" required name="password">
          <button class="w3-button w3-black w3-section w3-right" type="submit">SEND</button>
        </form>
      </div>
    </div>
  </div>
 
<!-- End Page Content -->
</div>
<div class="bg-text"></div>
<!-- Image of location/map -->

<button id="test">test</button>
<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
  <a href=""><i class="fa fa-facebook-official w3-hover-opacity"></i></a>
  <a href=""><i class="fa fa-instagram w3-hover-opacity"></i></a>
  <a href=""><i class="fa fa-snapchat w3-hover-opacity"></i></a>
  
  
</footer>

<script>
function getCookie(name) {
	  const value = `; ${document.cookie}`;
	  const parts = value.split(`; ${name}=`);
	  if (parts.length === 2) return parts.pop().split(';').shift();
	}

$('#login').click(() => {

        if(Cookies.get("user")!=undefined){
        	window.location.href ="${pageContext.request.contextPath}/pages/client.view";
        }else{
        	
        	window.location.href ="${pageContext.request.contextPath}/secure/login.view";
        }
   
	});
	
$('#logout').click(() => {
	console.log(Cookies.get());
	if(Cookies.get("user")!=undefined){
		Cookies.remove("user");
		$.ajax({
        	url: "${pageContext.request.contextPath}/pages/logout.controller",
        	type: 'get',
        	dataType: 'json'
        })
	}
	console.log(Cookies.get());
	alert("已登出")
	})
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 3000);    
}

// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}

// When the user clicks anywhere outside of the modal, close it
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</body>
</html>

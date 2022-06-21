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
    <link rel="stylesheet" type="text/css"  href="../css/Cart.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style>
        #productNmae{
        	width:175px;
        }
        
        #customerInformation {
            
            visibility:hidden;
        }
        
        #informationCheck{
        	visibility:hidden;
        }
        
        #cancel{
        	visibility:hidden;
        }
        
    </style>
    
    
</head>
<body>
    <div class="topnav" id="myTopnav">
        <a href="/javaweb-mvc-finalfantasy/" class="active"><img src="https://images2.imgbox.com/71/1c/8IWCo4X8_o.png" alt="logo" style="height: 30px;"></a>
        <a href="http://localhost:5500/FrontWeb/HmPage/HmPg2.html">關於我們</a>
        <a href="products.view">商店</a>
        <div class="dropdown">
            <button class="dropbtn">會員專區
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">

              <a href="client.view">會員資料</a>
              <a href="cartlist.view">購物車</a>
              
            </div>
          </div>
        <a href="#about">店鋪資訊</a>
        <a href="cartlist.view"><img src="https://images2.imgbox.com/5e/33/iCLQGSdA_o.png" alt="cart"></a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
      </div>

<!-- Shopping Cart-->
<div class="banner">
    <img src="https://outdoorholiday.co.uk/wp-content/uploads/2019/05/Family-Tent-Shop-Banner.jpg" alt=""style="width:100%">
</div>
<div class="table1">
    <label>
        <input type="checkbox" name="" id="checkAll" value="">全選 <h4>商品 件數 單價</h4>
    </label>
    <!--  
    <button id="btntest">test</button>
    -->
</div>
      <div class="sum">
        
            商品件數<br>
            <span id="totalCount"></span><br>
       
            商品總額<br>
            <span id="totalPrice"></span><br>
            
        
    </div>
    <div id="container">
        <ul class="productgroup">
        <!--  
            <li id="products">
                <input type="checkbox" name="liCheck" id="" value="">
                <img src="https://images2.imgbox.com/07/65/hqTcbvIc_o.jpeg" style="width:100px;" alt="">
                <h4>Snowpeak 焚火台LL <br>ST-034</h4>
                <button type="button" class="decrease" disabled="disabled">-</button>
                <h2>
                    <span class="piece">0</span>
                </h2>
                <button type="button" class="increase">+</button>
                <p>
                    <span class="price">3000</span>NTD
                </p>
                <p id="lilsum">
                    小計
                    <input class="smallPrice" type="text" name="" id="" value="0" disabled="disabled">
                </input>
                <button class="delBtn" onclick="RemoveBtn()">刪除</button>
            </li><br>
            <li id="products">
                <input type="checkbox" name="liCheck" id="" value="">
                <img src="https://images2.imgbox.com/07/65/hqTcbvIc_o.jpeg" style="width:100px;" alt="">
                <h4>Snowpeak 焚火台LL <br>ST-034</h4>
                <button type="button" class="decrease" disabled="disabled">-</button>
                <h2>
                    <span class="piece">0</span>
                </h2>
                <button type="button" class="increase">+</button>
                <p>
                    <span class="price">3000</span>NTD
                </p>
                <p id="lilsum">
                    小計
                    <input class="smallPrice" type="text" name="" id="" value="0" disabled="disabled">
                </input>
                <button class="delBtn" onclick="RemoveBtn()">刪除</button>
            </li><br>
            <li id="products">
                <input type="checkbox" name="liCheck" id="" value="">
                <img src="https://images2.imgbox.com/07/65/hqTcbvIc_o.jpeg" style="width:100px;" alt="">
                <h4>Snowpeak 焚火台LL <br>ST-034</h4>
                <button type="button" class="decrease" disabled="disabled">-</button>
                <h2>
                    <span class="piece">0</span>
                </h2>
                <button type="button" class="increase">+</button>
                <p>
                    <span class="price">3000</span>NTD
                </p>
                <p id="lilsum">
                    小計
                    <input class="smallPrice" type="text" name="" id="" value="0" disabled="disabled">
                </input>
                <button class="delBtn" onclick="RemoveBtn()">刪除</button>
            </li><br>
            <li id="products">
                <input type="checkbox" name="liCheck" id="" value="">
                <img src="https://images2.imgbox.com/07/65/hqTcbvIc_o.jpeg" style="width:100px;" alt="">
                <h4>Snowpeak 焚火台LL <br>ST-034</h4>
                <button type="button" class="decrease" disabled="disabled">-</button>
                <h2>
                    <span class="piece">0</span>
                </h2>
                <button type="button" class="increase">+</button>
                <p>
                    <span class="price">3000</span>NTD
                </p>
                <p id="lilsum">
                    小計
                    <input class="smallPrice" type="text" name="" id="" value="0" disabled="disabled">
                </input>
                <button class="delBtn" onclick="RemoveBtn()">刪除</button>
            </li><br>
            <li id="products">
                <input type="checkbox" name="liCheck" id="" value="">
                <img src="https://images2.imgbox.com/07/65/hqTcbvIc_o.jpeg" style="width:100px;" alt="">
                <h4>Snowpeak 焚火台LL <br>ST-034</h4>
                <button type="button" class="decrease" disabled="disabled">-</button>
                <h2>
                    <span class="piece">0</span>
                </h2>
                <button type="button" class="increase">+</button>
                <p>
                    <span class="price">3000</span>NTD
                </p>
                <p id="lilsum">
                    小計
                    <input class="smallPrice" type="text" name="" id="" value="0" disabled="disabled">
                </input>
                <button class="delBtn" onclick="RemoveBtn()">刪除</button>
            </li><br>
            -->
        </ul>
    </div><br><br>
    <button class="checkout">結帳</button>
    <br>
    <form id="customerInformation" >
    <fieldset>
        <legend >收件人資料</legend>
        <label for="userName">姓名:</label>
         <input id="userName" type="text"> <br>
        <label for="userPhone">電話:</label>
         <input id="userPhone" type="tel"><br>
        <label for="userCity">縣市:</label>
         <input id="userCity" type="text"><br>
        <label for="userAddress">地址:</label>
         <input id="userAddress" type="text"><br>

    </fieldset>
    <br>
    
    <!--  
    <input type="submit" value="送出訂單" id="informationCheck">
    -->
</form>

<button id="informationCheck" >送出訂單</button>
<button id="cancel" >取消</button>
<br><br>
    
    
    <script>
    redo();
    let checkBox;
    let productPiece;
    let dataOrder={};
    dataOrder["checkout"]={};
    dataOrder["orders"]={};
    dataOrder["totalamount"]={};
    
    function myFunction() {
        var x = document.getElementById("myTopnav");
        if (x.className === "topnav") {
          x.className += " responsive";
        } else {
          x.className = "topnav";
        }
      }
      
      function myFunction() {
        var x = document.getElementById("myTopnav");
        if (x.className === "topnav") {
          x.className += " responsive";
        } else {
          x.className = "topnav";
        }
      }
    
    
    function redo() {
        // 2.獲取元素
        var liCheck = document.getElementsByName("liCheck"); //li裡面的核取方塊
        var decrease = document.getElementsByClassName("decrease"); //減號
        var piece = document.getElementsByClassName("piece"); //件數
        var increase = document.getElementsByClassName("increase"); //加號
        var price = document.getElementsByClassName("price"); //單價
        var smallPrice = document.getElementsByClassName("smallPrice"); //小計
        var checkAll = document.getElementById("checkAll"); //全選核取方塊
        var totalCount = document.getElementById("totalCount"); //總計
        var totalPrice = document.getElementById("totalPrice"); //總價
        // 3.加減按鈕
        for (var i = 0; i < decrease.length; i++) {
            // 4.另存下標
            decrease[i].index = i;
            increase[i].index = i;
            liCheck[i].index = i;
            // 5.減號的點選事件
            decrease[i].onclick = function () {
                // 5-1.判斷件數是否大於0
                if (piece[this.index].innerHTML <= 1) {
                    this.disabled = true; //當件數小於等於0時, 將減號按鈕禁用
                }
                // 5-1-1.當前件數-1
                piece[this.index].innerHTML--;
                // 5-1-2.計算小計
                smallPrice[this.index].value = Number(smallPrice[this.index].value) - Number(price[this.index].innerHTML);
                // 6-4.如果當前條目是被選中狀態, 則需要將該商品計入總計和總價
                if (liCheck[this.index].checked) { //選中
                    totalCount.innerHTML--;
                    totalPrice.innerHTML = Number(totalPrice.innerHTML) - Number(price[this.index].innerHTML);
                }
            }
            // 6.加號的點選事件
            increase[i].onclick = function () {
                // 6-1.將對應的減號解禁
                decrease[this.index].disabled = false;
                // 6-2.當前件數+1
                piece[this.index].innerHTML++;
                // 6-3.計算小計
                smallPrice[this.index].value = Number(smallPrice[this.index].value) + Number(price[this.index].innerHTML);
                // 6-4.如果當前條目是被選中狀態, 則需要將該商品計入總計和總價
                if (liCheck[this.index].checked) { //選中
                    totalCount.innerHTML++;
                    totalPrice.innerHTML = Number(totalPrice.innerHTML) + Number(price[this.index].innerHTML);
                }
            }
            // 7.核取方塊的狀態改變事件
            var count = 0; //儲存選中個數
            liCheck[i].onchange = function () {
                // 7-1.判斷是否選中
                if (this.checked) { //選中狀態
                    count++;
                    totalCount.innerHTML = Number(totalCount.innerHTML) + Number(piece[this.index].innerHTML); //總計加當前件數
                    totalPrice.innerHTML = Number(totalPrice.innerHTML) + Number(smallPrice[this.index].value); //總計加當前件數
                    // 7-1-1. 判斷選中個數是否與核取方塊個數一致
                } else { //取消選中狀態
                    count--;
                    totalCount.innerHTML = Number(totalCount.innerHTML) - Number(piece[this.index].innerHTML); //總計加當前件數
                    totalPrice.innerHTML = Number(totalPrice.innerHTML) - Number(smallPrice[this.index].value); //總計加當前件數
                }
                count == liCheck.length ? checkAll.checked = true : checkAll.checked = false;
            }
        }
        // 8.全選核取方塊
        checkAll.onchange = function () {
            totalCount.innerHTML = 0; //總計置為0
            totalPrice.innerHTML = 0; //總價置為0
            for (var j = 0; j < liCheck.length; j++) {
                // 8-1. 將li裡面的核取方塊與全選狀態保持一致
                liCheck[j].checked = this.checked;
                // 8-2. 判斷是否全選
                if (this.checked) {
                    count = liCheck.length;
                    totalCount.innerHTML = Number(totalCount.innerHTML) + Number(piece[j].innerHTML);
                    totalPrice.innerHTML = Number(totalPrice.innerHTML) + Number(smallPrice[j].value);
                } else {
                    count = 0;
                }
            }
        }
    }
    
    //載入購物車資料
    $(document).ready(function (){
    	$.ajax({
    		type: 'get',
            url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/cartlist",
            
            dataType: 'json',
            success:function(data){
            	
            	for(var i=0;i<data.length;i++){
            		$('.productgroup').append(`
                		<li id="products${data[i].pid}">
                        <input type="checkbox" name="liCheck" id="checkbox" value="" data-productID="${data[i].pid}">
                        <img src="${data[i].picmain}" style="width:100px;" alt="">
                        <div id="productNmae">
                        <h4>${data[i].productname}</h4>
                        </div>
                        <button type="button" class="decrease" disabled="disabled">-</button>
                        <h2>
                            <span class="piece" id="productPiece">0</span>
                        </h2>
                        <button type="button" class="increase">+</button>
                        <p>
                            <span class="price">${data[i].price}</span>NTD
                        </p>
                        <p id="lilsum">
                            小計
                            <input class="smallPrice" type="text" name="" id="" value="0" disabled="disabled">
                        </input>
                        <button class="delBtn" onclick="RemoveBtn(this)" data-productID="${data[i].pid}">刪除</button>
                    </li><br>
                		
                		
                		`);
            		
            	}
            	
            	redo();
            	checkBox = document.querySelectorAll("#checkbox");
            	productPiece = document.querySelectorAll("#productPiece");
            }
    	})
    	
    })
    
    
    $('#btntest').click(()=>{
    	
    	console.log(document.getElementById("totalPrice").innerHTML);
    })
    
    
    
    //checkout按鈕
    $('.checkout').click(function(){
    	$('#customerInformation').css("visibility",'visible');
    	$('.checkout').css("visibility",'hidden');
    	$('#informationCheck').css("visibility",'visible');
    	$('#cancel').css("visibility",'visible');
    })
    
    //訂單送出
    $('#informationCheck').click(function(){
    	alert('訂單已送出');
    	
    	let totalPrice=document.getElementById("totalPrice").innerHTML;
    	dataOrder["totalamount"]=totalPrice;
    	
    	for(var i=0;i<checkBox.length;i++){
    		if(checkBox[i].checked){
    			//console.log(checkBox[i].getAttribute('data-productID'));
    			//console.log(productPiece[i].innerHTML);
    			let pid=checkBox[i].getAttribute('data-productID');
    			let pPiece=productPiece[i].innerHTML;
    			dataOrder["checkout"][pid]=parseInt(pPiece);
            }
    	}
    	let userName=$('#userName').prop('value');
    	let userPhone=$('#userPhone').prop('value');
    	let userCity=$('#userCity').prop('value');
    	let userAddress=$('#userAddress').prop('value');
    	
    	
    	dataOrder["orders"]["ordername"]=userName;
    	dataOrder["orders"]["phone"]=userPhone;
    	dataOrder["orders"]["code"]='500';
    	dataOrder["orders"]["city"]=userCity;
    	dataOrder["orders"]["address"]=userAddress;
    	dataOrder["orders"]["totalamount"]=parseInt(totalPrice);
    	
    	console.log(dataOrder);
    	
    	$.ajax({
    		type: "POST",
            url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/neworder.controller",
            data:JSON.stringify(dataOrder),
            contentType : 'application/json; charset=utf-8',
            dataType: 'json'
            
    	})
    	
    })
    
    //取消按鈕
    $('#cancel').click(function(){
    	$('#userName').prop('value','');
    	$('#userPhone').prop('value','');
    	$('#userCity').prop('value','');
    	$('#userAddress').prop('value','');
    	$('#customerInformation').css("visibility",'hidden');
    	$('#cancel').css("visibility",'hidden');
    	$('.checkout').css("visibility",'visible');
    	$('#informationCheck').css("visibility",'hidden');
    })
    
    //刪除功能
    function RemoveBtn(element) {
    	
            $(`#products${element.getAttribute('data-productID')}`).remove();
            $.ajax({
            	url: `http://localhost:8080/javaweb-mvc-finalfantasy/pages/delfromcart/${element.getAttribute('data-productID')}`,
            	type: 'DELETE',
            	dataType: 'json'
            })
        }
    
    </script>
    
</body>
</html>
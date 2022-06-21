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
    <title>Gear Support</title>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.css">
    <link rel="stylesheet" href="../css/ShopPg.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"></script>
    
    <script src="../js/ShopPg.js"></script>
    
    <style>
        #btnPage {

            display: flex;
            justify-content: center;
            margin-bottom: 15px;
        }

        .card {
            height: 350px;
        }
        img{
        cursor: pointer;
        }
    </style>
    
</head>
<body>
    <!-- Navbar -->
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
        <a href="http://localhost:5500/FrontWeb/Cart/cart.html#"><img src="https://images2.imgbox.com/5e/33/iCLQGSdA_o.png" alt="cart"></a>
        
    
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
      </div>
      
    <!-- Product Slider  -->
    <div class="slider">
        <div class="items"><a href="#1"><img src="https://images2.imgbox.com/2b/bc/n2gwDWLt_o.png" alt=""></a></div>
        <div class="items"><a href="#2"><img src="https://images2.imgbox.com/8f/7f/ZFUtvCau_o.png" alt=""></a></div>
        <div class="items"><a href="#3"><img src="https://images2.imgbox.com/d4/1b/O4Dd8lBv_o.png" alt=""></a></div>
        <div class="items"><a href="#4"><img src="https://images2.imgbox.com/ed/ec/E1TafV3T_o.png" alt=""></a></div>
        <div class="items"><a href="#5"><img src="https://images2.imgbox.com/bf/05/NpcO42B5_o.png" alt=""></a></div>
    </div><br><br><br>
    
    <div>
        <!--<button id="btnall" class="btn" onclick="filterSelection('all')"> 全部商品</button>-->
        <button id="btnall"> 全部商品</button>
        <button id="btnent"> 帳篷</button>
        <button id="btnoven"> 焚火爐具</button>
        <button id="btngas"> 瓦斯爐具</button>
        <button id="btntools"> 求生用品</button>
        <button id="btntableware"> 餐具系列</button>
        <!--  
        <button id="btntest"> test</button>
        <button id="btntest2"> test2</button>
        -->
        <input id="search" type="text">
        <button id="btnsearch"> 搜尋</button>
    </div><br>
    

   
      <!-- Product Cards -->
      
   <div id="row" class="row">

    </div>   
      
      <br><br>
       <div id="btnPage">
        <button id="btnPre">上一頁 </button>
        <div id="btnPageNum">

        </div>
        <button id="btnNext"> 下一頁</button>
    </div>
    
    
        <!-- Script for Slider -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.js"></script>
    <script>
        $('.slider').slick({
    centerMode: true,
    Infinity:true,
    centerPadding: '5px',
    slidesToShow: 3,
    arrows:true,
    dots:false,
    responsive: [
        {
      breakpoint: 800,
      settings: {
        arrows: true,
        centerMode: true,
        centerPadding: '0px',
        slidesToShow: 2
      }
    },
    {
      breakpoint: 520,
      settings: {
        arrows: true,
        dots:false,
        centerMode: true,
        centerPadding: '0px',
        slidesToShow: 1
      }
    }
    ]
    });
        
        
        //目前頁數
        let nowPage = 1;
        //商品數量所需的總頁數
        let numPage = 1;




        //all頁數按鈕功能
        function showProduct(pageNum) {
            $('#row').empty();
            //獲得按鈕的自訂義屬性 data-pageNum(按鈕號碼) 來判斷跳頁的頁數
            var num = pageNum.getAttribute("data-pageNum");
            //改變目前頁數
            nowPage = num;
            $.ajax({
                type: 'get',
                url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/products",
                dataType: 'json',
                success: function (data) {


                    if (numPage == nowPage) {
                        for (var i = (num - 1) * 12; i < num * 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                 <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" >放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    } else {
                        for (var i = (num - 1) * 12; i < num * 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                 <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" >放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    }





                }
            })
        }



        //帳篷頁數按鈕功能
        function showProductEnt(pageNum) {
            $('#row').empty();
            //獲得按鈕的自訂義屬性 data-pageNum(按鈕號碼) 來判斷跳頁的頁數
            var num = pageNum.getAttribute("data-pageNum");
            //改變目前頁數
            nowPage = num;
            //發出請求已獲得product jason檔 ，然後append商品資訊
            $.ajax({
                type: 'get',
                url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/products/category/5",
                dataType: 'json',
                success: function (data) {
                    //Math.ceil(data.length / 12);
                    if (numPage == nowPage) {
                        for (var i = (num - 1) * 12; i < num * 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                 <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" >放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    } else {
                        for (var i = (num - 1) * 12; i < num * 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                 <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" >放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    }



                }
            })
        }

        //焚火爐具頁數功能
        function showProductOven(pageNum) {
            $('#row').empty();
            //獲得按鈕的自訂義屬性 data-pageNum(按鈕號碼) 來判斷跳頁的頁數
            var num = pageNum.getAttribute("data-pageNum");
            //改變目前頁數
            nowPage = num;
            //發出請求已獲得product jason檔 ，然後append商品資訊
            $.ajax({
                type: 'get',
                url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/products/category/2",
                dataType: 'json',
                success: function (data) {
                    //Math.ceil(data.length / 12);
                    if (numPage == nowPage) {
                        for (var i = (num - 1) * 12; i < num * 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                 <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" >放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    } else {
                        for (var i = (num - 1) * 12; i < num * 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                 <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" >放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    }



                }
            })

        }

        //瓦斯爐具頁數功能
        function showProductGas(pageNum) {
            $('#row').empty();
            //獲得按鈕的自訂義屬性 data-pageNum(按鈕號碼) 來判斷跳頁的頁數
            var num = pageNum.getAttribute("data-pageNum");
            //改變目前頁數
            nowPage = num;
            //發出請求已獲得product jason檔 ，然後append商品資訊
            $.ajax({
                type: 'get',
                url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/products/category/3",
                dataType: 'json',
                success: function (data) {
                    if (numPage == nowPage) {
                        for (var i = (num - 1) * 12; i < num * 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                 <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" >放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    } else {
                        for (var i = (num - 1) * 12; i < num * 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                 <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" >放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    }

                }
            })
        }

        //求生工具頁數功能
        function showProductTools(pageNum) {
            $('#row').empty();
            //獲得按鈕的自訂義屬性 data-pageNum(按鈕號碼) 來判斷跳頁的頁數
            var num = pageNum.getAttribute("data-pageNum");
            //改變目前頁數
            nowPage = num;
            //發出請求已獲得product jason檔 ，然後append商品資訊
            $.ajax({
                type: 'get',
                url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/products/category/4",
                dataType: 'json',
                success: function (data) {
                    if (numPage == nowPage) {
                        for (var i = (num - 1) * 12; i < num * 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                 <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" >放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    } else {
                        for (var i = (num - 1) * 12; i < num * 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                 <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" >放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    }



                }
            })
        }


        //餐具頁數功能
        function showProductTableware(pageNum) {
            $('#row').empty();
            //獲得按鈕的自訂義屬性 data-pageNum(按鈕號碼) 來判斷跳頁的頁數
            var num = pageNum.getAttribute("data-pageNum");
            //改變目前頁數
            nowPage = num;
            //發出請求已獲得product jason檔 ，然後append商品資訊
            $.ajax({
                type: 'get',
                url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/products/category/1",
                dataType: 'json',
                success: function (data) {
                    if (numPage == nowPage) {
                        for (var i = (num - 1) * 12; i < num * 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                 <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" >放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    } else {
                        for (var i = (num - 1) * 12; i < num * 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                 <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" >放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    }



                }
            })
        }

        //搜尋頁數功能
        function showProductSearch(pageNum) {
            let searchText = $('#search').prop('value');
            $('#row').empty();
            //獲得按鈕的自訂義屬性 data-pageNum(按鈕號碼) 來判斷跳頁的頁數
            var num = pageNum.getAttribute("data-pageNum");
            //改變目前頁數
            nowPage = num;
            //發出請求已獲得product jason檔 ，然後append商品資訊
            $.ajax({
                type: 'get',
                url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/products",
                dataType: 'json',
                success: function (data) {
                    let productArray = [];
                    //將輸入文字設定為正規表達式
                    let pattern = new RegExp(searchText);
                    //把商品名稱含有輸入文字的商品資料 新增至productEntArray
                    for (var i = 0; i < data.length; i++) {
                        if (pattern.test(data[i].productname)) {
                            productArray.push(data[i]);
                        }
                    }
                    for (var i = (num - 1) * 12; i < num * 12; i++) {
                        $('#row').append(
                            `<div class="column ">
                                    <div class="card">
                                        <img src="${productArray[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${productArray[i].pid}">
                                        <p>${productArray[i].productname}</br>${productArray[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${productArray[i].pid}" onclick="addCart(this)">放入購物車</button>
                                    </div>
                                </div>`
                        );
                    }

                }
            })
        }

        //購物車按鈕功能
        function showCart(element) {


        }

        //當document準備好時，產生all產品資料
        //載入all商品資料
        $(document).ready(function () {
            $.ajax({
                type: 'get',
                url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/products",
                dataType: 'json',
                success: function (data) {
                    //產生頁數按鈕
                    numPage = Math.ceil(data.length / 12);
                    for (var i = 1; i <= numPage; i++) {
                        $('#btnPageNum').append(
                            `<button id="btnPg${i}" data-pageNum="${i}" onclick="showProduct(this)"> ${i}</button>`
                        );
                    }

                    for (var i = 0; i < 12; i++) {
                        $('#row').append(
                            `<div class="column ">
                                    <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" >放入購物車</button>
                                    </div>
                                </div>`
                        );
                    }

                }

            })
        })













        //all功能鍵
        $('#btnall').click(function () {
            $('#row').empty();
            $('#btnPageNum').empty();
            $.ajax({
                type: 'get',
                url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/products",
                dataType: 'json',
                success: function (data) {
                    //產生頁數按鈕
                    numPage = Math.ceil(data.length / 12);
                    for (var i = 1; i <= numPage; i++) {
                        $('#btnPageNum').append(
                            `<button id="btnPg${i}" data-pageNum="${i}" onclick="showProduct(this)"> ${i}</button>`
                        );
                    }

                    for (var i = 0; i < 12; i++) {
                        $('#row').append(
                            `<div class="column ">
                                    <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" onclick="showCart(this)">放入購物車</button>
                                    </div>
                                </div>`
                        );
                    }

                }

            })

        })

        //帳篷分類功能鍵
        $('#btnent').click(function () {
            $('#row').empty();
            $('#btnPageNum').empty();
            $.ajax({
                type: 'get',
                url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/products/category/5",
                dataType: 'json',
                success: function (data) {
                    numPage = Math.ceil(data.length / 12);
                    for (var i = 1; i <= numPage; i++) {
                        $('#btnPageNum').append(
                            `<button id="btnPg${i}" data-pageNum="${i}" onclick="showProductEnt(this)"> ${i}</button>`
                        );
                    }

                    if (numPage > 1) {
                        for (var i = 0; i < 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                    <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" onclick="showCart(this)">放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    } else {
                        for (var i = 0; i < data.length; i++) {
                            $('#row').append(
                                `<div class="column ">
                                    <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" onclick="showCart(this)">放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    }



                }
            })

        })

        //焚火爐具分類功能鍵
        $('#btnoven').click(function () {
            $('#row').empty();
            $('#btnPageNum').empty();
            $.ajax({
                type: 'get',
                url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/products/category/2",
                dataType: 'json',
                success: function (data) {
                    numPage = Math.ceil(data.length / 12);
                    for (var i = 1; i <= numPage; i++) {
                        $('#btnPageNum').append(
                            `<button id="btnPg${i}" data-pageNum="${i}" onclick="showProductOven(this)"> ${i}</button>`
                        );
                    }

                    if (numPage > 1) {
                        for (var i = 0; i < 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                    <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" onclick="showCart(this)">放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    } else {
                        for (var i = 0; i < data.length; i++) {
                            $('#row').append(
                                `<div class="column ">
                                    <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" onclick="showCart(this)">放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    }
                }
            })

        })

        //瓦斯爐具分類功能
        $('#btngas').click(function () {
            $('#row').empty();
            $('#btnPageNum').empty();
            $.ajax({
                type: 'get',
                url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/products/category/3",
                dataType: 'json',
                success: function (data) {
                    numPage = Math.ceil(data.length / 12);
                    for (var i = 1; i <= numPage; i++) {
                        $('#btnPageNum').append(
                            `<button id="btnPg${i}" data-pageNum="${i}" onclick="showProductGas(this)"> ${i}</button>`
                        );
                    }

                    if (numPage > 1) {
                        for (var i = 0; i < 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                    <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" onclick="showCart(this)">放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    } else {
                        for (var i = 0; i < data.length; i++) {
                            $('#row').append(
                                `<div class="column ">
                                    <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" onclick="showCart(this)">放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    }
                }
            })

        })

        //求生用品分類功能
        $('#btntools').click(function () {
            $('#row').empty();
            $('#btnPageNum').empty();
            $.ajax({
                type: 'get',
                url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/products/category/4",
                dataType: 'json',
                success: function (data) {
                    numPage = Math.ceil(data.length / 12);
                    for (var i = 1; i <= numPage; i++) {
                        $('#btnPageNum').append(
                            `<button id="btnPg${i}" data-pageNum="${i}" onclick="showProductTableware(this)"> ${i}</button>`
                        );
                    }

                    if (numPage > 1) {
                        for (var i = 0; i < 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                    <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" onclick="showCart(this)">放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    } else {
                        for (var i = 0; i < data.length; i++) {
                            $('#row').append(
                                `<div class="column ">
                                    <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" onclick="showCart(this)">放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    }
                }
            })

        })

        //餐具分類功能
        $('#btntableware').click(function () {
            $('#row').empty();
            $('#btnPageNum').empty();
            $.ajax({
                type: 'get',
                url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/products/category/1",
                dataType: 'json',
                success: function (data) {
                    numPage = Math.ceil(data.length / 12);
                    for (var i = 1; i <= numPage; i++) {
                        $('#btnPageNum').append(
                            `<button id="btnPg${i}" data-pageNum="${i}" onclick="showProductTableware(this)"> ${i}</button>`
                        );
                    }

                    if (numPage > 1) {
                        for (var i = 0; i < 12; i++) {
                            $('#row').append(
                                `<div class="column ">
                                    <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" onclick="showCart(this)">放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    } else {
                        for (var i = 0; i < data.length; i++) {
                            $('#row').append(
                                `<div class="column ">
                                    <div class="card">
                                        <img src="${data[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${data[i].pid}">
                                        <p>${data[i].productname}</br>${data[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${data[i].pid}" onclick="showCart(this)">放入購物車</button>
                                    </div>
                                </div>`
                            );
                        }
                    }
                }
            })

        })

        //搜尋功能
        $('#btnsearch').click(function () {
            let searchText = $('#search').prop('value');
            //console.log(searchText);
            $('#row').empty();
            $('#btnPageNum').empty();
            $.ajax({
                type: 'get',
                url: "http://localhost:8080/javaweb-mvc-finalfantasy/pages/products",
                dataType: 'json',
                success: function (data) {
                    let productArray = [];
                    //將輸入文字設定為正規表達式
                    let pattern = new RegExp(searchText);
                    //把商品名稱含有輸入文字的商品資料 新增至productEntArray
                    for (var i = 0; i < data.length; i++) {
                        if (pattern.test(data[i].productname)) {
                            productArray.push(data[i]);
                        }
                    }
                    console.log(productArray)

                    if (productArray.length == 0) {
                        $('#row').append(
                            `<p id="noData">查無資料</p>`
                        )
                    } else {
                        //判斷頁數
                        numPage = Math.ceil(productArray.length / 12);
                        //產生頁數按鈕
                        for (var i = 1; i <= numPage; i++) {
                            $('#btnPageNum').append(
                                `<button id="btnPg${i}" data-pageNum="${i}" onclick="showProductSearch(this)"> ${i}</button>`
                            );
                        }
                        if (numPage > 1) {

                            for (var i = 0; i < 12; i++) {
                                $('#row').append(
                                    `<div class="column ">
                                    <div class="card">
                                        <img src="${productArray[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${productArray[i].pid}">
                                        <p>${productArray[i].productname}</br>${productArray[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${productArray[i].pid}" onclick="showCart(this)">放入購物車</button>
                                    </div>
                                </div>`
                                );
                            }
                        } else {
                            for (var i = 0; i < productArray.length; i++) {
                                $('#row').append(
                                    `<div class="column ">
                                    <div class="card">
                                        <img src="${productArray[i].picmain}" style="width:180px;" alt="" onclick="showProductDetail(this)" data-productID="${productArray[i].pid}">
                                        <p>${productArray[i].productname}</br>${productArray[i].price} NTD</p>
                                        <button class="CartButton" data-productID="${productArray[i].pid}" onclick="showCart(this)">放入購物車</button>
                                    </div>
                                </div>`
                                );
                            }
                        }

                    }

                }
            })

        })



        //上下頁功能  
        $('#btnPre').click(function () {
            if (nowPage == '1') {
                document.getElementById(`btnPg1`).click();

            } else {
                document.getElementById(`btnPg${parseInt(nowPage - 1)}`).click();

            }

        })

        $('#btnNext').click(function () {
            if (nowPage == numPage) {
                document.getElementById(`btnPg${numPage}`).click();

            } else {
                document.getElementById(`btnPg${(parseInt(nowPage) + 1)}`).click();

            }

        })

	//按圖片進入商品詳情頁
        function showProductDetail(element){
            var param = element.getAttribute('data-productID');
            console.log(param);
            //location.href = `/大專/FrontWeb/Product/Product.html?productID=${param}`;
            location.href = `http://localhost:8080/javaweb-mvc-finalfantasy/pages/productdetail.view?productID=${param}`;
        }
        
      //按下購物車按鈕後送出商品id
        $('#row').on("click", ".CartButton", function (element) {
        	var productID=element.currentTarget.getAttribute('data-productID');
        	$.ajax({
        		type: 'get',
                url: `http://localhost:8080/javaweb-mvc-finalfantasy/pages/addtocart/${productID}`,
                dataType: 'json'
        	})
        	alert("已加入購物車");
    	});
        
    

    </script>
    <!-- End of Slider Script -->
    
</body>
</html>
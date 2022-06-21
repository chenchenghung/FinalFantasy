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
  

window.onload = function() {
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
        decrease[i].onclick = function() {
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
        increase[i].onclick = function() {
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
        liCheck[i].onchange = function() {
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
    checkAll.onchange = function() {
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




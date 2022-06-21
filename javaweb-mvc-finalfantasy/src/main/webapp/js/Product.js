// NAvbar
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





//加減按鈕

function increment() {
  document.getElementById('demo').value++;
}
function decrement() {
  if(document.getElementById('demo').value<=1){
    document.getElementById('demo').value==1;
  }else{
    document.getElementById('demo').value--;
  }
  
}
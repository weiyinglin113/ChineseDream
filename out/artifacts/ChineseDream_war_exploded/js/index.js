var link = document.queryselector("grid1");
var bg = document.querySelector(".bg");
var closeBtn = document.querySelector(".inputButton-right");
var loginBtn = document.querySelector(".inputButton-left");
var h1 = document.querySelector(".h1");
var login = document.querySelector(".inputBox");
// 点击注册/登录，显示遮盖层bg、登录窗口login  
link.addEventListener("click", function () {
  bg.style.display = 'block';
  login.style.display = 'block';
})
// 关闭登录框  隐藏遮盖层bg 、登录窗口login
closeBtn.addEventListener("click", function () {
  bg.style.display = 'none';
  login.style.display = 'none';
})
//鼠标拖拽功能
// (1) 当我们鼠标按下， 就获得鼠标在盒子内的坐标
login.addEventListener("mousedown", function (e) {
  var x = e.pageX - login.offsetLeft;
  var y = e.pageY - login.offsetTop;

  //计算鼠标移动时 登陆框需要移动的距离
  document.addEventListener("mousemove", move)

  function move(e) {
    login.style.left = e.pageX - x + "px";
    login.style.top = e.pageY - y + "px";
  }

  //清除 mousemove移动事件
  document.addEventListener("mouseup", function () {
    document.removeEventListener("mousemove", move)
  })
})

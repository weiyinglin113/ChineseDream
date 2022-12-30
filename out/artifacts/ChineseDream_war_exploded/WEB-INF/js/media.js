var video = document.getElementById("mp4");
var btnstart = document.getElementById("btnstart");
var btntime = document.getElementById("btntime");
var btngo = document.getElementById("btngo");
var btnback = document.getElementById("btnback");
var btnmute = document.getElementById("btnmute");
var btnsound = document.getElementById("btnsound");
var btnbig = document.getElementById("btnbig");
var time;
//视频开始回放时执行

video.onplaying = function () {
    //获取当前video的总时间
    var allTime = this.duration;
    btntime.setAttribute("max", allTime);
};
//视频播放位置发生变化时开始执行
video.ontimeupdate = function () {
    btntime.value = this.currentTime;
};
//播放进度条的事件
btntime.addEventListener("mousedown", function () {
    video.pause();
    this.onmousemove = function () {
        video.currentTime = this.value;
    };
    this.onmouseup = function () {
        video.play();
        this.onmousemove = null;
        this.onmouseup = null;
    }
});
//快进的点击事件
btngo.addEventListener("click", function () {
    btnstart.innerHTML = "播放";
    video.pause();
    time = setInterval(function () {
        video.currentTime += 5;
    }, 1000);
});
//快退的点击事件
btnback.addEventListener("click", function () {
    btnstart.innerHTML = "播放";
    video.pause();
    time = setInterval(function () {
        video.currentTime -= 2;
        if (video.currentTime <= 0) {
            video.play();
            clearInterval(time);
        }
    }, 1000);
});
//静音的点击事件
btnmute.addEventListener("click", function () {
    video.muted = !video.muted;
});
//音量进度条的事件
btnsound.addEventListener("mousedown", function () {
    this.onmousemove = function () {
        video.volume = this.value / 100;
    }
    this.onmouseup = function () {
        this.onmousemove = null;
        this.onmouseup = null;
    }
});
//全屏的点击事件
btnbig.addEventListener("click", function () {
    if (video.webkitRequestFullScreen) {
        video.webkitRequestFullScreen();
    }
    else if (video.mozRequestFullScreen) {
        video.mozRequestFullScreen();
    }
    else if (video.msRequestFullScreen) {
        video.msRequestFullScreen();
    }
    else if (video.RequestFullScreen) {
        video.RequestFullScreen();
    }
});
//播放的点击事件
btnstart.addEventListener("click", function () {
    if (this.innerHTML == "播放") {
        video.play();
        this.innerHTML = "暂停";
        clearInterval(time);
    }
    else {
        video.pause();
        this.innerHTML = "播放";
    }
})

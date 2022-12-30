
var flag=true;  //标记位
function FocusItem(obj) {
if($(obj).attr('name') == 'veryCode') {
$(obj).next().next().html('').removeClass('error');
}else {
$(obj).next('span').html('').removeClass('error');
}
}
function CheckItem(obj){
var msgBox = $(obj).next('span');

switch($(obj).attr('name')) {
case "username":
if(obj.value==""){
msgBox.html('用户名不能为空！');
msgBox.addClass('error');
flag=false;
}else{
flag=true;
}
break;
case "userid":
if(obj.value==""){
msgBox.html('账号不能为空！');
msgBox.addClass('error');
flag=false;
}else{
var url="useridcheck?id="+encodeURI($(obj).val())+"&"+new Date().getTime();

$.get(url,function(data){
if(data=="false"){
msgBox.html('账号已被占用！');
msgBox.addClass('error');
flag=false;
}else{
msgBox.html.removeClass('error');
flag=true;
}
});
}
break;

case"password":
if(obj.value==""){
msgBox.html('密码不能为空！');
msgBox.addClass('error');
flag=false;
}else{
flag=true;
}
break;

case"repassword":
if(obj.value==""){
msgBox.html('确认密码不能为空');
msgBox.addClass('error');
flag=false;
}else if($(obj).val() !=$('input[name="password"]').val() ){
msgBox.html('两次密码不一致!');
msgBox.addClass('error');
flag=false;
}else{
flag=true;
}
break;
case"phone":
if(obj.value==""){
msgBox.html('电话号码不能为空！');
msgBox.addClass('error');
flag=false;
}else{
flag=true;
}
break;
}
}
function checkForm(frm){
var els =frm.getElementsByTagName('input');
for(var i=0; i<els.length;i++){
if(els[i] !=null){
if(els[i].getAttribute("onblur")){
CheckItem(els[i]);
}
}
}
return flag;
}


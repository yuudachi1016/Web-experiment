function check()
{
    var password1=document.getElementById("a").value;
    var password2=document.getElementById("b").value;
    if(password1!=password2){
        alert("密码不一致请核查");
    }
}

function Name()
{
    var email=document.getElementById("c").value;
    var emreg=/^[0-9]{11}$/;
    if(emreg.test(email)==false)
        //document.getElementById("f").style.display = "block";
        //合法的
        alert("手机号码不合法");
}
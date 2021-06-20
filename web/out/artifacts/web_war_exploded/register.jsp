<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="connectsql" class="pag.conn" scope="session"></jsp:useBean>

<html lang="zh-cn">
<head>
    <title>注册新用户</title>
    <script src="/src/js/register_js.js"></script>

    <%
        if(connectsql.getrepeat())
        {
            connectsql.setrepeat("false");
    %>
    <script language="JavaScript">
        alert("手机号码已存在，请直接登录！");
    </script>
    <%
        }
    %>
</head>

<body bgcolor="	#F0F8FF">

<!--顶部-->
<div class="header">
    <nav>
        <a href="#">帮助</a> |
        <a href="#">反馈</a>
    </nav>
</div>
<br />

<!--主体-->
<h2 align="center">欢迎注册网上书店</h2><br />
<div align="center" width="100px">
    <div class="login">
        <form class="form" action="register_user.jsp" method="post">

            <div class="sblkc">
                <span style="color:red">*</span><label>昵称</label>
                <input type="text" name="name" placeholder="输入名称" required size="30">
            </div>

            <div>
                <span style="color:red">*</span><label>手机号码</label>
                <input type="text" name="nums" placeholder="手机号码" required size="30"  id="c" onBlur="Name()" maxlength="18">
            </div>

            <div>
                <span style="color:red">*</span><label>密码</label>
                <input type="password" name="password" placeholder="请输入密码" required size="30" id="a">
            </div>

            <div>
                <span style="color:red">*</span><label>确认密码</label>
                <input type="password" placeholder="请再输入一遍密码" required size="30" id="b" onBlur="check()">
            </div>
            <br>
            <div>
                <input type="checkbox" required>同意《<a href=#>服务条款</a>》和《<a href=#>隐私政策</a>》&emsp;&emsp;&emsp;
            </div>
            <input type="submit" class="but" value="立刻注册">
            <p align="center">已经注册 ? <a href="login.jsp" align="center">登录</a></p>
        </form>
    </div>

    <br>
    <div align="center">
        <a href="index.jsp">返回主页</a>
    </div>


</div>


<!--底部-->
<div class="footer">
    <table width="100%" bgcolor="#EFEEDC">
        <tr>
            <td align="center">
                CONTACT US
            </td>
        </tr>
        <tr>
            <td align="center">
                copyright 2008 &copy; BookStore All Rights RESERVED
            </td>
        </tr>
    </table>
</div>
</div>

</body>
</html>

<style>
    * {
        padding: 0;
        margin: 0;
    }

    .checkbox {
        float: left;
        margin-top: 30px;
        margin-left: 50px;
        width: 15px;
        height: 15px;
        border: 1px solid black;
        background: white;
    }

    .sblkc{
        margin-top: 30px;
    }

    .footer {
        position: fixed;
        bottom: 10px;
        left: 0;
        right: 0;
        height: 40px;
        line-height: 50px;
        border-top: 1px solid #d6dfea;
        background: #eff4fa;
        text-align: center;
        color: #b6b6b6;
        letter-spacing: 0.5px;
    }

    .login {
        float: none;
        width: 400px;
        height: 430px;
        border: 1px solid #1d5494;
        margin-left: 80px;
        margin-right: 100px;
    }

    .form {
        font-size: 13px;
        text-align: right;
        float: left;
        margin-top: 20px;
        margin-left: 40px;
        margin-right: 30px;
        line-height: 270%;
        font-family: 微软雅黑;
    }

    .footer a {
        color: #1d5494;
        text-decoration: none;
    }

    .footer a:hover {
        text-decoration: underline;
    }

    .but {
        width: 300px;
        min-height: 20px;
        display: block;
        background-color: #4a77d4;
        border: 1px solid #3762bc;
        color: #fff;
        padding: 9px 14px;
        font-size: 15px;
        line-height: normal;
        border-radius: 5px;
        margin: 0;
    }

    .header {
        height: 60px;
        width: 100%;
        line-height: 60px;
        background: #eff4ff;
        border-bottom: 1px solid #d6dfea;
    }

    .header img {
        width: 200px;
        height: 56px;
        margin-left: 20px;
    }

    .header nav {
        text-align: right;
        margin-top: -60px;
        margin-right: 40px;
        letter-spacing: 0.5px;
    }

    .header nav a {
        color: #1d5494;
        text-decoration: none;
    }

    .header nav a:hover {
        text-decoration: underline;
    }
</style>

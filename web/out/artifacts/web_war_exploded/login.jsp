<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<jsp:useBean id="connectsql" class="pag.conn" scope="session"></jsp:useBean>

<html lang="zh-cn">
<head>
  <title>登录</title>
  <script src="/src/js/register_js.js"></script>
    <%
    if(connectsql.getexistence()&&connectsql.getlogin_judge())
    {
      connectsql.setlogin_judge("false");
    %>
    <script language="JavaScript">
      alert("登录成功");
    </script>
      <meta http-equiv="refresh" content="0;url=index.jsp">
  <%
    }else if(connectsql.getlogin_judge())
    {
      connectsql.setlogin_judge("false");
  %>
  <script language="JavaScript">
    alert("手机号与密码不匹配，请重新输入！");
  </script>
  <%
    }
  %>
</head>

<body bgcolor="#FFFAF0">

<br />

<!--主体-->
<h2 align="center">登录网上书店</h2>
<div align="center" width="100px">
  <div class="login">
    <form class="form"  method="post" action="login_user.jsp">
      <div>
        <br>
        <span style="color:red">*</span><label>手机号码</label>
        <input type="text" name="nums" placeholder="手机号码" required size="30"  id="c" onBlur="Name()" maxlength="18" class="text_field">
      </div>
      <br>
      <div>
        <span style="color:red">*</span><label>密码</label>
        <input type="password" name="password" placeholder="请输入密码" required size="30" id="a" class="text_field">
      </div>
      <br>
      <div align="center">
        <input type="submit" class="but" value="登&emsp;陆">
      </div>
      <br>

      <div><a href="#">忘记密码</a> &emsp; <a href="register.jsp">免费注册</a></div>
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
  .text_field {
    width: 278px;
    height: 35px;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
    border: 0;
  }
  .label_input {
    font-size: 16px;
    font-family: 宋体;

    width: 80px;
    height: 37px;
    line-height: 35px;
    text-align: right;

    color:yellow;
    background-color: #3CD8FF;
    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px;
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
    width: 450px;
    height: 330px;
    border: 1px solid #1d5494;

    margin-top: 80px;
    margin-left: 100px;
    margin-right: 100px;

    background-color: #FFF0F5;
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
    width: 180px;
    min-height: 20px;
    display: block;
    background-color: 	#F0FFFF;
    border: 1px solid #3762bc;
    color: black;
    padding: 9px 14px;
    font-size: 15px;
    line-height: normal;
    border-radius: 8px;
    margin: 10px;

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

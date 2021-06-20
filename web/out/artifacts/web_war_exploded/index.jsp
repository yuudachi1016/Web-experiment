<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="connectsql" class="pag.conn" scope="session"></jsp:useBean>

<html>
  <head>
    <title>主页</title>
    <%
      connectsql.connect();
      String sent="SELECT *FROM book;";
      ResultSet rs=connectsql.getRs(sent);
      int i=0;
    %>
  </head>

  <body>
  <div id="page">
    <!--顶部-->
    <div id="top">
      <table width="100%" bgcolor="#FAEBD7">
        <tr>
          <td width="80%">
          </td>
          <td>
            <%
              if(connectsql.getexistence())
              {
            %>
                <a href=""><%=connectsql.getnumsname()%>的账户</a>|
                <a href="quit.jsp">退出账号</a>|
            <%
              }else {
            %>

            <a href="register.jsp">新用户注册</a>|
            <a href="login.jsp">登录</a>|
            <%
              }
            %>
            <a href="shoppingcart.jsp">购物车</a>|
            <a href="#">帮助中心</a>
          </td>
        </tr>
      </table>
    </div>

    <!--目录-->
    <div id="menu" class="box">
      <table width="100%" height="40px">
        <tr align="center">
          <td bgcolor="red" width="180px">图书分类</td>
          <td>
            <a href="#"><span style="color: #000000; ">外语</span></a>
            <a href="#"><span style="color: #000000; ">考试</span></a>
            <a href="#"><span style="color: #000000; ">中小学教辅</span></a>
            <a href="#"><span style="color: #000000; ">文学</span></a>
            <a href="#"><span style="color: #000000; ">传记</span></a>
            <a href="#"><span style="color: #000000; ">艺术</span></a>
            <a href="#"><span style="color: #000000; ">摄影</span></a>
            <a href="#"><span style="color: #000000; ">科普/百科</span></a>
            <a href="#"><span style="color: #000000; ">绘本</span></a>
            <a href="#"><span style="color: #000000; ">历史</span></a>
            <a href="#"><span style="color: #000000; ">古籍</span></a>
            <a href="#"><span style="color: #000000; ">哲学/宗教</span></a>
            <a href="#"><span style="color: #000000; ">政治/军事</span></a>
            <a href="#"><span style="color: #000000; ">法律</span></a>
            <a href="#"><span style="color: #000000; ">社会科学</span></a>
            <a href="#"><span style="color: #000000; ">心理学</span></a>
            <a href="#"><span style="color: #000000; ">投资理财</span></a>
            <a href="#"><span style="color: #000000; ">亲子/家教</span></a>
            <a href="#"><span style="color: #000000; ">运动</span></a>
            <a href="#"><span style="color: #000000; ">旅游</span></a>
            <a href="#"><span style="color: #000000; ">建筑</span></a>
            <a href="#"><span style="color: #000000; ">医学</span></a>
            <a href="#"><span style="color: #000000; ">计算机</span></a>
            <a href="#"><span style="color: #000000; ">生活百科</span></a>
            <a href="#"><span style="color: #CC66FF; ">全部商品目录</span></a>
          </td>
        </tr>
      </table>
    </div>

    <!--搜索-->
    <div id="search">
      <table width="100%" bgcolor="#FDF5E6">
        <tr align="right" height="40px">
          <td>
            搜索书籍
            <input type="text">
            <input type="button" value="搜索">
          </td>
        </tr>
      </table>
    </div>

    <!--主页/列表-->
    <div id="content">
      <div align="left" height="30px">
        <a>首页</a> > <a>图书列表</a>
      </div>
      <br>

      <h2>商品目录</h2>
      <div>
        <table width="100%"  color="#000080">
          <%
          while(rs.next())
          {
            if(i%3==0) {

          %>
       <tr>
         <td>
         <table>
           <tr>
             <td rowspan="3"><img src="<%=rs.getString("bookroute")%>" height="200px" weight="100px"> </td>
             <td>书名：<%=rs.getString("bookname")%></td>
           </tr>
           <tr>
              <td>价格：<%=rs.getInt("bookprice")%>.00&#8197;元</td>
           </tr>
           <tr>
             <td><a class="a" href="among.jsp?action=add&id=<%=rs.getInt("bookid")%>&name=<%=rs.getString("bookname")%>&price=<%=rs.getInt("bookprice")%>">加入购物车</a></td>
           </tr>
         </table>
          </td>
        <%
          i++;
          }else{%>
         <td>
           <table>
             <tr>
               <td rowspan="3"><img src="<%=rs.getString("bookroute")%>" height="200px" weight="100px"> </td>
               <td>书名：<%=rs.getString("bookname")%></td>
             </tr>
             <tr>
               <td>价格：<%=rs.getInt("bookprice")%>.00&#8197;元</td>
             </tr>
             <tr>
               <td><a class="a" href="among.jsp?action=add&id=<%=rs.getInt("bookid")%>&name=<%=rs.getString("bookname")%>&price=<%=rs.getInt("bookprice")%>">加入购物车</a></td>
             </tr>
           </table>
         </td>
          <%
            if(i%3==2){
              %>
                </tr>
          <%
              } i++; }
          %>
          <%
            }
          %>
        </table>
      </div>
    </div>

    <br />

    <!--页数-->
    <div align="center">
      <button type="button">首页</button>&nbsp;&nbsp;&nbsp;
      <button type="button">上一页</button>&nbsp;&nbsp;&nbsp;
      <button type="button">下一页</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      到第
      <input type="Text" size="1">页
      <input type="button" value="确定">
    </div>

    <!--底部-->
    <div id="bottom">
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
<script type="javascript">
  function Tips()
  {
    alert("加入购物车成功！");
  }
</script>
<style type="text/css">
  * {
    padding: 0;
    margin: 0;
  }
  .a{
    background-color: pink;
    color: black;
    border-radius: 5px;
    text-decoration: none;

    padding: 9px 14px;
    font-size: 15px;
    line-height: normal;
    border-radius: 5px;
    border: 5px;
  }
</style>
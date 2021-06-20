
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>

<jsp:useBean id="connectsql" class="pag.conn" scope="session"></jsp:useBean>

<html>
<head>
    <title>购物车</title>

    <style type="text/css">
        * {
            padding: 0;
            margin: 0;
        }
        .a{
            background-color: black;
            color: white;
            border-radius: 5px;
            text-decoration: none;

            padding: 9px 14px;
            font-size: 15px;
            line-height: normal;
            border-radius: 5px;
            border: 5px;
        }

        .footer {
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            height: 80px;
            line-height: 30px;
            border-top: 1px solid #d6dfea;
            background: #eff4fa;
            text-align: right;
            color: #b6b6b6;
            letter-spacing: 0.5px;
        }
        .footer .sub {
            text-decoration: none;

            padding: 25px 30px;
            font-size: 30px;
            line-height: 80px;

            margin-bottom: 0px;

            margin-right: 235px;
            border-radius: 5px;
            background: #d43f3a;
            color: white;
            font-family: "微软雅黑";
        }
        .footer .submit {

            margin-right: 100px;
            margin-top: 0px;
            width: 200px;
            height: 80px;
            background: #d43f3a;
            border: 1px solid cornflowerblue;
            font-size: 30px;
            color: white;
            font-family: "微软雅黑";
            cursor: pointer;
        }
        .footer .text {

            margin-right: 300px;
            margin-top: 0px;
            width: 200px;
            height: 80px;
            text-align: left;
            background: #eff4fa;
            font-size: 22px;
            color: #000000;
            font-family: "微软雅黑";
            cursor: pointer;
        }
    </style>

    <script type="text/javascript">
        /*1. 点击商品名称实现全选，全不选 		START */
        function selectCk(main) {
            var flag = main.checked;

            var delCks = document.getElementsByName("delCk");

            for ( var i = 0; i < delCks.length; i++)
            {

                delCks[i].checked = flag;
            }
        }
    </script>
</head>
<body>
<!-- top -->
<div>
    <table width="100%" bgcolor="#FAEBD7" style="padding:5px 0px 5px 30px;font-size: 18px;height:auto;">
        <td width="85%" style="text-align: left;font-size: 30px;">
            我的购物车
        </td>
        <td>
            <a href="index.jsp">主页</a>|
            <a href="#"><%=connectsql.getnumsname()%>的账户</a>|
            <a href="#">帮助中心</a>
        </td>
        </tr>
    </table>
</div>


<div align="left" height="30px" style="font-family: 黑体;font-size: 18px">
    <a href="index.jsp">首页</a> > <a>购物车</a>
</div>

<div style="margin: 30px;font-size: 20px;font-family:黑体">待结算商品</div>
<table style="margin:auto" >
    <tr>
        <td width="100px">
            <input type="checkbox" id="all-select" value="on" onclick="selectCk(this)"	/>全选
        </td>
        <td width="130px"></td>
        <td width="200px">商品信息</td>
        <td width="200px">单价</td>
        <td width="200px">数量</td>
        <td width="200px">金额</td>
        <td width="200px">操作</td>
    </tr>

    <%
        int total=0;
        try {
            connectsql.connect();
            String sql = "select * from book,cart where book.bookid=cart.Cartid;";  //查询语句
            ResultSet rs = connectsql.getRs(sql);
                while (rs.next()) {
                    //将查询结果输出
                    out.print("<tr>");
                    out.print("<td><input type=\"checkbox\" id=\""+rs.getInt("bookid")+"\" name=\"delCk\"/></td>");
                    out.print("<td><img alt=\"book\" src=\""+rs.getString("bookroute")+"\" width=\"130\" height=\"150\"></td>");
                    out.print("<td>"+rs.getString("bookname")+"</td>");
                    out.print("<td>"+rs.getInt("bookprice")+ ".00&#8197;" +"元"+"</td>");
                    out.print("<td>"+rs.getInt("Cartnums")+"&#8197;" +"本"+"</td>");
                    int temp=rs.getInt("bookprice")*rs.getInt("Cartnums");
                    total=total+temp;
                    out.print("<td>"+temp+".00&#8197;" +"元"+"</td>");
                    out.print("<td><a class=\"a\" href=\"among.jsp?action=delete&id="+rs.getString("bookid")+"\">删除商品</a></td>");
                    out.print("</tr>");
            }
        }catch (Exception e) {
            out.print("数据库连接异常！");
        }
    %>
</table>

<div style="height:80px;"></div> <!--fixed悬浮出来的footer -->
<div class="footer">
    <span class="text">合计:<%=total%>.00&#8197;元</span>
    <a href="result.jsp" class="sub">结算</a>
</div>

</body>
</html>

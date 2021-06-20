<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="connectsql" class="pag.conn" scope="page"></jsp:useBean>

<html>
<head>
    <title>已购买的商品</title>
</head>
<body>
    <h2>您的购物信息如下：</h2>
    <%
        connectsql.connect();
        String sql = "select * from book,cart where book.bookid=cart.Cartid;";
        ResultSet rs=connectsql.getRs(sql);
    %>
    <table>
        <tr>
        <th >商品名</th>
        <th >价格</th>
        <th >数量</th>
        </tr>
        <%
            while (rs.next()){
                out.print("<tr>");
                out.print("<td width=\"200px\" align=\"center\">"+rs.getString("bookname")+"</td>");
                out.print("<td width=\"100px\" align=\"center\">"+rs.getInt("bookprice")+".00&#8197;" +"元"+"</td>");
                out.print("<td width=\"100px\" align=\"center\">"+rs.getString("Cartnums")+"&#8197;" +"本"+"</td>");
                out.print("</tr>");
            }
        %>
    </table>
</body>
</html>

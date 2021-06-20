<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>

<jsp:useBean id="connectsql" class="pag.conn" scope="session"></jsp:useBean>

<html>
<head>
    <title></title>
    <%
        String action=request.getParameter("action");
        connectsql.connect();
        if(action.equals("add"))
        {
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        String price=request.getParameter("price");
        connectsql.addcart(id,name,price);
        //response.sendRedirect("index.jsp");
    %>
    <meta http-equiv="refresh" content="0;url=index.jsp">
    <%
        }else if(action.equals("delete"))
        {
            String id=request.getParameter("id");
            connectsql.deletecart(id);
    %>
    <meta http-equiv="refresh" content="0;url=shoppingcart.jsp">
    <%
        }
    %>
</head>
<body>
</body>
</html>

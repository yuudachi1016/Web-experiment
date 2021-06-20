<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>

<%
    request.setCharacterEncoding("UTF-8");    //设置编码
%>

<jsp:useBean id="connectsql" class="pag.conn" scope="session"></jsp:useBean>

<html>
<head>
    <title></title>
<%
    connectsql.connect();
    String nums=request.getParameter("nums");
    String name=request.getParameter("name");
    String password=request.getParameter("password");

    String query="select *from user where nums="+nums;
    ResultSet rs=connectsql.getRs(query);
    if(rs.next())
    {
        //已经有账号了
        connectsql.setrepeat("true");
        response.sendRedirect("register.jsp");
    }else {
        String sent = "select *from user where nums=" + nums + " and password=" + password;
        connectsql.adduser(nums, name, password);
        response.sendRedirect("login.jsp");
    }
%>
</head>
<body>

</body>
</html>

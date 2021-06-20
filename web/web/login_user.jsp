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
        String password=request.getParameter("password");
        String sent="select *from user where nums="+nums+ " and password="+password;

        ResultSet rs=connectsql.getRs(sent);

        if(rs.next()){
            connectsql.setexistence("true");   //判断是否登陆成功
            connectsql.setlogin_judge("true");

            connectsql.setnumsname(nums);

            response.sendRedirect("login.jsp");
        }else{
            connectsql.setexistence("false");
            connectsql.setlogin_judge("true");
            response.sendRedirect("login.jsp");
        }

    %>
</head>
<body>

</body>
</html>
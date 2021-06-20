<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="connectsql" class="pag.conn" scope="session"></jsp:useBean>

<html>
<head>
    <title></title>
    <%
        connectsql.setexistence("false");
        connectsql.setnumsname("");
        response.sendRedirect("index.jsp");
    %>
</head>
<body>
</body>
</html>

<%-- 
    Document   : check
    Created on : Jun 9, 2018, 11:08:11 AM
    Author     : D00admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check</title>
    </head>
    <body>
        <%! String uname, pass; %>
        <%= uname= request.getParameter("uname")%>
        <%= pass = request.getParameter("pass")%>
        <%
            if(uname.equals("admin")&&(pass.equals("123456"))){ %>
                <jsp:forward page = "admin.jsp" />
            <%}%>
        <%
            if(uname.equals("user")&&(pass.equals("123456"))){ %>
                <jsp:forward page = "user.jsp" />
            <%}%>
            <jsp:forward page="failure.jsp" />
                
    </body>
</html>

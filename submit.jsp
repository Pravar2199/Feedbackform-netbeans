<%-- 
    Document   : submit
    Created on : Jun 9, 2018, 11:39:13 AM
    Author     : D00admin
--%>

<%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submission Done!!!</title>
    </head>
    <body>
        <% int opt1 = Integer.parseInt(request.getParameter("rad1"));%>
        <% int opt2 = Integer.parseInt(request.getParameter("rad2"));%>
        <% int opt3 = Integer.parseInt(request.getParameter("rad3"));%>
        <% int opt4 = Integer.parseInt(request.getParameter("rad4"));%>
        <% int opt5 = Integer.parseInt(request.getParameter("rad5"));%>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/test"
                           user="root" password="" />
        <sql:update dataSource="${snapshot}" var="result">
            INSERT INTO fb VALUES(<%=opt1%>,<%=opt2%>,<%=opt3%>,<%=opt4%>,<%=opt5%>);
        </sql:update>
            <h1>Feed Back Submitted Successfully</h1>
            <br/><br/>
            <a href="index.html">Go to Home</a>
    </body>
</html>

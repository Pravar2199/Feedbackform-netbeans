<%-- 
    Document   : admin
    Created on : Jun 9, 2018, 11:16:44 AM
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
        <title>Admin Login</title>
    </head>
    <body>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/test"
                           user="root" password="" />
        <sql:update dataSource="${snapshot}" var="result">
            drop table if exists temp;
        </sql:update>
        <sql:update dataSource="${snapshot}" var="result">
            create table temp (avg1 float, avg2 float, avg3 float,avg4 float, avg5 float);
        </sql:update>
            <sql:update dataSource="${snapshot}" var="result">
            INSERT INTO temp select avg(opt1), avg(opt2), avg(opt3), avg(opt4), avg(opt5) from fb;
        </sql:update>
        <sql:query dataSource="${snapshot}" var="result" >
            select * from temp;
        </sql:query>
            <table border ="1" width="100%" >
                <tr>
                    <th> Question </th>
                    <th>Average out of 5</th>
                </tr>
                <tr>
                    <c:forEach var="row" items="${result.rows}" >
                    <tr>
                        <td><c:out value="Question 1. The Teacher was Well Prepared:" /></td>
                               <td><c:out value="${row.avg1}"/></td>
                    </tr>
                    <tr>
                        <td><c:out value="Question 2. he DeliverY Method was Good:" /></td>
                               <td><c:out value="${row.avg2}"/></td>
                    </tr>
                    <tr>
                        <td><c:out value="Question 3. How was Communication of Teacher:" /></td>
                               <td><c:out value="${row.avg3}"/></td>
                    </tr>
                    <tr>
                        <td><c:out value="Question 4. The Notes were Useful:" /></td>
                               <td><c:out value="${row.avg4}"/></td>
                    </tr>
                    <tr>
                        <td><c:out value="Question 5. The Overall impact of Teacher:" /></td>
                               <td><c:out value="${row.avg5}"/></td>
                    </tr>
                    </c:forEach>
                </tr>
            </table>
            <br/><br/>
            <a href="index.html">Go to Home</a>
    </body>
</html>

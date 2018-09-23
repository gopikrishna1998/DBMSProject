<%-- 
    Document   : EditPost
    Created on : 17 Sep, 2018, 5:18:09 PM
    Author     : Midhun Krishnan K S
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit</title>
    </head>
    <body>
        <h1>Edit Male Population</h1>
         <div style="width: 900px; margin-left: auto; margin-right: auto">
             <c:forEach items="${getPopByName}" var="p">
                 <form action="JSP/ManagerEditPost.jsp" method="post">
                    State or Union Territory Name:<br>
                    <input type="text" name="state_ut_name" value=${p.state_ut_name} style="width: 200px"><br>
                    Male Population in 2001:<br>
                    <input type="text"  name="y_2001" value=${p.y_2001} style="width: 200px"><br>
                    Male Population in 2011:<br>
                    <input type="text"  name="y_2011" value=${p.y_2011} style="width: 200px"><br>
                    <input type="submit" value="Submit">
                </form>
             </c:forEach>
        </div>
    </body>
</html>

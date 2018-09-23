<%-- 
    Document   : AllPost
    Created on : 15 Sep, 2018, 5:24:32 PM
    Author     : Midhun Krishnan K S
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/css/table.css" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Posts</title>
    </head>
    <body>
        <div style="width: 1200px; margin-left: auto; margin-right: auto;">
            <table class="container" cellpadding="10" >
                <thead>
                <tr>
                    <th>State or Union Territory Name</th>
                    <th>Male Population in year 2001</th>
                    <th>Male Population in year 2011</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${AllPost}" var="p">
                    <tr>
                        <td>${p.state_ut_name}</td>
                        <td>${p.y_2001}</td>
                        <td>${p.y_2011}</td>
                        <td><a href="edit?state_ut_name=${p.state_ut_name}">Edit</a></td>
                        <td><a href="delete1?state_ut_name=${p.state_ut_name}">Delete</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>

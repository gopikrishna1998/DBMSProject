<%-- 
    Document   : registration_form
    Created on : 15 Sep, 2018, 1:02:14 PM
    Author     : Midhun Krishnan K S
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <div align="center">
            <form action="Login" method="post">
                Username: <input type="text" name="username" required="required">
                Password: <input type="password" name="password" required="required">
                <input type="submit" value="LOGIN">
            </form>
        </div>
    </body>
</html>

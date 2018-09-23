<%-- 
    Document   : ManagerEditPost
    Created on : 17 Sep, 2018, 5:22:32 PM
    Author     : Midhun Krishnan K S
--%>

<%@page import="dao.DataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String state_ut_name=request.getParameter("state_ut_name");
            String y_2001=request.getParameter("y_2001");
            String y_2011=request.getParameter("y_2011");
            
            DataAccess da = new DataAccess();
            da.edit(state_ut_name, y_2001, y_2011);
            response.sendRedirect("/DBMS_project/AllPost");
            %>
    </body>
</html>

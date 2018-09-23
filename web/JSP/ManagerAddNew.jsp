<%-- 
    Document   : ManagerAddNew
    Created on : 15 Sep, 2018, 4:59:59 PM
    Author     : Midhun Krishnan K S
--%>

<%@page import="dao.DataAccess"%>
<%@page import="model.Male_Population"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String state_ut_name = request.getParameter("state_ut_name");
            String y_2001 = request.getParameter("y_2001");
            String y_2011 = request.getParameter("y_2011");
//            int y_2001=Integer.parseInt(y_2001_1);
//            int y_2011=Integer.parseInt(y_2011_1);
            Male_Population mp = new Male_Population(state_ut_name, y_2001, y_2011);
            
            DataAccess da = new DataAccess();
            da.addNew(mp);
//            out.println(mp.getState_ut_name()+mp.getY_2001()+mp.getY_2011());
        response.sendRedirect("/DBMS_project/AllPost");
        %>
    </body>
</html>

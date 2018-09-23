<!--<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Work',     11],
          ['Eat',      2],
          ['Commute',  2],
          ['Watch TV', 2],
          ['Sleep',    7]
        ]);

        var options = {
          title: 'My Daily Activities',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
  </body>
</html>-->


<%-- 
    Document   : chart
    Created on : 19 Aug, 2018, 6:40:18 PM
    Author     : Midhun Krishnan K S
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        
        <%@ page import = "java.sql.*;" %>
        <%@ page import = "javax.sql.*;" %>
        <% Class.forName("oracle.jdbc.driver.OracleDriver");%>
         
        <script type='text/javascript'>
            var i=0;
            var a = [];
                a.push(['Language Name','Speaker Percentage']);
             //   a[0].push('No_of_Districts');
              //  document.write(a);
                
            <%
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","MIDHUN1988");
        Statement stmt = con.createStatement();
        String sql = "SELECT language_name ,speaker_count FROM LANGUAGE"; 
        ResultSet rs = stmt.executeQuery(sql);
        %>
         </script>
       <%   
        if(rs!=null)
        {
            while(rs.next())
                
            {
               
        %>

        <script>
            var language  = "<%=rs.getString("LANGUAGE_NAME")%>";
            var speaker_count = <%=rs.getString("SPEAKER_count")%>;
         //  var statename=parseInt('state_name');
            console.log((language));
            console.log(speaker_count);
            //console.log(typeof(a));
           // console.log(i);
           i++;
             console.log(i);
             
         a.push([language,speaker_count]);
         
            i=i+1;
       
        </script>
         <%       
            }
        }
        %>
        <script>
            var j;
        for( j=0;j<a.length;j++)
        {
            console.log(a[j][0]);
            console.log(a[j][1]);
        }
        </script>
        <%
        stmt.close();
        rs.close();
        con.close();
        stmt=null;
        con=null;
        rs=null;
        
        %>
     <center> <div id="piechart_3d" style="width: 1300px; height: 900px;"></div></center>
    </body>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable(a);

        var options = {
          title: 'Languages Of India',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
</html>

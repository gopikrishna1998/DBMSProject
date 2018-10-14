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
                a.push(['State_UT','Districts']);
             //   a[0].push('No_of_Districts');
              //  document.write(a);
                
            <%
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","MIDHUN1988");
        Statement stmt = con.createStatement();
        String sql = "SELECT * FROM STATES_UT"; 
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
            var state_name = "<%=rs.getString("STATE_UT_NAME")%>";
            var no_of_districts = <%=rs.getString("NO_OF_DISTRICTS")%>;
         //  var statename=parseInt('state_name');
            console.log((state_name));
            console.log(no_of_districts);
            //console.log(typeof(a));
           // console.log(i);
           i++;
             console.log(i);
             
         a.push([state_name,no_of_districts]);
         
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
        <div id="geochart-colors"></div>
          <!--<div id="geochart-colors" style="width: 100%; height: 100%;"></div>--> 
    </body>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {
        'packages':['geochart'],
        // Note: you will need to get a mapsApiKey for your project.
        // See: https://developers.google.com/chart/interactive/docs/basic_load_libs#load-settings
        'mapsApiKey': 'AIzaSyD-9tSrke72PouQMnMX-a7eZSW0jkFMBWY'
      });
      google.charts.setOnLoadCallback(drawRegionsMap);

      function drawRegionsMap() {
        var data =   google.visualization.arrayToDataTable(a);

        var options = {
          region: 'IN', //india
           displayMode: 'regions',
           resolution: 'provinces',
          colorAxis: {colors: ['yellow', 'orange', 'red']},
          backgroundColor: '#81d4fa',
          datalessRegionColor: '#0E6D02',
          defaultColor: 'white',
        };

        var chart = new google.visualization.GeoChart(document.getElementById('geochart-colors'));
        chart.draw(data, options);
      };
    </script>
</html>

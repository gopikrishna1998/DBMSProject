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
            var a1 = [];
            a1.push(['State or Union Territory','2001','2011']);
             //   a[0].push('No_of_Districts');
              //  document.write(a);
                
            <%
        Connection con1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","MIDHUN1988");
        Statement stmt1 = con1.createStatement();
        String sql1 = "SELECT * FROM MALE_POPULATION"; 
        ResultSet rs1 = stmt1.executeQuery(sql1);  
        %>
         </script>
       <%   
        if(rs1!=null)
        {
            while(rs1.next())
                
            {
               
        %>

        <script>
            var state_name = "<%=rs1.getString("STATE_UT_NAME")%>";
            var y_2001 = <%=rs1.getString("Y_2001")%>;
            var y_2011 = <%=rs1.getString("Y_2011")%>;
         //  var statename=parseInt('state_name');
//            console.log((state_name));
//            console.log(y_2001);
//            console.log(y_2011);
            //console.log(typeof(a));
           // console.log(i);
           i++;
           if(state_name!=='Telangana')  
         a1.push([state_name,y_2001,y_2011]);
         
            i=i+1;
       
        </script>
         <%       
            }
        }
        %>
        <script>
            var j;
            a1.sort(compareSecondColumn);

        function compareSecondColumn(a, b) {
            if (a[1] === b[1]) {
                return 0;
            }
            else {
                return (a[1] < b[1]) ? -1 : 1;
            }
        }

        for( j=0;j<a.length;j++)
        {
            console.log(a1[j][0]);
            console.log(a1[j][1]);
             console.log(a1[j][2]);
        }
        </script>
        <%
        stmt1.close();
        rs1.close();
        con1.close();
        
        %>
        <div id="columnchart_material" overflow: auto;
    overflow-x: hidden;
    overflow-y: hidden;></div>
          <!--<div id="columnchart_material"></div>-->
    </body>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable(a1);

        var options = {
          chart: {
            title: 'Male Population (2001 & 2011)',
           legend: 'none'
           
          
            },
            hAxis: { 
                 viewWindowMode: 'explicit',
                  viewWindow: {
              max: 200000000,
              min: 0
            },
                 gridlines: {
          count: 10
        },
               
//                ticks: [25000000,50000000,75000000,100000000,125000000,150000000,175000000,200000000] 
              },
           width: 1500,
            height: 1000,
        orientation:'vertical',
//        theme: 'maximized'
//            chartArea:{left:20,top: 0,width: '100%',height: '100%'}
            
//            hAxis {
//            viewWindowMode:'explicit',
//            viewWindow: {
//              max:200000000,
//              min:1000
//            }
//                } 
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
  };
    </script>
</html>

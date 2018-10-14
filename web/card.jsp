<html> 
    
  <head> 
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    
  </head> 

  <body> 
<div class="row">
    <div class="col s12 m6">
      <div class="card">
        <div class="card-image waves-effect waves-block waves-light">
            <%@ include file = "chart.jsp" %>
            
        </div>
        <div class="card-content">
          <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
<!--          <p><a href="#">This is a link</a></p>-->
        </div>
        <div class="card-reveal">
          <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
          <p>Here is some more information about this product that is only revealed once clicked on.</p>
        </div>
      </div>
    </div>
</div>
<div class="row" >
    <div class="col s12 m6" >
      <div class="card" style="width: 1350px;"  >
        <div class="card-image waves-effect waves-block waves-light" style="width: 1300px; height: 1000px ;">
            
            <%@ include file = "chart2.jsp" %>
        </div>
        <div class="card-content" style="width: 1300px;">
            <span class="card-title activator grey-text text-darken-4" style="width: 1300px; ">Card Title<div style="display: flex; justify-content: flex-end">
                    <i class="material-icons right" float: right>
                        Show Table
                    </i>
                </div></span>
<!--          <p><a href="#">This is a link</a></p>-->
        </div>
        <div class="card-reveal" style="width: 1300px;">
          <span class="card-title grey-text text-darken-4" style="width: 1300px">Card Title<i class="material-icons right">close</i></span>
          <p>Here is some more information about this product that is only revealed once clicked on.</p>
        </div>
      </div>
    </div>
</div>
      
      <div class="row">
    <div class="col s12 m6">
      <div class="card">
        <div class="card-image waves-effect waves-block waves-light" style="width: 800px; height: 700px;">
            
            <%@ include file = "chart3.jsp" %>
        </div>
        <div class="card-content">
          <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
       
        </div>
        <div class="card-reveal">
          <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
          <p>Here is some more information about this product that is only revealed once clicked on.</p>
        </div>
      </div>
    </div>
</div>
  </body> 
</html>
<!doctype html> 
<html lang="en">
  <head>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Note Taker : Home Page</title>
    <%@include file="all_js_css.jsp" %>
    <link href="css/style.css" rel="stylesheet"/>
  </head>
  <body>
    
    <div class="container">
    <%@include file="navbar.jsp" %>
    <br>
   		
   <div class="card my-4">
   <img alt="" class="img-fluid	mx-auto" style="max-width:400px;" src="img/note.png">
   <h1 class="text-primary text-uppercase text-center mt-3">Start Taking Notes</h1>
   <div class="container text-center">
   	
  <a href="Login.jsp"> <button class="btn btn-outline-primary">Start Here</button></a>
   
   </div>
   </div>
   
   
    </div>
    
    </body>
    <hr>
    <div class="container">
    <footer>
    	<%@include file="footer.jsp" %>
    </footer>
    </div>
    
</html>
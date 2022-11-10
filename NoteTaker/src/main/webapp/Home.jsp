<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Note Taker : Home Page</title>
<%@include file="all_js_css.jsp" %>
<link href="css/style.css" rel="stylesheet"/>
</head>
<body>
<%
HttpSession session1 = request.getSession(false);
if(session1.getAttribute("username") == null)
{
	RequestDispatcher  rd = request.getRequestDispatcher("Login.jsp");
	rd.forward(request, response);
}
else{
%> 
		
			<div class="container">
    			<%@include file="UserNav.jsp" %>
    		<br>
    
   				<div class="card my-4">
   			<img alt="" class="img-fluid	mx-auto" style="max-width:400px;" src="img/note.png">
   <h1 class="text-primary text-uppercase text-center mt-3">Start Taking Notes</h1>
   <div class="container text-center">
  		
  		<a href="add_notes.jsp"> <button class="btn btn-outline-primary">Start Here</button></a>
   
   </div>
   				</div>
   
   </div>
	
</body>
<% } %>
<hr>
    <div class="container">
    <footer>
    	<%@include file="footer.jsp" %>
    </footer>
    </div>

</html>
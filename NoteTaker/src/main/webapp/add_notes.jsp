<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add notes Here</title>

<%@include file="all_js_css.jsp" %>

</head>
<body>
<% 
HttpSession session1 = request.getSession(false);
if(session1.getAttribute("username") == null)
{
	RequestDispatcher  rd = request.getRequestDispatcher("Login.jsp");
	rd.forward(request, response);
}
%>
<div class="container">
    <%@include file="UserNav.jsp" %>
    <br>
    <h1>Fill your note details</h1>
    
    	<!-- this is add form -->
    	
    	<form action="SaveNoteServlet" method="post"> 
  <div class="mb-3">
    <label for="title" class="form-label">Note Title</label>
    <input 
    		name="title"
    		required="required"
    		type="text" 
    		class="form-control" 
    		id="title" 
    		aria-describedby="emailHelp"
    		placeholder="Enter Here">
     		
    </div>
  
  <div class="mb-3">
    <label for="content" class="form-label">Note Content</label>
   <textarea 
   			name="content"
   			required="required"
   			id="content"
   			placeholder="Enter Your Content"
   			class="form-control"
   			style="height: 300px;"
   			></textarea>
  </div>
  
  
 <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add</button> 
 </div>
</form>
    	
    </div>
</body>
</html>
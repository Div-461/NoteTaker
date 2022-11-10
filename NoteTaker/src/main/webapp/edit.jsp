<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page  import="org.hibernate.Session"%>
<%@page import="com.entities.*" %>
<%@page import="com.helper.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

	<div class="container">
    <%@include file="navbar.jsp" %>
    <br>
    <h1>Edit Your Notes</h1>
    <br>
    <%
    int noteId = Integer.parseInt(request.getParameter("note_id").trim());
	Session s = FactoryProvider.getFactory().openSession();
    Note note =(Note)s.get(Note.class, noteId);
    
    %>
    
    <form action="UpdateServlet" method="post"> 
  <div class="mb-3">
    <label for="title" class="form-label">Note Title</label>
    
    	<input value="<%= note.getId()%>" name="noteId" type="hidden"/>
    <input 
    		name="title"
    		required="required"
    		type="text" 
    		class="form-control" 
    		id="title" 
    		aria-describedby="emailHelp"
    		placeholder="Enter Here"
    		value="<%= note.getTitle() %>"
    		>
     		
    </div>
  
  <div class="mb-3">
    <label for="content" class="form-label">Note Content</label>
   <textarea 
   			name="content"
   			required="required"
   			id="content"
   			placeholder="Enter Your Content"
   			class="form-control"
   			style="height: 300px;"><%= note.getContent() %>
   			</textarea>
  </div>
  
  
 <div class="container text-center">
  <button type="submit" class="btn btn-success">Save Your Note</button> 
 </div>
</form>
    
    </div>

</body>
</html>
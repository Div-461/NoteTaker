<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes : Note Taker</title>

<%@include file="all_js_css.jsp" %>

</head>
<%
HttpSession session1 = request.getSession(false);
if(session1.getAttribute("username") == null)
{
	RequestDispatcher  rd = request.getRequestDispatcher("Login.jsp");
	rd.forward(request, response);
}
else{
%>
<body>
<div class="container">
<%@include file="UserNav.jsp" %>
<br>
<h1 class="text-uppercase">All Notes</h1>

		<%
			
			Session s = FactoryProvider.getFactory().openSession();
			Query<Note> q = s.createQuery("from Note",Note.class);
			List<Note> list = q.list();
			for(Note note:list)
			{
				%>
				
			<div class="card">
 				 
  					<div class="card-body">
    				<h5 class="card-title"><%= note.getTitle() %></h5>
    				<p class="card-text"><%= note.getContent() %></p>
    				<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
    				<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">update</a>
  				</div>
			</div>
				<% 
			}
		
			s.close();
}%>

</div>
</body>
</html>
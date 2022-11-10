<%@page import="java.text.Normalizer.Form"%>
<%@page import="com.mysql.cj.callback.UsernameCallback"%>
<nav class="navbar navbar-expand-lg navbar-dark purple">
  <div class="container-fluid">
    <a class="navbar-brand" href="Home.jsp">Note Taker</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="Home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="add_notes.jsp">Add Note</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="all_notes.jsp">Show Notes</a>
        </li>
      	  
      </ul>
      <ul class="navbar-nav">
      	<li class="nav-item">
          <a class="nav-link" href="Logout.jsp">LogOut</a>
        </li>
        <li class="nav-item">
        <a class="nav-link"> 
      	<%
      		String name =(String)session.getAttribute("username");
      		out.println(name);
      	%>
      	</a>
      	</li>
      </ul>
      
    </div>
  </div>
</nav>


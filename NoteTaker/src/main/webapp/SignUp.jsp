<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up : Page</title>
<%@include file="all_js_css.jsp" %>
 <link href="css/SignUp.css" rel="stylesheet"/>
 <script src="script/SignUpValidation.js"></script>
</head>
<body>
	
	<div class="container">
		<%@include file="navbar.jsp" %>
		
		<div class="signup-form">
    <form action="RegisterServlet" method="post" class="form-horizontal" name="MyForm" onsubmit="return ValidateForm()">
      	<div class="row">
        	<div class="col-8 offset-4">
				<h2>Sign Up</h2>
			</div>	
      	</div>			
        <div class="form-group row">
			<label class="col-form-label col-4">UserName</label>
			<div class="col-8">
                <input type="text" class="form-control" name="username">
            </div>        	
        </div>
		<div class="form-group row">
			<label class="col-form-label col-4">Email Address</label>
			<div class="col-8">
                <input type="email" class="form-control" name="useremail" required="required">
            </div>        	
        </div>
		<div class="form-group row">
			<label class="col-form-label col-4">Password</label>
			<div class="col-8">
                <input type="password" class="form-control" name="userpassword">
            </div>        	
        </div>
		<div class="form-group row">
			<div class="col-8 offset-4">
				<button type="submit" class="btn btn-primary btn-lg">Sign Up</button>
			</div>  
		</div>		      
    </form>
	<div class="text-center">Already have an account? <a href="Login.jsp">Login here</a></div>
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
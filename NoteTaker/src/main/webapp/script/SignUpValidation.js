function ValidateForm()
{
	var x = document.forms["MyForm"]["username"].value;
	var y = document.forms["MyForm"]["userpassword"].value;
	
	if(x == "" || y == null)
	{
		alert("Username must be filled out");
		return false;
	}
	else if(y == "")
	{
		alert("Password must be filled out")
		return false;
	}
	else if(y.length < 8)
	{
		alert("Password must be at least 8 characters long")
		return false;
	}
}

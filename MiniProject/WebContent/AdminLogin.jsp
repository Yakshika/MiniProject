<!DOCTYPE html>
<html>
<head>

<title>LOGIN PAGE FOR ADMIN</title>

</head>
<body>
	<font color="black"><center><h1>Admin Login</h1></center></font>
	<font color="red" >
		<%
			if(request.getParameter("msg2") != null)
				out.print(request.getParameter("msg2"));
		%>
		</font>
			<font color="green" >
		<%
			if(request.getParameter("msg1") != null)
				out.print(request.getParameter("msg1"));
		%>
		</font>
	<form action="oes.controller.ValidateAdmin" method="post">
		<pre>
			Username 		:	<input type="text" name="uname">	 
			Password 	    :   <input type="password" name="pass">	 
						 	<input  onclick="location.href='index.html'" type="button" value="Exit" >          <input type="submit" value="Login" >
							
		</pre>
	</form>

</body>
</html>

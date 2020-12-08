<!DOCTYPE html>
<html>
<head>

<!--  
<style type="text/css">
	li
	{
		float: left;
	}
	ul
	{
	
		list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;
		background-color:#333; 
	}
	li a
	{
		display: inline-block;
		color: white;
		text-align: center;
		padding: 14px 16px;
		text-decoration: none; 
	}
	li a:HOVER {
	background-color: aqua;
}
</style>
-->
<title>Student Login</title>

</head>
<body>
	<font color="blue"><center><h1>Student Login</h1></center></font>
	<font color="red" >
		<%
			if(request.getParameter("msg") != null)
				out.print(request.getParameter("msg"));
		%>
		</font>
		<font color="green" >
		<%
			if(request.getParameter("msg1") != null)
				out.print(request.getParameter("msg1"));
		%>
		</font>
	<form action="oes.controller.ValidateStudent" method="post">
		<pre>
			UserId 		:	<input type="text" name="uname">	 <br>
			Password 	:	<input type="password" name="pass">	 <br>
			                <input  onclick="location.href='index.html'" type="button" value="Exit" >        <input type="submit" value="Login">
				
		</pre>
	</form>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<font color="blue"><center><h1>REGISTRATION FORM</h1></center></font>
<pre>
	    <form action="student" method="post">
USERID::    <input type="text" name="userid" ><br>
PASSWORD::  <input type="password " name ="password" ><br>
FULLNAME::  <input type="text" name="username" ><br>
		    <input type="radio" name="opr" value="studentnew"  >Student<br>
		    <input type="radio" name="opr" value="adminnew">Admin<br>
		    <input type="submit"  VALUE="REGISTER">
		    <a  href="index.html" class="button a">Login</a>
</pre>
</form>


</body>
</html>
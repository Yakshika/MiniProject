<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<h2><font  face = "WildWest" color="blue">Enter Student Details</font></h2>
<form action="oes.controller.StudentInsert">
<pre>
Name:         <input type="text" name="name">

User id:      <input type="text" name="uname">

Password:     <input type="text" name="pass">

             
             <input type="submit" value="Register" >   <input type="button" onclick="location.href='AdminPanel.jsp'" value="Home" >    <input type="button" onclick="location.href='StudentList.jsp'" value="Back" >
</pre>
</form>
<div>
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
		</div>

</body>
</html>
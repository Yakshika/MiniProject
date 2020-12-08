<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<h2><font  face = "WildWest" color="blue">Enter Instruction Here</font></h2>
<form action="oes.controller.InstructionInsert">
<pre>

Instruction    <input type="text" name="inst">

             
             <input type="submit" value="Add" >   <input type="button" onclick="location.href='AdminPanel.jsp'" value="Home" >    <input type="button" onclick="location.href='InstructionList.jsp'" >
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
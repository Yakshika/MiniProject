<%@page import="model.StudentsDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@page import="model.InstructionsDao"%>
<%@page import="db.Instructions"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>

 <%
   String name = StudentsDao.getStudentName(session.getAttribute("username").toString());
%> 
<div height="200" width=100% style="background-color: yellow">

</div>
<center>
<pre>
<table class="table">
<tr>
 
 <th colspan="2"><center><h4><font color="red">TAKE TEST</font></h4></center></th>
</tr>
<tr>
<tr>
<%
   int i = 1;
   ArrayList<Instructions> allinsts = InstructionsDao.getAllRecords();
  for(Instructions e : allinsts)
  {   
  %>
   <tr>
  <td><%=i++%></td>
  <td><%=e.getInstruction()%></td>
  </tr>
  <%
  }
  %>
<tr>
</table>
<pre>
<button type="button" onclick="location.href='oes.controller.LogoutStudent'">Logout</button>   <button type="button" onclick="location.href='Exam.jsp'">Start Test</button>
</pre>
</center>
	
</body>
</html>
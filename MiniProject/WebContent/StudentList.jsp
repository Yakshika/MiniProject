<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="model.*"%>
<%@page import="db.Students"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>

<center><h3><pre><font color="blue">List of all Students</font></h3></pre></center>
<table class="table">
<tr tr class="container">
 <th>sl no.</th>
 <th>Userid</th>
 <th>name</th>
 <th>password</th>
 <th>Update</th>
 <th>Delete</th>
</tr>
<tr>
<%
   int i = 0;
   ArrayList<Students> allstudents = StudentsDao.getAllRecords();
  for(Students e : allstudents)
  {   
	  
  
  %>
   <tr class="container ">
  <td><%=i++%></td>
  <td><%=e.getUsername() %></td>
  <td><%=e.getName()%></td>
  <td><%=e.getPassword() %></td>
  <td><a href="updatestudent.jsp?username=<%=e.getUsername()%>">Update </a></td>
  <td><a href="deletestudent.jsp?username=<%=e.getUsername()%>">Delete</a></td>
  </tr>
  <%
  }
  %>
<tr class="container p-3 my-3 bg-dark text-white">
<th colspan="2"><center><input type="button" value="Add Student" onclick="location.href='AddStudent.jsp'"></center></th>
<th colspan="2"><input type="hidden"></th>
<th colspan="2"><center><input type="button" value="Back to Panel" onclick="location.href='AdminPanel.jsp'"></center></th>
</tr>
</table>

</body>
</html>
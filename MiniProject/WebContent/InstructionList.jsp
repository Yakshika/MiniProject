<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="model.InstructionsDao"%>
<%@page import="db.Instructions"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<!--  
<title>Insert title here</title>
</head>
<body>
<center><h3><pre><font color="blue">List of all instructions</font></pre></h3></center>
<table class="table table-bordered table-hover">
<tr tr class="table-dark">
 <th>sl no.</th>
 <th>Instruction</th>
 <th>Operation</th>
 <th>delete</th>
</tr>
<tr>
<tr>
<%
   int i = 0;
   ArrayList<Instructions> allinsts = InstructionsDao.getAllRecords();
  for(Instructions e : allinsts)
  {   
	  
  
  %>
   <tr>
  <td><%=i++%></td>
  <td><%=e.getInstruction()%></td>

  <td><a href="updateinstruction.jsp?inst=<%=e.getInstruction()%>">Update</a></td>
  <td><a href="deleteinstruction.jsp?inst=<%=e.getInstruction()%>">Delete</a></td>

  </tr>
  <%
  }
  %>
<tr>
<th colspan="1"  rowspan="2"><center><input type="button" class="btn btn-outline-success"value="Add Instruction" onclick="location.href='AddInstruction.jsp'"></center></th>
<th colspan="2"><input type="hidden"></th>
<th colspan="1"  ><center><input type="button"  class="btn btn-outline-danger" value="Back to Panel" onclick="location.href='AdminPanel.jsp'"></center></th>
</tr>
</table>

-->
</body>
</html>
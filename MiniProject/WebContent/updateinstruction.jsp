<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@page import="model.InstructionsDao"%>
<%@page import="db.Instructions"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<center><h3><pre><font color="blue">List of all instructions</font></pre></h3></center>
<table class="table ">
<tr tr class="table">
 <th>sl no.</th>
 <th>Instruction</th>
 <th>Operation</th>
 <th>delete>
</tr>
<tr>
<tr>
<%
   int i = 0;
   ArrayList<Instructions> allinsts = InstructionsDao.getAllRecords();
  for(Instructions e : allinsts)
  {   
	  if(request.getParameter("inst").equals(e.getInstruction())) 
		{
	      %>
			<tr  class="table-primary">
				<form action="updateinstructionnow.jsp">
				<input type="hidden" value="<%=e.getInstruction()%>" type="text" name="instoriginal">
				<td><%=i++%></td>
				<td> <input type="text" value="<%=e.getInstruction()%>" name="instmodified"></input> </td>
				<td> <input type="submit" value="update"> </td>
				<td><a href="deleteinstruction.jsp?inst=<%=e.getInstruction()%>">Delete</a></td>
				</form>
			</tr>
	    <%	
		}
		else
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
  }
  %>
<tr>
<th colspan="1"  rowspan="2"><center><input type="button"  value="Add Instruction" onclick="location.href='AddInstruction.jsp'"></center></th>
<th colspan="2"><input type="hidden"></th>
<th colspan="1"  ><center><input type="button" value="Back to Panel" onclick="location.href='AdminPanel.jsp'"></center></th>
</tr>
</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="db.*" %>
    <%@page import="model.*" %>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<%
		Instructions i = new Instructions();
		i.setInstruction(request.getParameter("inst"));
		int status = InstructionsDao.deleteRecord(i);
		if(status > 0)
			response.sendRedirect("InstructionList.jsp");
		else
			out.print("Error");
		
	%>
</body>
</html>
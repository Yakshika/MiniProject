<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>

</head>
<body>
<% if(session.getAttribute("username") !=null)
	{
	
	}
else
{
	String msg2 = "Please Login as Admin to Continue";
	response.sendRedirect("AdminLogin.jsp?msg2="+msg2);
}
	%>
<div height="250" width=100% style="background-color: yellow">
  <!--  <marquee behavior="alternate">
     <h1> <font  color ="green">Welcome   <%out.println(session.getAttribute("username")); %></font></h1>
  </marquee> -->

   <div class="container">
    <div class="row">
       <div class="col-md-4"><center><input onclick="location.href='StudentList.jsp';" type="button" value="Add/Update Student" ></center> </div>
      <div class="col-md-4"><center><input onclick="location.href='QuestionList.jsp'"type="button" value="Add/Update Question" ></center></div>
      <div class="col-md-4"><center><input onclick="location.href='oes.controller.LogoutAdmin'"type="button" value="Logout" ></center></div>
    </div>  
  </div>
 
</body>
</html>
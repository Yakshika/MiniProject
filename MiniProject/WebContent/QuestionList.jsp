<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="model.QuestionsDao"%>
<%@page import="db.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>

<center><h3><pre><font color="blue">List of all questions</font></pre></h3></center>
<table class="container ">
<tr tr class="table-dark">
 <th>sl no.</th>
 <th>Question</th>
 <th>Option A </th>
 <th>Option B </th>
 <th>Option C </th>
 <th>Option D </th>
 <th>Correct Answer</th>
 <th>Update</th>
 <th>Delete</th>
</tr>
<tr>
<%
   int i = 0;
   ArrayList<Questions> allQuestions = QuestionsDao.getAllRecords();
  for(Questions e : allQuestions)
  {   
	  
  
  %>
  <tr>
  <td><%=i++%></td>
  <td><%=e.getQuestion() %></td>
  <td><%=e.getA()%></td>
  <td><%=e.getB()%></td>
  <td><%=e.getC()%></td>
  <td><%=e.getD()%></td>
  <td><%=e.getAnswer()%></td>
  <td><a href="updatequestion.jsp?ques=<%=e.getQuestion()%>">Update</a></td>
  <td><a href="deletequetion.jsp?ques=<%=e.getQuestion()%>">Delete</a></td>
  </tr>
  <%
  }
  %>
<th colspan="4"  ><center><input type="button" value="Add Question" onclick="location.href='AddQuestions.jsp'"></center></th>
<th><input type="hidden"></th>
<th colspan="4"  ><center><input type="button"  value="Back to Panel" onclick="location.href='AdminPanel.jsp'"></center></th>

</table>
</body>
</html>
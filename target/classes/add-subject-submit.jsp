<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.Subjects" %>
<%@ page import="dao.SubjectsDAO" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="links.jsp"></jsp:include>
<title>Learner's Academy</title>
</head>
<body>
<%
String name = request.getParameter("name");
Subjects sub = new Subjects(name);
try{
	SubjectsDAO.addSubjects(sub);
	out.println("<h3 style='color:green;'>Subject is added successfully</h3>");
	response.setHeader("Refresh","1;url=manage-subjects.jsp");
}
catch(Exception e){
	out.println("<h3 style='color:red;'>Subject is not added</h3>");
}
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.Teachers" %>
<%@ page import="dao.TeachersDAO" %>
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
Teachers tea = new Teachers(name);
try{
	TeachersDAO.addTeachers(tea);
	out.println("<h3 style='color:green;'>Teacher is added successfully</h3>");
	response.setHeader("Refresh","1;url=manage-teachers.jsp");
}
catch(Exception e){
	out.println("<h3 style='color:red;'>Teacher is not added</h3>");
}
%>
</body>
</html>
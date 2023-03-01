<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.Classes" %>
<%@ page import="bean.Subjects" %>
<%@ page import="bean.Teachers" %>
<%@ page import="bean.Students" %>
<%@ page import="dao.ClassesDAO" %>
<%@ page import="dao.SubjectsDAO" %>
<%@ page import="dao.TeachersDAO" %>
<%@ page import="dao.StudentsDAO" %>
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
String className = request.getParameter("name");
if(className != null || !(className.equals(""))){
	Classes cl1 = new Classes(className);
	try{
		ClassesDAO.addClasses(cl1);
		out.println("<h3 style='color:green;'>Class is added successfully</h3>");
		response.setHeader("Refresh","1;url=manage-classes.jsp");
	}
	catch(Exception e){
		out.println("<h3 style='color:red;'>Class is not added</h3>");
	}
}
%>

</body>
</html>
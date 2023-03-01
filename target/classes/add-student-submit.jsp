<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.Students" %>
<%@ page import="bean.Teachers" %>
<%@ page import="bean.Subjects" %>
<%@ page import="dao.StudentsDAO" %>
<%@ page import="bean.Classes" %>
<%@ page import="dao.ClassesDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.HashSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="links.jsp"></jsp:include>
<title>Learner's Academy</title>
</head>
<body>
<%
String studentName = request.getParameter("name");
int classId = Integer.parseInt(request.getParameter("class-id"));
		
try{
	Classes tempClass=ClassesDAO.searchClassesById(classId);
	Students stud=new Students(studentName);
	tempClass.add(stud);
	StudentsDAO.addStudents(stud);
	out.println("<h3 style='color:green;'>Student is added successfully</h3>");
	response.setHeader("Refresh","1;url=manage-students.jsp");
}
catch(Exception e){
	System.out.println(e.getMessage().toString());
	System.out.println(e.getClass().toString());
	out.println("<h3 style='color:red;'>Student is not added</h3>");
}
%>
</body>
</html>
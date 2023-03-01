<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="util.HibernateSessionUtil"%>
<%@page import="org.hibernate.SessionFactory"%>
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
int classId= Integer.parseInt(request.getParameter("class-id"));
int subjectId =  Integer.parseInt(request.getParameter("subject-id"));
int teacherId = Integer.parseInt(request.getParameter("teacher-id"));
Subjects sub=SubjectsDAO.searchSubjectById(subjectId);
	//cl1.setTeacher(new Teachers(teacherId,teacherName));
	try{
		SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
		Session session1 = factory.openSession();
		Transaction tx = session1.beginTransaction();
		Classes cl=session1.get(Classes.class, classId);
		cl.addSubject(sub);
		session1.save(cl);
		tx.commit();
		session1.close();
		out.println("<h3 style='color:green;'>Class is added successfully</h3>");
		response.setHeader("Refresh","1;url=manage-classes.jsp");
	}
	catch(Exception e){
		out.println("<h3 style='color:red;'>Class is not added</h3>");
	}
%>
</body>
</html>
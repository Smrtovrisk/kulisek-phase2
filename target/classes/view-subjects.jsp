

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
<div class="container-fluid div-bg pt-5" >
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
		<table class='table table-bordered'>  
				<thead class='table-primary'>
					<th>ID</th>	<th>Name</th>
				</thead>
				<tbody>
					<%
						List<Subjects> listOfSubjects = SubjectsDAO.listSubjects();
						for(Subjects sub: listOfSubjects){
							if(!(sub.getName().equals(""))){
								out.print("<tr>");
								out.print("<td>"+sub.getId()+"</td>");
								out.print("<td>"+sub.getName()+"</td>");
								out.print("</tr>");
							}
							
						}
					%>
				</tbody>
			</table>
		</div>
		<div class="col-md-3"></div>
	</div>
</div>
</body>
</html>


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
<div class="container-fluid div-bg pt-5" >
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<table class="table table-striped">
				<thead>
					<th>ID</th>
					<th>Name</th>
				</thead>
				<tbody>
					<%
						List<Teachers> listOfTeachers = TeachersDAO.listTeachers();
						for(Teachers tea: listOfTeachers){
							if(!(tea.getName().equals(""))){
								out.print("<tr>");
								out.print("<td>"+tea.getId()+"</td>");
								out.print("<td>"+tea.getName()+"</td>");
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="links.jsp"></jsp:include>

<title>Learner's Academy</title>
</head>
<body>
	<div class="container-fluid" id="about">
	<h1>Welcome to Learner's Academy Portal</h1>
	</div>
	<div class="container-fluid pt-4">
		<div class="row">
			<div class="col-md-2">
				<div class="card">
					  <div class="card-header bg-primary text-white">
					    Subjects
					  </div>
					  <div class="card-body">
					    <h5 class="card-title">Manage Subjects</h5>
					    <p class="card-text">Create and Read Subjects from the master list</p>
					    <a href="manage-subjects.jsp" class="btn btn-primary">Manage</a>
					  </div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="card">
					  <div class="card-header bg-primary text-white">
					    Teachers
					  </div>
					  <div class="card-body">
					    <h5 class="card-title">Manage Teachers</h5>
					    <p class="card-text">Create and Read Teachers from the master list</p>
					    <a href="manage-teachers.jsp" class="btn btn-primary">Manage</a>
					  </div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="card">
					  <div class="card-header bg-primary text-white">
					    Students
					  </div>
					  <div class="card-body">
					    <h5 class="card-title">Manage Students</h5>
					    <p class="card-text">Create and Read Students from the master list</p>
					    <a href="manage-students.jsp" class="btn btn-primary">Manage</a>
					  </div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="card">
					  <div class="card-header bg-primary text-white">
					    Classes
					  </div>
					  <div class="card-body">
					    <h5 class="card-title">Manage Classes</h5>
					    <p class="card-text">Create and Read Classes from the master list</p>
					    <a href="manage-classes.jsp" class="btn btn-primary">Manage</a>
					  </div>
				</div>
			</div>
			<div class="col-md-2">
				<div class="card">
					  <div class="card-header bg-primary text-white">
					    Report
					  </div>
					  <div class="card-body">
					    <h5 class="card-title">Assign Relation</h5>
					    <p class="card-text">Connect Classes Subjects,Students and Teachers </p>
					    <a href="add-classes.jsp" class="btn btn-primary">Manage</a>
					  </div>
				</div>
			</div>
		</div>	
	</div>
</body>
</html>
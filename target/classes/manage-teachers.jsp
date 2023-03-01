<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="links.jsp"></jsp:include>
<title>Learner's Academy</title>
</head>
<body>
	<div class="container-fluid pt-4">
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					  <div class="card-body">
					    <h5 class="card-title">View Teachers</h5>
					    <p class="card-text">Read teachers from the master list</p>
					    <a href="view-teachers.jsp" class="btn btn-primary">View</a>
					  </div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					  <div class="card-body">
					    <h5 class="card-title">Add Teachers</h5>
					    <p class="card-text">Create teachers in the master list</p>
					    <a href="add-teacher.jsp" class="btn btn-primary">Add</a>
					  </div>
				</div>
			</div>
		</div>	
	</div>
</body>
</html>
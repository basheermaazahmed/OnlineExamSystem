<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>

<link rel="stylesheet" href="css/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">

</head>

<body class="add-student-page">

<div class="page-container">

<div class="form-card" style="max-width:700px;margin:auto;">

<h2 class="page-title">
<i class="fas fa-user-plus"></i>
Add Student
</h2>

<p class="text-center text-white mb-4">
Register new students into the Online Examination System
</p>
<%
if(request.getParameter("success") != null){
%>

<div class="alert alert-success text-center">
    Student Added Successfully!
</div>

<%
}
%>
<form action="AddStudentServlet" method="post">

<div class="mb-3">
<label class="form-label">
<i class="fas fa-user"></i>
 Student Name
</label>

<input type="text"
class="form-control"
name="name"
placeholder="Enter Student Name"
required>
</div>

<div class="mb-3">
<label class="form-label">
<i class="fas fa-envelope"></i>
 Email Address
</label>

<input type="email"
class="form-control"
name="email"
placeholder="Enter Email Address"
required>
</div>

<div class="mb-3">
<label class="form-label">
<i class="fas fa-id-card"></i>
 Username
</label>

<input type="text"
class="form-control"
name="username"
placeholder="Enter Username"
required>
</div>

<div class="mb-4">
<label class="form-label">
<i class="fas fa-lock"></i>
 Password
</label>

<input type="password"
class="form-control"
name="password"
placeholder="Enter Password"
required>
</div>

<div class="text-center">

<button type="submit" class="btn btn-primary btn-lg">
<i class="fas fa-save"></i>
 Add Student
</button>

<a href="dashboard.jsp" class="btn btn-secondary btn-lg ms-2">
<i class="fas fa-arrow-left"></i>
 Dashboard
</a>

</div>

</form>

</div>

</div>

</body>
</html>
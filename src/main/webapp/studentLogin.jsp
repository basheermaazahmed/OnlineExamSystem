<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Student Login</title>

<link rel="stylesheet" href="css/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">

</head>

<body class="login-page">

<div class="login-box">

<h2>
<i class="fas fa-user-graduate"></i>
Student Portal
</h2>

<p class="text-muted">
Access your examinations and results
</p>
<%
String errorMessage =
(String) request.getAttribute("errorMessage");

if(errorMessage != null){
%>

<div class="alert alert-danger text-center mb-3">
    <%= errorMessage %>
</div>

<%
}
%>
<form action="StudentLoginServlet" method="post">

<input
type="text"
name="username"
placeholder="Enter Username"
required>

<input
type="password"
name="password"
placeholder="Enter Password"
required>

<button type="submit" class="btn btn-primary">
Login
</button>

</form>

<br><br>

<a href="index.jsp">
Back To Home
</a>

</div>

</body>
</html>
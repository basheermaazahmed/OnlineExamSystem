<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Login</title>

<link rel="stylesheet" href="css/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">

</head>

<body class="admin-login-page">

<div class="admin-login-box">

<h2>
<i class="fas fa-user-shield"></i>
Admin Portal
</h2>

<p class="text-muted">
Manage examinations, students and results
</p>

<form action="AdminLoginServlet" method="post">

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

<button type="submit" class="btn">
Login
</button>

</form>

<br>

<a href="index.jsp">
Back to Home
</a>

</div>

</body>

</html>
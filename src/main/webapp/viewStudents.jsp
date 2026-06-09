<%@ page import="java.sql.*" %>
<%@ page import="com.exam.db.DBConnection" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>View Students</title>

<link rel="stylesheet" href="css/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">

</head>

<body class="view-students-page">

<div class="table-container">

<h2>
<i class="fas fa-users"></i>
 Student Records
</h2>

<table class="table table-bordered table-hover">

<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Username</th>
</tr>

<%
try{

Connection con = DBConnection.getConnection();

Statement st = con.createStatement();

ResultSet rs = st.executeQuery("SELECT * FROM students");

while(rs.next()){
%>

<tr>

<td><%= rs.getInt("id") %></td>

<td><%= rs.getString("name") %></td>

<td><%= rs.getString("email") %></td>

<td><%= rs.getString("username") %></td>

</tr>

<%
}

}catch(Exception e){

e.printStackTrace();

}
%>

</table>

<div class="text-center mt-4">

<a href="dashboard.jsp"
class="btn btn-secondary btn-lg">

<i class="fas fa-arrow-left"></i>
Dashboard

</a>

</div>

</div>

</body>
</html>

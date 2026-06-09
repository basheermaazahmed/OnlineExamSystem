<%@ page import="java.sql.*" %>
<%@ page import="com.exam.db.DBConnection" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>View Exams</title>

<link rel="stylesheet" href="css/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">

</head>

<body class="view-exams-page">

<div class="table-container">

<h2>
<i class="fas fa-file-alt"></i>
 Available Exams
</h2>

<table class="table table-bordered table-hover">

<tr>
<th>Exam ID</th>
<th>Exam Name</th>
<th>Total Marks</th>
<th>Action</th>
</tr>

<%
try{

Connection con = DBConnection.getConnection();

Statement st = con.createStatement();

ResultSet rs = st.executeQuery("SELECT * FROM exams");

while(rs.next()){
%>

<tr>

<td><%= rs.getInt("exam_id") %></td>

<td><%= rs.getString("exam_name") %></td>

<td><%= rs.getInt("total_marks") %></td>

<td>

<a href="takeExam.jsp?examId=<%= rs.getInt("exam_id") %>"
class="btn btn-success">

<i class="fas fa-play"></i>
Start Exam

</a>

</td>

</tr>

<%
}

}catch(Exception e){

e.printStackTrace();

}
%>

</table>

<div class="text-center mt-4">

<div class="text-center mt-4">

    <a href="index.jsp" class="logout-btn">
        <i class="fas fa-sign-out-alt"></i>
        Logout
    </a>

</div>
</div>

</div>

</body>
</html>

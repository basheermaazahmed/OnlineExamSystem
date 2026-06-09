<%@ page import="java.sql.*" %>
<%@ page import="com.exam.db.DBConnection" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>View Questions</title>

<link rel="stylesheet" href="css/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">

</head>

<body class="view-questions-page">

<div class="table-container">

<h2>
<i class="fas fa-question-circle"></i>
Question Bank
</h2>

<table class="table table-bordered table-hover">

<tr>
<th>Question ID</th>
<th>Exam ID</th>
<th>Question</th>
<th>Option 1</th>
<th>Option 2</th>
<th>Option 3</th>
<th>Option 4</th>
<th>Correct Answer</th>
</tr>

<%
try{

Connection con = DBConnection.getConnection();

PreparedStatement ps =
con.prepareStatement("SELECT * FROM questions");

ResultSet rs = ps.executeQuery();

while(rs.next()){
%>

<tr>

<td><%= rs.getInt("question_id") %></td>

<td><%= rs.getInt("exam_id") %></td>

<td><%= rs.getString("question_text") %></td>

<td><%= rs.getString("option1") %></td>

<td><%= rs.getString("option2") %></td>

<td><%= rs.getString("option3") %></td>

<td><%= rs.getString("option4") %></td>

<td><%= rs.getString("correct_answer") %></td>

</tr>

<%
}

}catch(Exception e){
%>

<tr>
<td colspan="8">
Error: <%= e.getMessage() %>
</td>
</tr>

<%
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

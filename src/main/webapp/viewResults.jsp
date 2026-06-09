<%@ page import="java.sql.*" %>
<%@ page import="com.exam.db.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Results</title>

<link rel="stylesheet" href="css/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">

<style>

body{
    background:url("images/result-bg.jpg");
    background-size:cover;
    background-position:center;
    background-attachment:fixed;
}

.result-container{
    width:95%;
    max-width:1200px;
    margin:40px auto;
    background:rgba(255,255,255,0.15);
    backdrop-filter:blur(10px);
    padding:30px;
    border-radius:20px;
}

h2{
    text-align:center;
    color:white;
    margin-bottom:25px;
}

table{
    background: rgba(255,255,255,0.10) !important;
    backdrop-filter: blur(12px);
}

.table th{
    background: rgba(13,110,253,0.6) !important;
    color: white !important;
    text-align: center;
}

.table td{
    background: rgba(255,255,255,0.05) !important;
    color: white !important;
    text-align: center;
}

.table-bordered th,
.table-bordered td{
    border: 1px solid rgba(255,255,255,0.2) !important;
}
.pass{
    color:green;
    font-weight:bold;
}

.fail{
    color:red;
    font-weight:bold;
}

</style>

</head>

<body>

<div class="result-container">

<h2>
<i class="fas fa-chart-line"></i>
 Student Exam Results
</h2>

<table class="table table-bordered table-hover">

<tr>
    <th>ID</th>
    <th>Student Name</th>
    <th>Score</th>
    <th>Total Questions</th>
    <th>Percentage</th>
    <th>Exam Date</th>
    <th>Status</th>
</tr>

<%

try{

    Connection con = DBConnection.getConnection();

    Statement st = con.createStatement();

    ResultSet rs = st.executeQuery("SELECT * FROM results");

    while(rs.next()){

        int score = rs.getInt("score");
        int total = rs.getInt("total_questions");

        double percentage = ((double)score / total) * 100;

%>

<tr>

<td><%= rs.getInt("id") %></td>

<td><%= rs.getString("student_name") %></td>

<td><%= score %></td>

<td><%= total %></td>

<td><%= String.format("%.2f", percentage) %>%</td>

<td><%= rs.getTimestamp("exam_date") %></td>

<td>
<%
if(percentage >= 50){
%>
<span class="pass">PASS</span>
<%
}else{
%>
<span class="fail">FAIL</span>
<%
}
%>
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

<a href="dashboard.jsp" class="btn btn-primary btn-lg">
<i class="fas fa-arrow-left"></i>
 Back to Dashboard
</a>

</div>

</div>

</body>
</html>
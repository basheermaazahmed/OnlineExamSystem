<%@ page import="java.sql.*" %>
<%@ page import="com.exam.db.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
<title>Start Exam</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<h2>Exam Questions</h2>

<form action="SubmitExamServlet" method="post">

<%
try {

    int examId = Integer.parseInt(request.getParameter("examId"));

    Connection con = DBConnection.getConnection();

    PreparedStatement ps =
        con.prepareStatement(
        "SELECT * FROM questions WHERE exam_id=?");

    ps.setInt(1, examId);

    ResultSet rs = ps.executeQuery();

    while(rs.next()) {
%>

<p>
<b><%= rs.getString("question_text") %></b>
</p>

<input type="radio"
       name="q<%= rs.getInt("question_id") %>"
       value="<%= rs.getString("option1") %>">
<%= rs.getString("option1") %><br>

<input type="radio"
       name="q<%= rs.getInt("question_id") %>"
       value="<%= rs.getString("option2") %>">
<%= rs.getString("option2") %><br>

<input type="radio"
       name="q<%= rs.getInt("question_id") %>"
       value="<%= rs.getString("option3") %>">
<%= rs.getString("option3") %><br>

<input type="radio"
       name="q<%= rs.getInt("question_id") %>"
       value="<%= rs.getString("option4") %>">
<%= rs.getString("option4") %><br><br>

<%
    }
} catch(Exception e) {
    out.println(e);
}
%>

<input type="submit" value="Submit Exam">

</form>

</body>
</html>
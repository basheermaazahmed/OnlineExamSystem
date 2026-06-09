<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Dashboard</title>

<link rel="stylesheet" href="css/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">

</head>

<body class="admin-dashboard-page">

<div class="dashboard-header">

<div class="container">

<h2>
<i class="fas fa-user-shield"></i>
Admin Dashboard
</h2>

<p>Manage Examination System</p>

</div>

</div>

<div class="container py-5">

<div class="row g-4">

<div class="col-md-3">
<div class="dashboard-card">
<i class="fas fa-users fa-3x text-primary mb-3"></i>
<h3>Students</h3>
<p>Manage Students</p>
<a href="addStudent.jsp" class="btn btn-primary">Add Student</a>
</div>
</div>

<div class="col-md-3">
<div class="dashboard-card">
<i class="fas fa-file-alt fa-3x text-success mb-3"></i>
<h3>Exams</h3>
<p>Manage Exams</p>
<a href="addExam.jsp" class="btn btn-success">Add Exam</a>
</div>
</div>

<div class="col-md-3">
<div class="dashboard-card">
<i class="fas fa-question-circle fa-3x text-warning mb-3"></i>
<h3>Questions</h3>
<p>Manage Questions</p>
<a href="addQuestion.jsp" class="btn btn-warning">Add Question</a>
</div>
</div>

<div class="col-md-3">
<div class="dashboard-card">
<i class="fas fa-chart-bar fa-3x text-danger mb-3"></i>
<h3>Results</h3>
<p>View Results</p>
<a href="viewResults.jsp" class="btn btn-danger">View Results</a>
</div>
</div>

</div>

<div class="text-center mt-5">

<a href="viewStudents.jsp" class="btn btn-primary btn-lg me-3">
<i class="fas fa-users"></i>
View Students
</a>

<a href="viewExams.jsp" class="btn btn-success btn-lg me-3">
<i class="fas fa-file-alt"></i>
View Exams
</a>

<a href="viewQuestions.jsp" class="btn btn-warning btn-lg me-3">
<i class="fas fa-question-circle"></i>
View Questions
</a>

<a href="login.jsp" class="btn btn-danger btn-lg">
<i class="fas fa-sign-out-alt"></i>
Logout
</a>

</div>

</div>

</body>
</html>
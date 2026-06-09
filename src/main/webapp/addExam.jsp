<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Add Exam</title>

<link rel="stylesheet" href="css/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">

</head>

<body class="add-exam-page">

<div class="page-container">

<div class="form-card" style="max-width:700px;margin:auto;">

<h2 class="page-title">
<i class="fas fa-file-alt"></i>
Add Exam
</h2>

<p class="text-center text-white mb-4">
Create and manage examinations for students
</p>

<form action="AddExamServlet" method="post">

<div class="mb-3">

<label class="form-label">
<i class="fas fa-book"></i>
 Exam Name
</label>

<input type="text"
class="form-control"
name="examName"
placeholder="Enter Exam Name"
required>

</div>

<div class="mb-4">

<label class="form-label">
<i class="fas fa-chart-bar"></i>
 Total Marks
</label>

<input type="number"
class="form-control"
name="totalMarks"
placeholder="Enter Total Marks"
required>

</div>

<div class="text-center">

<button type="submit"
class="btn btn-success btn-lg">

<i class="fas fa-save"></i>
Add Exam

</button>

<a href="dashboard.jsp"
class="btn btn-secondary btn-lg ms-2">

<i class="fas fa-arrow-left"></i>
Dashboard

</a>

</div>

</form>

</div>

</div>

</body>
</html>

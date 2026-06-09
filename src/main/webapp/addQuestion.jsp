<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Add Question</title>

<link rel="stylesheet" href="css/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">

</head>

<body class="add-question-page">

<div class="page-container">

<div class="form-card" style="max-width:800px;margin:auto;">

<h2 class="page-title">
<i class="fas fa-question-circle"></i>
Add Question
</h2>

<p class="text-center text-white mb-4">
Create and manage questions for examinations
</p>

<form action="AddQuestionServlet" method="post">

<div class="mb-3">
<label class="form-label">
<i class="fas fa-hashtag"></i>
 Exam ID
</label>

<input type="number"
class="form-control"
name="examId"
placeholder="Enter Exam ID"
required>

</div>

<div class="mb-3">
<label class="form-label">
<i class="fas fa-question"></i>
 Question
</label>

<input type="text"
class="form-control"
name="questionText"
placeholder="Enter Question"
required>

</div>

<div class="mb-3">
<label class="form-label">Option 1</label>

<input type="text"
class="form-control"
name="option1"
placeholder="Enter Option 1"
required>

</div>

<div class="mb-3">
<label class="form-label">Option 2</label>

<input type="text"
class="form-control"
name="option2"
placeholder="Enter Option 2"
required>

</div>

<div class="mb-3">
<label class="form-label">Option 3</label>

<input type="text"
class="form-control"
name="option3"
placeholder="Enter Option 3"
required>

</div>

<div class="mb-3">
<label class="form-label">Option 4</label>

<input type="text"
class="form-control"
name="option4"
placeholder="Enter Option 4"
required>

</div>

<div class="mb-4">
<label class="form-label">
<i class="fas fa-check-circle"></i>
 Correct Answer
</label>

<input type="text"
class="form-control"
name="correctAnswer"
placeholder="Enter Correct Answer"
required>

</div>

<div class="text-center">

<button type="submit"
class="btn btn-success btn-lg">

<i class="fas fa-save"></i>
Add Question

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

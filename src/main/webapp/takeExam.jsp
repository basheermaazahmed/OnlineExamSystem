<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Online Examination</title>

<link rel="stylesheet" href="css/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">

<style>

.question-card{
    background:white;
    padding:25px;
    border-radius:15px;
    box-shadow:0 10px 20px rgba(0,0,0,0.08);
    margin-bottom:25px;
}

.question-card h5{
    color:#0d6efd;
    margin-bottom:15px;
}

.question-card:hover{
    transform:translateY(-5px);
    transition:0.3s;
}

.exam-title{
    text-align:center;
    margin-bottom:30px;
}

.timer{
    font-size:20px;
    background:#dc3545;
    color:white;
    padding:10px 20px;
    border-radius:30px;
    font-weight:bold;
}

</style>

</head>

<body class="exam-page">

<div class="dashboard-header">

<div class="container d-flex justify-content-between align-items-center">

<h2>
<i class="fas fa-file-alt"></i>
Online Examination
</h2>

<div class="timer" id="timer">
30:00
</div>

</div>

</div>

<div class="container py-5">

<div class="exam-title">

<h2>Java Fundamentals Assessment</h2>

<p class="text-muted">
Answer all questions carefully before submitting.
</p>

</div>

<form id="examForm">

<div class="question-card">

<h5>Question 1</h5>

<p>Java is a ______ ?</p>

<input type="radio" name="q1" value="1"> Programming Language<br>
<input type="radio" name="q1" value="0"> Database<br>
<input type="radio" name="q1" value="0"> Browser

</div>

<div class="question-card">

<h5>Question 2</h5>

<p>HTML stands for?</p>

<input type="radio" name="q2" value="1"> Hyper Text Markup Language<br>
<input type="radio" name="q2" value="0"> Home Tool Markup Language<br>
<input type="radio" name="q2" value="0"> High Transfer Machine Language

</div>

<div class="question-card">

<h5>Question 3</h5>

<p>CSS is used for?</p>

<input type="radio" name="q3" value="1"> Styling Web Pages<br>
<input type="radio" name="q3" value="0"> Database Storage<br>
<input type="radio" name="q3" value="0"> Server Hosting

</div>

<div class="question-card">

<h5>Question 4</h5>

<p>JavaScript is mainly used for?</p>

<input type="radio" name="q4" value="1"> Web Interactivity<br>
<input type="radio" name="q4" value="0"> Database Creation<br>
<input type="radio" name="q4" value="0"> Operating System

</div>

<div class="question-card">

<h5>Question 5</h5>

<p>Which symbol is used for comments in Java?</p>

<input type="radio" name="q5" value="1"> //<br>
<input type="radio" name="q5" value="0"> ##<br>
<input type="radio" name="q5" value="0"> **

</div>

<div class="text-center mt-4">

<button type="button" onclick="submitExam()" class="submit-btn">
    Submit Exam
</button>

</div>

</form>

</div>

<script src="js/script.js"></script>

</body>

</html>
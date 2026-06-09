<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam Result</title>

<link rel="stylesheet" href="css/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">

</head>

<body class="result-page" onload="showResult()">

<div class="page-container">

    <div class="form-card text-center" style="max-width:700px;margin:auto;">

        <h2 class="page-title">
            <i class="fas fa-trophy"></i>
            Exam Result
        </h2>

        <h3 id="status"></h3>

        <div class="mt-4">

            <h4>
                Score:
                <span id="score">0</span>
            </h4>

            <h4>
                Correct Answers:
                <span id="correctAnswers">0</span>
            </h4>

            <h4>
                Wrong Answers:
                <span id="wrongAnswers">0</span>
            </h4>

            <h4>
                Percentage:
                <span id="percentage">0%</span>
            </h4>

        </div>

        <div class="mt-4">
            <p id="motivation"></p>
        </div>

        <div class="mt-4">

            <a href="studentLogin.jsp" class="btn btn-primary btn-lg">
                <i class="fas fa-sign-in-alt"></i>
                Back to Login
            </a>

        </div>

    </div>

</div>
<script src="js/script.js"></script>

</body>
</html>
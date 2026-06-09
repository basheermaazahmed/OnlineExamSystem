// EXAM TIMER

if(document.getElementById("timer")){

    let timeLeft = 1800; // 30 Minutes

    const timer = setInterval(function(){

        let minutes = Math.floor(timeLeft / 60);
        let seconds = timeLeft % 60;

        document.getElementById("timer").innerHTML =
        String(minutes).padStart(2,"0") + ":" +
        String(seconds).padStart(2,"0");

        timeLeft--;

        if(timeLeft < 0){

            clearInterval(timer);

            alert("Time Up! Exam Submitted Automatically");

            submitExam();

        }

    },1000);

}


// SUBMIT EXAM

function submitExam(){

    let score = 0;

    for(let i=1;i<=5;i++){

        let answer =
        document.querySelector('input[name="q'+i+'"]:checked');

        if(answer){

            score += parseInt(answer.value);

        }

    }

    localStorage.setItem("score", score);

    window.location.href = "result.jsp";

}


// RESULT PAGE

function showResult(){

    let score =
    parseInt(localStorage.getItem("score")) || 0;

    let totalQuestions = 5;

    let percentage =
    Math.round((score / totalQuestions) * 100);

    document.getElementById("score").innerHTML =
    score + " / " + totalQuestions;

    document.getElementById("correctAnswers").innerHTML =
    score;

    document.getElementById("wrongAnswers").innerHTML =
    totalQuestions - score;

    document.getElementById("percentage").innerHTML =
    percentage + "%";

    let message = "";

    if(score === 5){

        document.getElementById("status").innerHTML =
        '<span class="badge-pass">🏆 PERFECT SCORE</span>';

        message =
        "🎉 Congratulations! You achieved a perfect score.";

    }
    else if(percentage >= 80){

        document.getElementById("status").innerHTML =
        '<span class="badge-pass">🌟 EXCELLENT</span>';

        message =
        "Excellent performance! Keep up the great work.";

    }
    else if(percentage >= 50){

        document.getElementById("status").innerHTML =
        '<span class="badge-pass">✅ PASS</span>';

        message =
        "Good job! Continue learning and improving.";

    }
    else{

        document.getElementById("status").innerHTML =
        '<span class="badge-fail">💪 NEEDS IMPROVEMENT</span>';

        message =
        "Practice more and come back stronger.";

    }

    document.getElementById("motivation").innerHTML =
    message;

}
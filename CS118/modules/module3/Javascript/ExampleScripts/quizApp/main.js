const questions = [
    { question: "What is 2+2?", answers: [1, 2, 3, 4], correctIndex: 3 },
    { question: "What is the capital of France?", answers: ["London", "Berlin", "Paris", "Madrid"], correctIndex: 2 },
    // Add more questions as needed
];
 
 
let currentQuestionIndex = 0;
let score = 0;
 
 
document.getElementById('next-button').addEventListener('click', function() {
    if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
    } else {
        showResults();
    }
    displayQuestion();
});
 
 
function displayQuestion() {
    const question = questions[currentQuestionIndex];
    document.getElementById('question').textContent = question.question;
    const answers = document.querySelectorAll('.answer');
    answers.forEach((element, idx) => {
        element.textContent = question.answers[idx];
        element.onclick = function() { selectAnswer(idx); };
    });
}
 
 
function selectAnswer(idx) {
    if (idx === questions[currentQuestionIndex].correctIndex) {
        score++;
    }
    if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
        displayQuestion();
    } else {
        showResults();
    }
}
 
 
function showResults() {
    document.getElementById('quiz-container').style.display = 'none';
    document.getElementById('result-container').style.display = 'block';
    document.getElementById('result').textContent = `Your score is ${score} out of ${questions.length}`;
}
 
 
displayQuestion(); // Initialize the first question
 


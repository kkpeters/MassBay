const questions = [
    { question: "What is my favorite TV Show", answers: ["Criminal Minds", "American Horror Story", "X-Men Evolution", "Band of Brothers"], correctIndex: 2 },

    { question: "What is my dog's name?", answers: ["Yuki", "Pearl", "Kona", "Margot"], correctIndex: 0 },
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
 



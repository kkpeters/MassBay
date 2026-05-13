function play(userChoice) {
    const computerChoice = getComputerChoice();
    const winner = determineWinner(userChoice, computerChoice);
    displayResults(userChoice, computerChoice, winner);
}
 
 
function getComputerChoice() {
    const choices = ['rock', 'paper', 'scissors'];
    const index = Math.floor(Math.random() * 3);
    return choices[index];
}
 
 
function determineWinner(userChoice, computerChoice) {
    if (userChoice === computerChoice) {
        return 'It\'s a draw!';
    }
 
 
    if ((userChoice === 'rock' && computerChoice === 'scissors') ||
        (userChoice === 'paper' && computerChoice === 'rock') ||
        (userChoice === 'scissors' && computerChoice === 'paper')) {
        return 'You win!';
    }
 
 
    return 'Computer wins!';
}
 
 
function displayResults(userChoice, computerChoice, winner) {
    const resultsDiv = document.getElementById('results');
    resultsDiv.innerHTML = `
        Your choice: ${userChoice}<br>
        Computer's choice: ${computerChoice}<br>
        Result: ${winner}
    `;
}
 
 


function computeWin(userInput) {
    moves = ['r', 'p', 's'];
    computerWins = 0;
    userWins = 0;
    computerMove = moves[Math.floor(Math.random(1, 3))];

    // base case
    if (computerMove == userInput) {
        alert("draw!")
    }

    // other cases
    
    if (computerMove == 's' && userInput == 'r') {
        userWins++;
        alert("User wins! Allocating Points...");
    }
    else if (computerMove == 'r' && userInput == 's') {
        computerWins++;
        alert("Computer wins! Allocating Points...");
    }

    else if (computerMove == 'p' && userInput == 'r') {
        computerWins++;
        alert("Computer wins! Allocating Points...");
    }
    else if (computerMove == 'r' && userInput == 'p') {
        userWins++;
        alert("User wins! Allocating Points...");
    }


    else if (computerMove == 's' && userInput == 'p') {
        computerWins++;
        alert("Computer wins! Allocating Points...");
    }
    else if (computerMove == 'p' && userInput == 's') {
        userWins++;
        alert("User wins! Allocating Points...");
    }

    // in case of a win

    if (computerWins == 3) {
        alert("Computer wins! Sorry!");
    }
    if (userWins == 3) {
        alert("You won! Congrats!");
    }

}

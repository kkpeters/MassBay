function computeWinner(userChoice) {
    let moves = ['r', 'p', 's'];
    let computerMove = moves[Math.floor(Math.random() * 3)];

    // base case
    
    if (computerMove == userChoice) {
        document.getElementById("outcome").innerHTML = "You both chose the same move! Draw!";
    }


    // p beats r 
    if (computerMove == 'r' && userChoice == 'p') {
        document.getElementById("outcome").innerHTML = "The computer's move was rock! User wins!";
    }
    else if (computerMove == 'p' && userChoice == 'r') {
        document.getElementById("outcome").innerHTML = "The computer's move was paper! Computer wins!";
    }

    // r beats s
    else if (computerMove == 's' && userChoice == 'r') {
        document.getElementById("outcome").innerHTML = "The computer's move was scissors! User wins!";
    }
    else if (computerMove == 'r' && userChoice == 's') {
        document.getElementById("outcome").innerHTML = "The computer's move was rock! Computer wins!";
    }

    // s beats p
    else if (computerMove == 'p' && userChoice == 's') {
        //alert("The computer's move was paper! User wins!");
        document.getElementById("outcome").innerHTML = "The computer's move was paper! User wins!";
    }
    else if (computerMove == 's' && userChoice == 'p') {
        document.getElementById("outcome").innerHTML = "The computer's move was scissors! Computer wins!";
    }
}

function reset() {
    document.getElementById("outcome").innerHTML = "";
}

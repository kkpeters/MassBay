// making a random number each time
let answer = Math.floor(Math.random() * 100) + 1;
console.log(answer);
const guesses = [];

function guess() {
    let userGuess = document.getElementById("guess").value;
    guesses.push(userGuess);
    //console.log(guesses);
    
    if (answer > userGuess) {
        feedback.innerHTML = "Too low!";
        document.getElementById("guesses").innerHTML = "Guesses: " + guesses.join(", ");
    }
    else if (answer < userGuess) {
        feedback.innerHTML = "Too high!";
        document.getElementById("guesses").innerHTML = "Guesses: " + guesses.join(", ");
    }
    else {
        feedback.innerHTML = "You got it! The number was " + answer + "!";
        document.getElementById("guesses").innerHTML = "Guesses: " + guesses.join(", ") + ". You got it in " + guesses.length + " tries!";
    }

}


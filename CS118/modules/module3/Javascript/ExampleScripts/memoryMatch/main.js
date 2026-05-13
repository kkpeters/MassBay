let cards = [];
let attempts = 0;
let hasFlippedCard = false;
let lockBoard = false;
let firstCard, secondCard;
 
 
function startGame() {
    const images = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H']; // Use these as placeholders for images or colors
    cards = [...images, ...images]; // Duplicate array for pairs
    shuffle(cards);
    const gameBoard = document.getElementById('gameBoard');
    gameBoard.innerHTML = ''; // Clear the board
    cards.forEach(card => {
        const cardElement = document.createElement('div');
        cardElement.classList.add('card');
        cardElement.dataset.character = card;
        cardElement.addEventListener('click', flipCard);
        gameBoard.appendChild(cardElement);
    });
    document.getElementById('attempts').textContent = 0;
}
 
 
function shuffle(array) {
    for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]]; // ES6 destructuring swap
    }
}
 
 
function flipCard() {
    if (lockBoard) return;
    if (this === firstCard) return;
 
 
    this.classList.add('flipped');
    if (!hasFlippedCard) {
        hasFlippedCard = true;
        firstCard = this;
        return;
    }
 
 
    secondCard = this;
    checkForMatch();
}
 
 
function checkForMatch() {
    let isMatch = firstCard.dataset.character === secondCard.dataset.character;
    isMatch ? disableCards() : unflipCards();
    updateAttempts();
}
 
 
function disableCards() {
    firstCard.removeEventListener('click', flipCard);
    secondCard.removeEventListener('click', flipCard);
    resetBoard();
}
 
 
function unflipCards() {
    lockBoard = true;
    setTimeout
 
}

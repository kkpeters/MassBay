let snake = [{x: 200, y: 200}];
let food = {x: 0, y: 0};
let direction = 'right';
let gameInterval;
let score = 0;
 
 
function startGame() {
    document.getElementById('gameArea').innerHTML = '';
    snake = [{x: 200, y: 200}];
    food = getRandomPosition();
    direction = 'right';
    score = 0;
    clearInterval(gameInterval);
    gameInterval = setInterval(moveSnake, 100);
}
 
 
function getRandomPosition() {
    return {
        x: Math.floor(Math.random() * 20) * 20,
        y: Math.floor(Math.random() * 20) * 20
    };
}
 
 
function moveSnake() {
    let head = {x: snake[0].x, y: snake[0].y};
 
 
    // Update direction
    switch (direction) {
        case 'up':
            head.y -= 20;
            break;
        case 'down':
            head.y += 20;
            break;
        case 'left':
            head.x -= 20;
            break;
        case 'right':
            head.x += 20;
            break;
    }
 
 
    // Check for collisions
    if (head.x < 0 || head.x >= 400 || head.y < 0 || head.y >= 400) {
        clearInterval(gameInterval);
        alert('Game Over! Your score: ' + score);
        return;
    }
 
 
    if (head.x === food.x && head.y === food.y) {
        score++;
        food = getRandomPosition();
    } else {
        snake.pop();
    }
 
 
    // Check for self-collision
    for (let i = 0; i < snake.length; i++) {
        if (head.x === snake[i].x && head.y === snake[i].y) {
            clearInterval(gameInterval);
            alert('Game Over! Your score: ' + score);
            return;
        }
    }
 
 
    snake.unshift(head);
    draw();
}
 
 
function draw() {
    let gameArea = document.getElementById('gameArea');
    gameArea.innerHTML = '';
 
 
    // Draw snake
    snake.forEach(segment => {
        let snakeSegment = document.createElement('div');
        snakeSegment.className = 'snake';
        snakeSegment.style.left = segment.x + 'px';
        snakeSegment.style.top = segment.y + 'px';
        gameArea.appendChild(snakeSegment);
    });
 
 
    // Draw food
    let foodElement = document.createElement('div');
    foodElement.className = 'food';
    foodElement.style.left = food.x + 'px';
    foodElement.style.top = food.y + 'px';
    gameArea.appendChild(foodElement);
}
 
 
document.addEventListener('keydown', (e) => {
    switch (e.key) {
        case 'ArrowUp':
            if (direction !== 'down')
                direction = 'up';
            break;
        case 'ArrowDown':
            if (direction !== 'up')
                direction = 'down';
            break;
        case 'ArrowLeft':
            if (direction !== 'right')
                direction = 'left';
            break;
        case 'ArrowRight':
            if (direction !== 'left')
                direction = 'right';
            break;
    }
});


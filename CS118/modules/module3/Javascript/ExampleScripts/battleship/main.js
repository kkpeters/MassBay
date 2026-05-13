function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}
 
 
function placeShips() {
    let ships = [];
    for (let i = 0; i < 5; i++) {
        let ship = { x: getRandomInt(0, 9), y: getRandomInt(0, 9) };
        while (ships.some(s => s.x === ship.x && s.y === ship.y)) {
            ship = { x: getRandomInt(0, 9), y: getRandomInt(0, 9) };
        }
        ships.push(ship);
    }
    return ships;
}
 
 
let ships;
 
 
function startGame() {
    ships = placeShips();
    let gridContainer = document.getElementById("grid-container");
    gridContainer.innerHTML = "";
    for (let i = 0; i < 100; i++) {
        let gridItem = document.createElement("div");
        gridItem.classList.add("grid-item");
        gridItem.dataset.index = i;
        gridItem.addEventListener("click", handleGridClick);
        gridContainer.appendChild(gridItem);
    }
}
 
 
function handleGridClick(event) {
    let clickedIndex = event.target.dataset.index;
    let clickedX = clickedIndex % 10;
    let clickedY = Math.floor(clickedIndex / 10);
    let hit = ships.some(ship => ship.x === clickedX && ship.y === clickedY);
    if (hit) {
        event.target.style.backgroundColor = "red";
    } else {
        event.target.style.backgroundColor = "gray";
    }
}


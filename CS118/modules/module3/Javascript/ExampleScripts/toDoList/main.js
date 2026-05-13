document.getElementById('taskInput').addEventListener('keypress', function(event) {
    if (event.key === 'Enter') {
        addTask();
    }
});
 
 
function addTask() {
    const taskInput = document.getElementById('taskInput');
    const tasksList = document.getElementById('tasksList');
    if (taskInput.value.trim() !== '') {
        const li = document.createElement('li');
        li.textContent = taskInput.value;
        li.onclick = function() {
            this.classList.toggle('completed');
        };
        tasksList.appendChild(li);
        taskInput.value = '';
        saveTasks();
    }
}
 
 
function saveTasks() {
    const tasks = [];
    document.querySelectorAll('#tasksList li').forEach(task => {
        tasks.push({ text: task.textContent, completed: task.classList.contains('completed') });
    });
    localStorage.setItem('tasks', JSON.stringify(tasks));
}
 
 
function loadTasks() {
    const tasks = JSON.parse(localStorage.getItem('tasks'));
    if (tasks) {
        tasks.forEach(task => {
            const li = document.createElement('li');
            li.textContent = task.text;
            if (task.completed) {
                li.classList.add('completed');
            }
            li.onclick = function() {
                this.classList.toggle('completed');
                saveTasks();
            };
            document.getElementById('tasksList').appendChild(li);
        });
    }
}
 
 
window.onload = loadTasks;
 


function showTime() {
    const date = new Date();
    let hours = date.getHours();
    let minutes = date.getMinutes();
    let seconds = date.getSeconds();
    const amPm = hours >= 12 ? 'PM' : 'AM';
 
 
    hours = hours % 12;
    hours = hours ? hours : 12; // the hour '0' should be '12'
    minutes = minutes < 10 ? '0' + minutes : minutes;
    seconds = seconds < 10 ? '0' + seconds : seconds;
 
 
    const time = `${hours}:${minutes}:${seconds} ${amPm}`;
    document.getElementById('clock').innerText = time;
 
 
    setTimeout(showTime, 1000); // Update time every second
}
 
 
document.addEventListener('DOMContentLoaded', showTime);
 


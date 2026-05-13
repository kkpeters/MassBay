function fetchWeather() {
    const city = document.getElementById('cityInput').value;
    const apiKey = 'YOUR_API_KEY_HERE';  // Remember to replace this with your actual OpenWeatherMap API key
    const url = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${apiKey}&units=metric`;
 
 
    fetch(url)
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response was not ok');
        }
        return response.json();
    })
    .then(data => updateWeatherDisplay(data))
    .catch(error => {
        console.error('Failed to fetch data:', error);
        document.getElementById('weatherDisplay').textContent = 'Failed to fetch data';
    });
}
 
 
function updateWeatherDisplay(data) {
    const weather = data.weather[0].description;
    const temp = data.main.temp;
    const humidity = data.main.humidity;
    const displayDiv = document.getElementById('weatherDisplay');
    displayDiv.innerHTML = `Weather: ${weather}<br>Temperature: ${temp}°C<br>Humidity: ${humidity}%`;
}
 


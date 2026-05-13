let rates = {};
 
 
document.addEventListener('DOMContentLoaded', function() {
    fetchRates();
});
 
 
function fetchRates() {
    fetch('https://api.exchangerate-api.com/v4/latest/USD')
        .then(response => response.json())
        .then(data => {
            rates = data.rates;
            const currencySelects = document.querySelectorAll('select');
            for (let key in rates) {
                const option = document.createElement('option');
                option.value = key;
                option.textContent = key;
                currencySelects[0].appendChild(option.cloneNode(true));
                currencySelects[1].appendChild(option.cloneNode(true));
            }
        });
}
 
 
function convertCurrency() {
    const amount = document.getElementById('amount').value;
    const fromCurrency = document.getElementById('fromCurrency').value;
    const toCurrency = document.getElementById('toCurrency').value;
    const result = (amount * (rates[toCurrency] / rates[fromCurrency])).toFixed(2);
    document.getElementById('result').textContent = `${amount} ${fromCurrency} is approximately ${result} ${toCurrency}`;
}


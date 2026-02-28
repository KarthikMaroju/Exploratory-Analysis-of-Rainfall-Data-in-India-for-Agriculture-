// Dark Mode Toggle
const toggleBtn = document.getElementById("themeToggle");

toggleBtn.addEventListener("click", () => {
    document.body.classList.toggle("dark");
});

// Rainfall Chart
const ctx = document.getElementById('rainfallChart').getContext('2d');

const rainfallChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", 
                 "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        datasets: [{
            label: 'Rainfall (mm)',
            data: [20, 25, 30, 45, 80, 200, 300, 280, 220, 100, 40, 25],
            borderColor: '#2e7d32',
            backgroundColor: 'rgba(46,125,50,0.2)',
            fill: true,
            tension: 0.4
        }]
    },
    options: {
        responsive: true,
        plugins: {
            legend: {
                display: true
            }
        }
    }
});

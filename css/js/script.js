const toggleBtn = document.getElementById("themeToggle");
toggleBtn.addEventListener("click", () => {
    document.body.classList.toggle("dark");
});

let rainfallData = JSON.parse(localStorage.getItem("rainfallData")) || {};

const ctx = document.getElementById('rainfallChart').getContext('2d');

let chart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: [],
        datasets: [{
            label: 'Rainfall (mm)',
            data: [],
            backgroundColor: '#2e7d32'
        }]
    }
});

function updateChart() {
    chart.data.labels = Object.keys(rainfallData);
    chart.data.datasets[0].data = Object.values(rainfallData);
    chart.update();
}

function addRainfall() {
    const month = document.getElementById("month").value;
    const value = document.getElementById("rainfallValue").value;

    if (month === "" || value === "") {
        alert("Please enter all fields");
        return;
    }

    rainfallData[month] = Number(value);
    localStorage.setItem("rainfallData", JSON.stringify(rainfallData));

    updateChart();

    document.getElementById("rainfallValue").value = "";
}

updateChart();

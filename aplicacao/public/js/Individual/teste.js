// Dias da semana individual

function fundo(dia) {
    const blur = document.getElementById('blur');
    const titulo = document.getElementById('titulo');
    titulo.textContent = `Uso Minímo - Máximo de ${dia}`;
    const data = document.getElementById('data');
    data.textContent = `00/00/0000 - ${dia}`;
    blur.style.display = 'flex';
}

function fechar() {
    const blur = document.getElementById('blur');
    blur.style.display = 'none';
}
   
document.querySelectorAll('#diasSemana button').forEach(button => {
    button.addEventListener('click', () => fundo(button.textContent));
});

var options = {
  series: [
    {
      name: 'Máximo',
      data: [
        { x: '07:00', y: 33 },
        { x: '08:00', y: 38 },
        { x: '09:00', y: 40 },
        { x: '10:00', y: 45 },
        { x: '11:00', y: 50 },
        { x: '12:00', y: 55 },
        { x: '13:00', y: 60 },
        { x: '14:00', y: 58 },
        { x: '15:00', y: 54 },
        { x: '16:00', y: 48 },
        { x: '17:00', y: 45 },
        { x: '18:00', y: 40 },
        { x: '19:00', y: 35 },
        { x: '20:00', y: 30 },
        { x: '21:00', y: 25 },
      ],
    },
     {
      name: 'Minímo',
      data: [
        { x: '07:00', y: 13 },
        { x: '08:00', y: 18 },
        { x: '09:00', y: 10 },
        { x: '10:00', y: 25 },
        { x: '11:00', y: 30 },
        { x: '12:00', y: 35 },
        { x: '13:00', y: 20 },
        { x: '14:00', y: 18 },
        { x: '15:00', y: 14 },
        { x: '16:00', y: 38 },
        { x: '17:00', y: 35 },
        { x: '18:00', y: 20 },
        { x: '19:00', y: 25 },
        { x: '20:00', y: 10 },
        { x: '21:00', y: 15 },
      ],
    }
  ],
  chart: {
    height: '70%',
    width: 845,
    type: 'line',
  },
  colors: ['#4d0000','#992626'],
  plotOptions: {
    line: {
      isSlopeChart: true,
    },
  },
};

var chart = new ApexCharts(document.querySelector("#slope"), options);
chart.render();

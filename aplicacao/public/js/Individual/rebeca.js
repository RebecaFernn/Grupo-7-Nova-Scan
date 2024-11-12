function gerarValorAleatorio(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
    }

    var options = {
        chart: {
            type: 'heatmap',
            height: 380,
            width: 1200
        },
        plotOptions: {
            heatmap: {
                shadeIntensity: 0.5,
                colorScale: {
                    ranges: [
                        { from: 0, to: 20, color: '#f9d9d9', name: 'Uso abaixo de (20%)' },
                        { from: 21, to: 40, color: '#f89c9c', name: 'Uso entre (21-40%)' },
                        { from: 41, to: 60, color: '#f35b5b', name: 'Uso entre (41-60%)' },
                        { from: 61, to: 80, color: '#c71e1e', name: 'Uso entre (61-80%)' },
                        { from: 81, to: 100, color: '#7a0000', name: 'Uso acima (81%)' }
                    ]
                }
            }
        },
        dataLabels: {
            enabled: false
        },
        series: [
        {
        name: 'SAB',
        data: [
            {x: '07:00', y: gerarValorAleatorio(10, 100)},
            {x: '08:00', y: gerarValorAleatorio(10, 100)},
            {x: '09:00', y: gerarValorAleatorio(10, 100)},
            {x: '10:00', y: gerarValorAleatorio(10, 100)},
            {x: '11:00', y: gerarValorAleatorio(10, 100)},
            {x: '12:00', y: gerarValorAleatorio(10, 100)},
            {x: '13:00', y: gerarValorAleatorio(10, 100)},
            {x: '14:00', y: gerarValorAleatorio(10, 100)},
            {x: '15:00', y: gerarValorAleatorio(10, 100)},
            {x: '16:00', y: gerarValorAleatorio(10, 100)},
            {x: '17:00', y: gerarValorAleatorio(10, 100)},
            {x: '18:00', y: gerarValorAleatorio(10, 100)},
            {x: '19:00', y: gerarValorAleatorio(10, 100)},
            {x: '20:00', y: gerarValorAleatorio(10, 100)},
            {x: '21:00', y: gerarValorAleatorio(10, 100)}
        ]
    },
    {
        name: 'SEX',
        data: [
            {x: '07:00', y: gerarValorAleatorio(10, 100)},
            {x: '08:00', y: gerarValorAleatorio(10, 100)},
            {x: '09:00', y: gerarValorAleatorio(10, 100)},
            {x: '10:00', y: gerarValorAleatorio(10, 100)},
            {x: '11:00', y: gerarValorAleatorio(10, 100)},
            {x: '12:00', y: gerarValorAleatorio(10, 100)},
            {x: '13:00', y: gerarValorAleatorio(10, 100)},
            {x: '14:00', y: gerarValorAleatorio(10, 100)},
            {x: '15:00', y: gerarValorAleatorio(10, 100)},
            {x: '16:00', y: gerarValorAleatorio(10, 100)},
            {x: '17:00', y: gerarValorAleatorio(10, 100)},
            {x: '18:00', y: gerarValorAleatorio(10, 100)},
            {x: '19:00', y: gerarValorAleatorio(10, 100)},
            {x: '20:00', y: gerarValorAleatorio(10, 100)},
            {x: '21:00', y: gerarValorAleatorio(10, 100)}
        ]
    },
    {
        name: 'QUI',
        data: [
            {x: '07:00', y: gerarValorAleatorio(10, 100)},
            {x: '08:00', y: gerarValorAleatorio(10, 100)},
            {x: '09:00', y: gerarValorAleatorio(10, 100)},
            {x: '10:00', y: gerarValorAleatorio(10, 100)},
            {x: '11:00', y: gerarValorAleatorio(10, 100)},
            {x: '12:00', y: gerarValorAleatorio(10, 100)},
            {x: '13:00', y: gerarValorAleatorio(10, 100)},
            {x: '14:00', y: gerarValorAleatorio(10, 100)},
            {x: '15:00', y: gerarValorAleatorio(10, 100)},
            {x: '16:00', y: gerarValorAleatorio(10, 100)},
            {x: '17:00', y: gerarValorAleatorio(10, 100)},
            {x: '18:00', y: gerarValorAleatorio(10, 100)},
            {x: '19:00', y: gerarValorAleatorio(10, 100)},
            {x: '20:00', y: gerarValorAleatorio(10, 100)},
            {x: '21:00', y: gerarValorAleatorio(10, 100)}
        ]
    },
    {
        name: 'QUA',
        data: [
            {x: '07:00', y: gerarValorAleatorio(10, 100)},
            {x: '08:00', y: gerarValorAleatorio(10, 100)},
            {x: '09:00', y: gerarValorAleatorio(10, 100)},
            {x: '10:00', y: gerarValorAleatorio(10, 100)},
            {x: '11:00', y: gerarValorAleatorio(10, 100)},
            {x: '12:00', y: gerarValorAleatorio(10, 100)},
            {x: '13:00', y: gerarValorAleatorio(10, 100)},
            {x: '14:00', y: gerarValorAleatorio(10, 100)},
            {x: '15:00', y: gerarValorAleatorio(10, 100)},
            {x: '16:00', y: gerarValorAleatorio(10, 100)},
            {x: '17:00', y: gerarValorAleatorio(10, 100)},
            {x: '18:00', y: gerarValorAleatorio(10, 100)},
            {x: '19:00', y: gerarValorAleatorio(10, 100)},
            {x: '20:00', y: gerarValorAleatorio(10, 100)},
            {x: '21:00', y: gerarValorAleatorio(10, 100)}
        ]
    },
    {
        name: 'TER',
        data: [
            {x: '07:00', y: gerarValorAleatorio(10, 100)},
            {x: '08:00', y: gerarValorAleatorio(10, 100)},
            {x: '09:00', y: gerarValorAleatorio(10, 100)},
            {x: '10:00', y: gerarValorAleatorio(10, 100)},
            {x: '11:00', y: gerarValorAleatorio(10, 100)},
            {x: '12:00', y: gerarValorAleatorio(10, 100)},
            {x: '13:00', y: gerarValorAleatorio(10, 100)},
            {x: '14:00', y: gerarValorAleatorio(10, 100)},
            {x: '15:00', y: gerarValorAleatorio(10, 100)},
            {x: '16:00', y: gerarValorAleatorio(10, 100)},
            {x: '17:00', y: gerarValorAleatorio(10, 100)},
            {x: '18:00', y: gerarValorAleatorio(10, 100)},
            {x: '19:00', y: gerarValorAleatorio(10, 100)},
            {x: '20:00', y: gerarValorAleatorio(10, 100)},
            {x: '21:00', y: gerarValorAleatorio(10, 100)}
        ]
    },
    {
        name: 'SEG',
        data: [
            {x: '07:00', y: gerarValorAleatorio(10, 100)},
            {x: '08:00', y: gerarValorAleatorio(10, 100)},
            {x: '09:00', y: gerarValorAleatorio(10, 100)},
            {x: '10:00', y: gerarValorAleatorio(10, 100)},
            {x: '11:00', y: gerarValorAleatorio(10, 100)},
            {x: '12:00', y: gerarValorAleatorio(10, 100)},
            {x: '13:00', y: gerarValorAleatorio(10, 100)},
            {x: '14:00', y: gerarValorAleatorio(10, 100)},
            {x: '15:00', y: gerarValorAleatorio(10, 100)},
            {x: '16:00', y: gerarValorAleatorio(10, 100)},
            {x: '17:00', y: gerarValorAleatorio(10, 100)},
            {x: '18:00', y: gerarValorAleatorio(10, 100)},
            {x: '19:00', y: gerarValorAleatorio(10, 100)},
            {x: '20:00', y: gerarValorAleatorio(10, 100)},
            {x: '21:00', y: gerarValorAleatorio(10, 100)}
        ]
    },
    {
        name: 'DOM',
        data: [
            {x: '07:00', y: gerarValorAleatorio(10, 100)},
            {x: '08:00', y: gerarValorAleatorio(10, 100)},
            {x: '09:00', y: gerarValorAleatorio(10, 100)},
            {x: '10:00', y: gerarValorAleatorio(10, 100)},
            {x: '11:00', y: gerarValorAleatorio(10, 100)},
            {x: '12:00', y: gerarValorAleatorio(10, 100)},
            {x: '13:00', y: gerarValorAleatorio(10, 100)},
            {x: '14:00', y: gerarValorAleatorio(10, 100)},
            {x: '15:00', y: gerarValorAleatorio(10, 100)},
            {x: '16:00', y: gerarValorAleatorio(10, 100)},
            {x: '17:00', y: gerarValorAleatorio(10, 100)}
        ]
    }
            
        ],
        xaxis: {
            type: 'category',
            title: {
                text: 'Hora'
            }
        },
        yaxis: {
            type: 'category',
            title: {
                text: 'Dia'
            }
        },
        title: {
            text: '03/11/2024 - 09/11/2024',
            align: 'center'
        },
        legend: {
                position: 'right',    // Legenda à direita
                offsetY: 0,           // Distância vertical
                floating: false       // Mantém a legenda flutuante
                
            }
    };

    var chart = new ApexCharts(document.querySelector("#heatmap"), options);
    chart.render();
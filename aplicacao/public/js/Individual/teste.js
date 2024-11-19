window.onload = obterDadosGrafico2;

function obterDadosGrafico2() {


    fetch(`/rebeca/grafico`, { cache: 'no-store' })
        .then(function (response) {
            if (response.ok) {
                response.json().then(function (resposta) {
                    console.log(`Dados recebidos: ${JSON.stringify(resposta)}`);
                    resposta.reverse(); // Reverter para garantir a ordem correta, se necessário

                    plotarGrafico2(resposta);
                });
            } else {
                console.error('Nenhum dado encontrado ou erro na API');
            }
        })
        .catch(function (error) {
            console.error(`Erro na obtenção dos dados p/ gráfico: ${error.message}`);
        });
}


function traduzirDiaSemana(diaIngles) {
    const dias = {
        Sunday: "DOM",
        Monday: "SEG",
        Tuesday: "TER",
        Wednesday: "QUA",
        Thursday: "QUI",
        Friday: "SEX",
        Saturday: "SAB"
    };
    return dias[diaIngles] || diaIngles; // Retorna o valor traduzido ou o original, caso não encontre
}


function plotarGrafico2(resposta) {
    console.log('Iniciando plotagem do gráfico...');

    // Transformação dos dados recebidos para o formato do heatmap
    let seriesData = [];
    let dias = []; // Lista de dias únicos para organizar a série

    resposta.forEach((registro) => {
        const { dia_semana, hora, media_valor } = registro;

        // Traduz o nome do dia da semana para português
        const diaSemanaTraduzido = traduzirDiaSemana(dia_semana);

        // Localiza ou cria uma série para o dia da semana
        let diaIndex = dias.indexOf(diaSemanaTraduzido);
        if (diaIndex === -1) {
            diaIndex = dias.length;
            dias.push(diaSemanaTraduzido);
            seriesData.push({
                name: diaSemanaTraduzido,
                data: []
            });
        }

        // Adiciona o horário e o valor médio na série correspondente
        seriesData[diaIndex].data.push({
            x: hora,
            y: Math.round(media_valor) // Arredonda o valor, se necessário
        });
    });

    // Ordena os dados dentro de cada série de acordo com a hora
    seriesData.forEach(dia => {
        dia.data.sort((a, b) => a.x - b.x); // Ordena os horários de forma crescente
    });

    console.log('----------------------------------------------');
    console.log('Dados formatados para o gráfico de heatmap:');
    console.log(seriesData);
    console.log('----------------------------------------------');

    // Configurações do gráfico de heatmap
    var options = {
        chart: {
            type: 'heatmap',
            height: 380,
            width: 900
        },
        plotOptions: {
            heatmap: {
                shadeIntensity: 0,
                colorScale: {
                    ranges: [
                        { from: 0, to: 20, color: '#cc7a7a', name: 'Uso baixo (0-20%)' },
                        { from: 21, to: 40, color: '#b24c4c', name: 'Uso moderado (21-40%)' },
                        { from: 41, to: 60, color: '#992626', name: 'Uso alto (41-60%)' },
                        { from: 61, to: 80, color: '#731212', name: 'Uso muito alto (61-80%)' },
                        { from: 81, to: 100, color: '#4d0000', name: 'Uso crítico (81-100%)' }
                    ]
                }
            }
        },
        dataLabels: {
            enabled: false
        },
        series: seriesData,
        xaxis: {
            type: 'category',
            title: {
                text: 'Hora',
                style: {
                    fontSize: '14px',
                    fontFamily: 'Montserrat'
                }
            },
            labels: {
                style: {
                    fontSize: '12px',
                    fontFamily: 'Montserrat'
                }
            }
        },
        yaxis: {
            type: 'category',
            title: {
                text: 'Dia',
                style: {
                    fontSize: '14px',
                    fontFamily: 'Montserrat'
                }
            },
            labels: {
                style: {
                    fontSize: '12px',
                    fontFamily: 'Montserrat'
                }
            }
        },
        title: {
            text: '03/11/2024 - 09/11/2024',
            align: 'center',
            style: {
                color: 'black',
                fontSize: '20px',
                fontFamily: 'Montserrat'
            }
        },
        legend: {
            position: 'right',
            offsetY: 0,
            floating: false,
            labels: {
                colors: 'black',
                fontFamily: 'Montserrat'
            }
        }
    };

    // Renderizando o gráfico
    var chart = new ApexCharts(document.querySelector("#heatmap"), options);
    chart.render();
}




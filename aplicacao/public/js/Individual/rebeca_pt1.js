// Select das datas:

function gerarOpcoesSemanas() {
    const select = document.getElementById('dataSelect');
    const hoje = new Date();
    const totalSemanas = 4; 

    for (let i = 0; i < totalSemanas; i++) {
        const fimSemana = new Date(hoje);

        fimSemana.setDate(fimSemana.getDate() - fimSemana.getDay() - (i * 7) + 6);

        fimSemana.setDate(fimSemana.getDate() );

        const inicioSemana = new Date(fimSemana);
        inicioSemana.setDate(fimSemana.getDate() - 6);

        inicioSemana.setDate(inicioSemana.getDate() );

        const inicioFormatado = inicioSemana.toISOString().split('T')[0];
        const fimFormatado = fimSemana.toISOString().split('T')[0];

        // Criar uma nova opção no select
        const option = document.createElement('option');
        option.value = `${inicioFormatado} a ${fimFormatado}`;
        var [ano, mes, dia_dom] = inicioFormatado.split("-");
        var [ano, mes, dia_sab] = fimFormatado.split("-");
        option.textContent = `${dia_dom}/${mes}/${ano} a ${dia_sab}/${mes}/${ano}`;

        if (i === 0) {
            option.selected = true;
        }

        select.appendChild(option);
    }
}

// Gera as opções ao carregar a página
document.addEventListener('DOMContentLoaded', gerarOpcoesSemanas);


// Gráfico :

function mostrar() {

    const idEmpresa = sessionStorage.getItem('FK_EMPRESA'); 
    const tipoDispositivo = document.getElementById('componente').value;
    const dataSelecionada = document.getElementById('dataSelect').value; 

    const [inicio, fim] = dataSelecionada.split(' a ');

    console.log(`Data de início: ${inicio}`);
    console.log(`Data de fim: ${fim}`);
    console.log(`ID da Empresa: ${idEmpresa}`);
    console.log(`Tipo do Dispositivo: ${tipoDispositivo}`);

    if(tipoDispositivo == "Uso da CPU"){
        titulo_comp.innerHTML = "CPU"
        slope_text.innerHTML = "CPU"
    } else if (tipoDispositivo == "Porcentagem Memória Ram") {
        titulo_comp.innerHTML = "RAM"
        slope_text.innerHTML = "RAM"
    }


    obterDadosGrafico1(inicio, fim, idEmpresa, tipoDispositivo);

            const diasSemanas = document.getElementById('diasSemana');
            diasSemanas.style.display = 'flex';
}

function obterDadosGrafico1(inicio, fim, idEmpresa, tipoDispositivo) {


    const url = `/rebeca/grafico?inicio=${inicio}&fim=${fim}&empresa=${idEmpresa}&tipo=${tipoDispositivo}`;

    console.log(url)

    fetch(url, { cache: 'no-store' })
        .then(function (response) {
            if (response.ok) {
                response.json().then(function (resposta) {
                    console.log(`Dados recebidos: ${JSON.stringify(resposta)}`);
                    // resposta.reverse(); // Reverter para garantir a ordem correta, se necessário

                    plotarGrafico1(resposta);
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
    return dias[diaIngles] || diaIngles; 
}


function plotarGrafico1(resposta) {
    console.log('Iniciando plotagem do gráfico...');

    
    let seriesData = [];
    let dias = []; 

    resposta.forEach((registro) => {
        const { dia_semana, hora, media_valor } = registro;

        
        const diaSemanaTraduzido = traduzirDiaSemana(dia_semana);

       
        let diaIndex = dias.indexOf(diaSemanaTraduzido);
        if (diaIndex === -1) {
            diaIndex = dias.length;
            dias.push(diaSemanaTraduzido);
            seriesData.push({
                name: diaSemanaTraduzido,
                data: []
            });
        }

        seriesData[diaIndex].data.push({
            x: hora,
            y: Math.round(media_valor)
        });
    });

    seriesData.forEach(dia => {
        dia.data.sort((a, b) => a.x - b.x); 
    });

    console.log('----------------------------------------------');
    console.log('Dados formatados para o gráfico de heatmap:');
    console.log(seriesData);
    console.log('----------------------------------------------');
    const dataSelecionada = document.getElementById('dataSelect').value; 
    const [inicio, fim] = dataSelecionada.split(' a ');
    var [ano, mes, dia_dom] = inicio.split("-");
    var [ano, mes, dia_sab] = fim.split("-");
    var dia = `${dia_dom}/${mes}/${ano} --- ${dia_sab}/${mes}/${ano}`

  
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
            text: dia,
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



// KPIS

// Dias da semana individual

function fundo(dia) {
    const blur = document.getElementById('blur');
    const titulo = document.getElementById('titulo');
    titulo.textContent = `Uso Minímo - Máximo de ${dia}`;
    const data = document.getElementById('data');
    
    const dataSelecionada = document.getElementById('dataSelect').value; 
    
    const [inicio, fim] = dataSelecionada.split(' a ');

    var [ano, mes, dia_dom] = inicio.split("-")

    var dia_dom = Number(dia_dom)
    const dia_seg = dia_dom + 1
    const dia_ter = dia_seg + 1
    const dia_qua = dia_ter + 1
    const dia_qui = dia_qua + 1
    const dia_sex = dia_qui + 1
    const dia_sab = dia_sex + 1
    

    blur.style.display = 'flex';

    if (dia == "DOMINGO") {
     data.textContent = `${dia_dom}/${mes}/${ano} - ${dia}`;
     var day = ano + "-" + mes+ "-" + dia_dom
    } else if (dia == "SEGUNDA") {
      data.textContent = `${dia_seg}/${mes}/${ano} - ${dia}`;
      var day = ano + "-" + mes+ "-" + dia_seg
    } else if (dia == "TERÇA") {
      data.textContent = `${dia_ter}/${mes}/${ano} - ${dia}`;
      var day = ano + "-" + mes+ "-" + dia_ter
    }else if (dia == "QUARTA") {
      data.textContent = `${dia_qua}/${mes}/${ano} - ${dia}`;
      var day = ano + "-" + mes+ "-" + dia_qua
    }else if (dia == "QUINTA") {
      data.textContent = `${dia_qui}/${mes}/${ano} - ${dia}`;
      var day = ano + "-" + mes+ "-" + dia_qui
    }else if (dia == "SEXTA") {
      data.textContent = `${dia_sex}/${mes}/${ano} - ${dia}`;
      var day = ano + "-" + mes+ "-" + dia_sex
    } else if (dia == "SABÁDO"){
      data.textContent = `${dia_sab}/${mes}/${ano}- ${dia}`;
      var day = fim
    }

    var day
    var idEmpresa = sessionStorage.getItem('FK_EMPRESA'); 
    const tipoDispositivo = document.getElementById('componente').value;

    obterDadosGrafico2(idEmpresa, tipoDispositivo, day);
    obterDados1(day, idEmpresa, tipoDispositivo);
    obterDados2(day, idEmpresa, tipoDispositivo);
    obterDados3(day, idEmpresa, tipoDispositivo);
  

}

function fechar() {
    const blur = document.getElementById('blur');
    blur.style.display = 'none';
}
   
document.querySelectorAll('#diasSemana button').forEach(button => {
    button.addEventListener('click', () => fundo(button.textContent));
});

function obterDadosGrafico2(idEmpresa, tipoDispositivo, day) {


  const url = `/rebeca/grafico2?empresa=${idEmpresa}&tipo=${tipoDispositivo}&dia=${day}`;

  console.log(url)

  fetch(url, { cache: 'no-store' })
      .then(function (response) {
          if (response.ok) {
              response.json().then(function (resposta) {
                  console.log(`Dados recebidos: ${JSON.stringify(resposta)}`);

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
  
function plotarGrafico2(resposta) {
  console.log('Iniciando plotagem do gráfico de linha...');

  let maximos = [];
  let minimos = [];

  resposta.forEach((registro) => {
      const { hora, minimo, maximo } = registro;

      maximos.push({ x: hora, y: maximo });
      minimos.push({ x: hora, y: minimo });
  });

  console.log('----------------------------------------------');
  console.log('Dados formatados para o gráfico de linha:');
  console.log('Máximos:', maximos);
  console.log('Mínimos:', minimos);
  console.log('----------------------------------------------');

  var options = {
      series: [
          {
              name: 'Máximo',
              data: maximos,
          },
          {
              name: 'Mínimo',
              data: minimos,
          },
      ],
      chart: {
          height: '70%',
          width: 845,
          type: 'line',
      },
      colors: ['#4d0000', '#992626'], 
      plotOptions: {
          line: {
              isSlopeChart: true,
          },
      },
      xaxis: {
          type: 'category',
          title: {
              text: 'Hora',
              style: {
                  fontSize: '14px',
                  fontFamily: 'Montserrat',
              },
          },
          labels: {
              style: {
                  fontSize: '12px',
                  fontFamily: 'Montserrat',
              },
          },
      },
      yaxis: {
          title: {
              text: 'Valor (%)',
              style: {
                  fontSize: '14px',
                  fontFamily: 'Montserrat',
              },
          },
          labels: {
              style: {
                  fontSize: '12px',
                  fontFamily: 'Montserrat',
              },
          },
      },
      legend: {
          position: 'right',
          offsetY: 0,
          floating: false,
          labels: {
              colors: 'black',
              fontFamily: 'Montserrat',
          },
      },
  };

  var chart = new ApexCharts(document.querySelector("#slope"), options);
  chart.render();
}

function obterDados1(day, idEmpresa, tipoDispositivo) {


  const url = `/rebeca/KPI1?inicio=${day}&fim=${day}&empresa=${idEmpresa}&tipo=${tipoDispositivo}`;

  console.log(url)

  fetch(url, { cache: 'no-store' })
      .then(function (response) {
          if (response.ok) {
              response.json().then(function (resposta) {
                  console.log(`Dados recebidos: ${JSON.stringify(resposta)}`);

                  KPI1(resposta);
              });
          } else {
              console.error('Nenhum dado encontrado ou erro na API');
          }
      })
      .catch(function (error) {
          console.error(`Erro na obtenção dos dados p/ KPI: ${error.message}`);
      });
}

function KPI1(resposta) {
    console.log("Resposta recebida da API:", resposta); 

    if (resposta.length > 0) {
        const dados = resposta[0]; 
        const hora = dados.hora || "Sem horário"; 
        const maximo = dados.maximo || "Sem valor"; 

        const KPI_maximo = document.getElementById('KPI-maximo');
        if (KPI_maximo) {
            KPI_maximo.innerHTML = `${hora} - ${maximo}%`;
        } else {
            console.error("Elemento 'KPI-maximo' não encontrado no DOM.");
        }
    } else {
        console.warn("Nenhum dado encontrado na resposta da API.");
        const KPI_maximo = document.getElementById('KPI-maximo');
        if (KPI_maximo) {
            KPI_maximo.innerText = "Sem dados disponíveis";
        }
    }
}


function obterDados2(day, idEmpresa, tipoDispositivo) {


    const url = `/rebeca/KPI2?inicio=${day}&fim=${day}&empresa=${idEmpresa}&tipo=${tipoDispositivo}`;
  
    console.log(url)
  
    fetch(url, { cache: 'no-store' })
        .then(function (response) {
            if (response.ok) {
                response.json().then(function (resposta) {
                    console.log(`Dados recebidos: ${JSON.stringify(resposta)}`);
  
                    KPI2(resposta);
                });
            } else {
                console.error('Nenhum dado encontrado ou erro na API');
            }
        })
        .catch(function (error) {
            console.error(`Erro na obtenção dos dados p/ KPI: ${error.message}`);
        });
  }
  
  function KPI2(resposta) {
      console.log("Resposta recebida da API:", resposta); 
  
      if (resposta.length > 0) {
          const dados = resposta[0]; 
          const hora = dados.hora || "Sem horário"; 
          const minimo = dados.minimo || "Sem valor"; 
  
          const KPI_minimo = document.getElementById('KPI-minimo');
          if (KPI_minimo) {
              KPI_minimo.innerHTML = `${hora} - ${minimo}%`;
          } else {
              console.error("Elemento 'KPI-maximo' não encontrado no DOM.");
          }
      } else {
          console.warn("Nenhum dado encontrado na resposta da API.");
          const KPI_minimo = document.getElementById('KPI-minimo');
          if (KPI_minimo) {
              KPI_minimo.innerText = "Sem dados disponíveis";
          }
      }
  }
  
  function obterDados3(day, idEmpresa, tipoDispositivo) {


    const url = `/rebeca/KPI3?inicio=${day}&fim=${day}&empresa=${idEmpresa}&tipo=${tipoDispositivo}`;
  
    console.log(url)
  
    fetch(url, { cache: 'no-store' })
        .then(function (response) {
            if (response.ok) {
                response.json().then(function (resposta) {
                    console.log(`Dados recebidos: ${JSON.stringify(resposta)}`);
  
                    KPI3(resposta);
                });
            } else {
                console.error('Nenhum dado encontrado ou erro na API');
            }
        })
        .catch(function (error) {
            console.error(`Erro na obtenção dos dados p/ KPI: ${error.message}`);
        });
  }
  
  function KPI3(resposta) {
      console.log("Resposta recebida da API:", resposta); 
  
      if (resposta.length > 0) {
          const dados = resposta[0]; 
          const media = dados.media_diaria || "Sem valor"; 
  
          const KPI_media = document.getElementById('KPI-media');
          if (KPI_media) {
              KPI_media.innerHTML = `${media}%`;
          } else {
              console.error("Elemento 'KPI-media' não encontrado no DOM.");
          }
      } else {
          console.warn("Nenhum dado encontrado na resposta da API.");
          const KPI_media = document.getElementById('KPI-media');
          if (KPI_media) {
              KPI_media.innerText = "Sem dados disponíveis";
          }
      }
  }
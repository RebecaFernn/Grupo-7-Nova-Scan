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
     const day = ano + "-" + mes+ "-" + dia_dom
    } else if (dia == "SEGUNDA") {
      data.textContent = `${dia_seg}/${mes}/${ano} - ${dia}`;
      const day = ano + "-" + mes+ "-" + dia_seg
    } else if (dia == "TERÇA") {
      data.textContent = `${dia_ter}/${mes}/${ano} - ${dia}`;
      const day = ano + "-" + mes+ "-" + dia_ter
    }else if (dia == "QUARTA") {
      data.textContent = `${dia_qua}/${mes}/${ano} - ${dia}`;
      const day = ano + "-" + mes+ "-" + dia_qua
    }else if (dia == "QUINTA") {
      data.textContent = `${dia_qui}/${mes}/${ano} - ${dia}`;
      const day = ano + "-" + mes+ "-" + dia_qui
    }else if (dia == "SEXTA") {
      data.textContent = `${dia_sex}/${mes}/${ano} - ${dia}`;
      const day = ano + "-" + mes+ "-" + dia_sex
    } else if (dia == "SABÁDO"){
      data.textContent = `${dia_sab}/${mes}/${ano}- ${dia}`;
      const day = fim
    }

    const idEmpresa = sessionStorage.getItem('FK_EMPRESA'); 
    const tipoDispositivo = document.getElementById('componente').value;

    // obterDadosGrafico2(day, idEmpresa, tipoDispositivo);
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


function obterDados1(day, idEmpresa, tipoDispositivo) {


  const url = `/rebeca/KPI1?dia=${day}&empresa=${idEmpresa}&tipo=${tipoDispositivo}`;

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
          console.error(`Erro na obtenção dos dados p/ gráfico: ${error.message}`);
      });
}

function obterDados2(day, idEmpresa, tipoDispositivo) {


  const url = `/rebeca/KPI2?dia=${day}&empresa=${idEmpresa}&tipo=${tipoDispositivo}`;

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
          console.error(`Erro na obtenção dos dados p/ gráfico: ${error.message}`);
      });
}

function obterDados3(day, idEmpresa, tipoDispositivo) {


  const url = `/rebeca/KPI3?dia=${day}&empresa=${idEmpresa}&tipo=${tipoDispositivo}`;

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
          console.error(`Erro na obtenção dos dados p/ gráfico: ${error.message}`);
      });
}
function listarMaquinas() {
    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')
    fetch(`/maquinas/lista/${fkEmpresa}`, {
        method: 'GET',
        headers: { contentType: 'application/json' },
    })
        .then(function (resposta) {
            if (resposta.ok) {
                return resposta.json()
            }
            else {
                console.log("Houve um problema ao buscar as maquinas")
            }
        })
        .then(function (listaMaquinas) {
            console.log("Máquinas encontradas: ", listaMaquinas)

            //Verificação para pegar a atividade mais recente das máquinas

            // Objeto para armazenar a última atividade por máquina
            let maquinasMap = {};

            // Agrupando máquinas pela ID e mantendo o registro mais recente
            for (let i = 0; i < listaMaquinas.length; i++) {
                let maquina = listaMaquinas[i];
                let id = maquina.id;

                // Se a máquina ainda não foi adicionada ou a dataHora é mais recente, atualiza
                if (!maquinasMap[id] || maquina.dataHora > maquinasMap[id].dataHora) {
                    maquinasMap[id] = maquina;
                }
            }

            console.log("Maquinas agrupadas: ", maquinasMap);

            let maquinasUnicas = Object.values(maquinasMap);

            let maquinasHTML = "";
            for (let i = 0; i < maquinasUnicas.length; i++) {
                let maquina = maquinasUnicas[i];

                if (maquina.alerta == 0) {
                    if (maquina.situacao == "Ativo") {
                        maquinasHTML += `
                        <div class="maquinasOK" onclick="maquina(${maquina.id})">
                            <p>${maquina.nome}</p>
                            <img src="./img/ok.svg" class="imgMaquina" alt="">
                        </div>`;
                    } else if (maquina.situacao == "Inativo") {
                        maquinasHTML += `
                        <div class="maquinasInativa" onclick="maquina(${maquina.id})">
                            <p>${maquina.nome}</p>
                            <img src="./img/inativo.svg" class="imgMaquina" alt="">
                        </div>`;
                    }
                } else {
                    maquinasHTML += `
                    <div class="maquinas" onclick="maquina(${maquina.id})">
                        <p>${maquina.nome}</p>
                        <img src="./img/alert.svg" class="imgMaquina" alt="">
                    </div>`;
                }
            }
            const elementoPai = document.getElementById('boxmaquinas');
            elementoPai.innerHTML = maquinasHTML;
            console.log(elementoPai);


            const topMaquinas = document.getElementsByName('topGraficoAlerta')
            let nomeDaMaquina = maquina.nome
            console.log(`AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA ${nomeDaMaquina}`)
            topMaquinas.innerHTML = nomeDaMaquina

        })
        .catch(function (error) {
            console.log("Erro!: ", error)
        })
}

// function contarMaquinas() {
//     var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')
//     fetch(`/maquinas/lista/${fkEmpresa}`, {
//         method: 'GET',
//         headers: { contentType: 'application/json' },
//     })
//         .then(function (resposta) {
//             if (resposta.ok) {
//                 return resposta.json()
//             }
//             else {
//                 console.log("Houve um problema ao buscar as maquinas")
//             }
//         })
//         .then(function (listaMaquinas) {
//             console.log("Maquinas encontradas: ", listaMaquinas)

//             var maquinasOk = 0
//             var totalMaquinas = 0
//             var maquinasCriticas = 0

//             for (var i = 0; i < listaMaquinas.length; i++) {

//                 totalMaquinas++

//                 if (listaMaquinas[i].alerta == 0) {
//                     maquinasOk++
//                 }
//                 else {
//                     maquinasCriticas++
//                 }
//             }
//             overviewMaquinas(maquinasOk, maquinasCriticas, totalMaquinas)
//         })
//         .catch(function (error) {
//             console.log("Erro!: ", error)
//         })
// }

function overviewMaquinas(maquinasOk, maquinasCriticas, maquinasTotais) {
    const elementoPai = document.getElementById('lowOverview');
    let overview = ""
    overview = `
        <div class="boxleftLow" onclick="maquinas()">
                    <img src="./img/alertwhite.svg" alt="">
                    <h3>Máquinas em estado crítico</h3>
                    <h1>${maquinasCriticas}</h1>
                </div>
                <div class="boxcenterLow" onclick="maquinas()">
                    <img src="./img/totalMaquinas.svg" alt="">
                    <h3>Total de máquinas</h3>
                    <h1>${maquinasTotais}</h1>
                </div>
                <div class="boxrightLow" onclick="maquinas()">
                    <img src="./img/maquinasEstaveis.svg" alt="">
                    <h3>Máquinas estaveis</h3>
                    <h1>${maquinasOk}</h1>
                </div>
    `
    elementoPai.innerHTML += overview;
    console.log(elementoPai);
}


//variavel global para armazenar o id do dispositivo quando clicar em um dos cards de dispositivo
var idDispositivo;

// Função para abrir o modal de informações da máquina
function maquina(id) {
    const fundoInformacoesmaquina = document.getElementById('fundoInformacoesmaquina');
    fundoInformacoesmaquina.style.display = 'flex';

    idDispositivo = id;
    componentesDispositivo();
    valoresComponentes();
    listandoAlertasMaquinas();
    listandoAlertasComponenteMaquina();
}


function valoresComponentes() {

    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')
    fetch(`/maquinas/valoresComponentes/${fkEmpresa}?idDispositivo=${idDispositivo}`, {
        methot: 'GET',
        headers: { "Content-Type": "application/json" },
    })
        .then(function (resposta) {
            if (resposta.ok) {
                return resposta.json()
            }
        })
        .then(function (listaValores) {
            componentesDispositivo(listaValores)
        })
        .catch(function (error) {
            console.log("Erro!: ", error)
        })
}

var ramTOTAL = 0;

function componentesDispositivo(listaValores) {
    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')

    fetch(`/maquinas/componentes/${fkEmpresa}?idDispositivo=${idDispositivo}`, {
        method: 'GET',
        headers: { "Content-Type": "application/json" },
    })
        .then(function (resposta) {
            if (resposta.ok) {
                return resposta.json()
            }
        })
        .then(function (listaComponente) {
            console.log("Componentes encontrados: ", listaComponente)
            var valores = listaValores

            const elementoPai = document.getElementById('top-info');
            //limpando o html para nao ficar repetindo
            elementoPai.innerHTML = "";
            let componentes
            componentes = `
                <p> <strong>Nome da máquina:</strong> ${listaComponente[0].nomeMaquina}</p>
                <p> <strong>Processador:</strong> ${listaComponente[0].nomeProcessador}</p>
                <p> <strong>Mémoria Ram Total: </strong> ${valores[1].valor} GB</p>
                <p> <strong>Armazenamento Total: </strong> ${valores[0].valor}GB</p>
            `
            elementoPai.innerHTML += componentes;
            console.log(elementoPai);

            ramTOTAL = valores[1].valor
            //Mostrando total de ram e armazenamento nos graficos
            const ram = document.getElementById('Total-RAM')
            ram.innerHTML = `<p>Total</p>
                                    <p ><strong >${valores[1].valor}Gb</strong></p>`;


            memoriaTOTAL = valores[0].valor

            const memoria = document.getElementById('total-memoria')
            memoria.innerHTML = ` <p>Total</p>
                                <p><strong>${valores[0].valor}Gb</strong></p>`

        })
        .catch(function (error) {
            console.log("Erro!: ", error)
        })
}

function atualizarNomeDispositivo() {
    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')
    var novoNome = nome_input.value

    if (novoNome == "") {
        Swal.fire({
            title: 'Preencha o campo do nome da máquina!',
            icon: 'error',
            showConfirmButton: false,
            timer: 2000
        })
    }
    else {

        fetch(`/maquinas/atualizarNome/${fkEmpresa}`, {
            method: 'POST',
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
                nomeServer: novoNome,
                idDispositivoServer: idDispositivo
            })
        })
            .then(function (resposta) {
                if (resposta.ok) {
                    resposta.json()
                    console.log("Nome atualizado com sucesso")
                    Swal.fire({
                        title: 'Nome da máquina mudado com sucesso!',
                        imageUrl: "img/ok.svg",
                        showConfirmButton: false,
                        timer: 2000
                    })
                    idDispositivo = null
                    setTimeout(function () {
                        atualizarPagina();
                    }, 1000)
                }
            })
            .catch(function (error) {
                console.log("Erro!: ", error)
                idDispositivo = null
                Swal.fire({
                    title: 'Houve um erro ao mudar o nome da máquina!',
                    icon: 'error',
                    showConfirmButton: false,
                    timer: 2000
                })
            })
    }
}

function desativarDispositivo() {
    fetch(`/maquinas/desativarDispositivo/`, {
        method: 'POST',
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
            idDispositivoServer: idDispositivo,
        })
    })
        .then(function (resposta) {
            if (resposta.ok) {
                resposta.json()
                console.log("Status atualizado com sucesso")
                Swal.fire({
                    title: 'Máquina desativada com sucesso!',
                    imageUrl: "img/ok.svg",
                    showConfirmButton: false,
                    timer: 2000
                })
                idDispositivo = null
                setTimeout(function () {
                    atualizarPagina();
                }, 1000)
            }
        })
        .catch(function (error) {
            console.log("Erro!: ", error)
            Swal.fire({
                title: 'Houve um erro ao desativar a máquina!',
                icon: 'error',
                showConfirmButton: false,
                timer: 2000
            })
            idDispositivo = null
        })
}

function ativarDispositivo() {
    fetch(`/maquinas/ativarDispositivo/`, {
        method: 'POST',
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
            idDispositivoServer: idDispositivo,
        })
    })
        .then(function (resposta) {
            if (resposta.ok) {
                resposta.json()
                console.log("Status atualizado com sucesso")
                Swal.fire({
                    title: 'Máquina ativada com sucesso!',
                    imageUrl: "img/ok.svg",
                    showConfirmButton: false,
                    timer: 2000
                })
                idDispositivo = null
                setTimeout(function () {
                    atualizarPagina();
                }, 1000)
            }
        })
        .catch(function (error) {
            console.log("Erro!: ", error)
            Swal.fire({
                title: 'Houve um erro ao desativar a máquina!',
                icon: 'error',
                showConfirmButton: false,
                timer: 2000
            })
            idDispositivo = null
        })
}

function listandoAlertasMaquinas() {
    idUsuario = sessionStorage.getItem('ID_USUARIO')
    elementoPai = document.getElementById('low-info');
    elementoPai.innerHTML = "";
    fetch(`/maquinas/listaAlertasMaquina/${idUsuario}?idDispositivo=${idDispositivo}`, {
        method: 'GET',
        headers: { "Content-Type": "application/json" },
    })
        .then(function (resposta) {
            if (resposta.ok) {
                return resposta.json()
            }
        })
        .then(function (listaAlertas) {
            console.log("Alertas encontrados:", listaAlertas)
            let alertas = ""
            for (var i = 0; i < listaAlertas.length; i++) {
                console.log(listaAlertas[i])
                if (listaAlertas[i].tipo == "Processador") {
                    alertas += `
                    <div class="top-low")">
                        <p><strong>Máximo do Intervalo:</strong> ${listaAlertas[i].maxIntervalo}</p>
                        <p><strong>Minimo do Intervalo:</strong> ${listaAlertas[i].minIntervalo}</p>
                        <p><strong>Tipo do Componente:</strong> ${listaAlertas[i].tipo}</p>
                    </div>
                `
                }
                else if (listaAlertas[i].tipo == "Mémoria") {
                    alertas += `
                        <div class="mid-low" onclick="graficoAlerta(${listaAlertas[i].idLog})>
                            <p><strong>Máximo do Intervalo:</strong> ${listaAlertas[i].maxIntervalo}</p>
                            <p><strong>Minimo do Intervalo:</strong> ${listaAlertas[i].minIntervalo}</p>
                            <p><strong>Tipo do Componente:</strong> ${listaAlertas[i].tipo}</p>
                        </div>
                    `
                }
                else if (listaAlertas[i].tipo == "Armazenamento") {
                    alertas += `
                        <div class="low-low" onclick="graficoAlerta(${listaAlertas[i].idLog})>
                            <p><strong>Máximo do Intervalo:</strong> ${listaAlertas[i].maxIntervalo}</p>
                            <p><strong>Minimo do Intervalo:</strong> ${listaAlertas[i].minIntervalo}</p>
                            <p><strong>Tipo do Componente:</strong> ${listaAlertas[i].tipo}</p>
                        </div>
                    `
                }
                else {
                    alertas += `
                        <div class="low-low" onclick="graficoAlerta(${listaAlertas[i].idLog})>
                            <p><strong>Máximo do Intervalo:</strong> ${listaAlertas[i].maxIntervalo}</p>
                            <p><strong>Minimo do Intervalo:</strong> ${listaAlertas[i].minIntervalo}</p>
                            <p><strong>Tipo do Componente:</strong> ${listaAlertas[i].tipo}</p>
                        </div>
                    `
                }
            }
            elementoPai.innerHTML += alertas
        })
        .catch(function (error) {
            console.log("Erro!: ", error)
        })
}

function listandoAlertasComponenteMaquina() {
    fetch(`/maquinas/listarAlertasComponentesMaquina/${idDispositivo}`, {
        method: 'GET',
        headers: { "Content-Type": "application/json" },
    })
        .then(function (resposta) {
            if (resposta.ok) {
                return resposta.json()
            }
        })
        .then(function (listaAlertasDisparado) {
            console.log("Alertas Disparados:", listaAlertasDisparado)

            const alertaCPU = document.getElementById('alertaDaCPU');
            alertaCPU.innerHTML = "";

            const alertaRAM = document.getElementById('alertaDaRAM');
            alertaRAM.innerHTML = "";

            const alertaMemoria = document.getElementById('alertaDaMemoria');
            alertaMemoria.innerHTML = "";

            const alertaREDE = document.getElementById('alertaDaREDE');
            alertaREDE.innerHTML = "";

            let alertasDisparados = ""
            var c = 0;
            var r = 0;
            var p = 0;
            var a = 0;



            for (var i = 0; i < listaAlertasDisparado.length; i++) {

                const dataHora = listaAlertasDisparado[i].dataHora;

                // Converter a string de data e hora para um objeto Date
                const data = new Date(dataHora)

                const opcoes = {
                    year: 'numeric',
                    month: 'numeric',
                    day: 'numeric',
                    hour: '2-digit',
                    minute: '2-digit',
                    second: '2-digit',
                    hour12: false
                };

                const dataFormatada = data.toLocaleString('pt-BR', opcoes);

                if (listaAlertasDisparado[i].descricao == "Alerta: Alto uso da CPU!!") {
                    c++
                    alertaCPU.innerHTML += `
            <div class="alerts" onclick = "visualizarGraficoAlerta('${listaAlertasDisparado[i].descricao}')">
             <p>${listaAlertasDisparado[i].descricao}: ${listaAlertasDisparado[i].valor}% - ${dataFormatada}</p>
            </div>`


                }
                else if (listaAlertasDisparado[i].descricao == "Alerta: Alta Frequencia do processador") {
                    c++
                    alertaCPU.innerHTML += `
                <div class="alerts" onclick = "visualizarGraficoAlerta('${listaAlertasDisparado[i].descricao}')">
                 <p>${listaAlertasDisparado[i].descricao}: ${listaAlertasDisparado[i].valor}Ghz - ${dataFormatada}</p>
                </div>
                `

                }
                else if (listaAlertasDisparado[i].descricao == "Alerta: Uso Alto de Memória RAM!!") {
                    r++
                    alertaRAM.innerHTML += `
            <div class="alerts" onclick = "visualizarGraficoAlerta('${listaAlertasDisparado[i].descricao}')">
            <p>${listaAlertasDisparado[i].descricao}: ${listaAlertasDisparado[i].valor} GB - ${dataFormatada}</p>
            </div>`
                }

                else if (listaAlertasDisparado[i].descricao == "Alerta: Alto uso de armazenamento") {
                    a++
                    alertaMemoria.innerHTML += `
                    <div class="alerts" onclick = "visualizarGraficoAlerta('${listaAlertasDisparado[i].descricao}')">
                    <p>${listaAlertasDisparado[i].descricao}: ${listaAlertasDisparado[i].valor} GB - ${dataFormatada}</p>
                    </div>`
                }
                else {
                    p++
                    alertaREDE.innerHTML += `
            <div class="alerts" onclick = "visualizarGraficoAlerta('${listaAlertasDisparado[i].descricao}')">
            <p>${listaAlertasDisparado[i].descricao}: ${listaAlertasDisparado[i].valor} MB - ${dataFormatada}</p>
            </div>`

                }

            }

            elementoPai.innerHTML += alertasDisparados


            const alertasCPU = document.getElementById('alertasCPU')
            alertasCPU.innerHTML = `
            <p> Alertas </p>
            <p>${c}</p>`


            const alertasRAM = document.getElementById('alertasRAM')
            alertasRAM.innerHTML = `
            <p> Alertas </p>
            <p>${r}</p>`


            const alertasMemoria = document.getElementById('alertasMEM')
            alertasMemoria.innerHTML = `
            <p> Alertas </p>
            <p>${a}</p>`

            const alertasREDE = document.getElementById('alertasREDE')
            alertasREDE.innerHTML = `
            <p> Alertas </p>
            <p>${p}</p>`

        })
        .catch(function (error) {
            console.log("Erro!: ", error)
        })
}


//Funções Mônica
function visualizarGraficoAlerta(descricao) {
    const funfoAlertas = document.getElementById('fundo-alertas');
    funfoAlertas.style.display = 'none';
    const conteudoMaquinas = document.getElementById('conteudoMaquinas');
    conteudoMaquinas.style.display = 'none';
    const GraficoAlerta = document.getElementById('GraficoAlerta');
    GraficoAlerta.style.display = 'flex';
    
    //Mandando o id do log para a função grafico alerta
    graficoAlerta(descricao)
}

function graficoAlerta(descricao) {
    fetch(`/maquinas/graficoAlerta/${descricao}`, {
        method: 'GET',
        headers: { "Content-Type": "application/json" },
    })
        .then(function (resposta) {
            return resposta.json()
        })
        .then(function (dados) {

            let GraficoAlerta = document.getElementById('GraficoAlerta')

            GraficoAlerta.innerHTML = `
            
            <button onclick="VoltarInfoMaquina()" class="btn-voltar" id="botaoVoltar"><img src="./img/voltar.svg"
                    alt="">Voltar</button>

            <div class="topmaquinas2" id="topGraficoAlerta">
                <h2>Histórico do dia da máquina<h2 id="nomeMaquina"></h2>
                </h2>

            </div>
            <!-- <div class="descricaoGrafico" id="descricaoGrafico">
                <div class="divData">Data: <p id="listaData"></p></div>
            </div> -->
            <div class="descricaoGrafico" id="descricaoGrafico">
                <div class="divProblema"><strong>Problema:</strong><p id="descricao"></p>
                </div>
                <div class="divDataHora"><strong>Data e Hora do primeiro pico mais alto:</strong><p id="intervalo_inicio"></p>
                </div>

            </div>

            <div class="medGraficoAlerta" id="medGraficoAlerta">

                <title>Gráfico de Uso de CPU</title>
                <div id="chartContainer">
                    <canvas id="cpuChart"></canvas>
                </div>
            </div>

            <div class="fimGraficoAlerta" id="fimGraficoAlerta">
                <!-- <div class="infoFimGraficoAlerta" >
                    <p id="descricao"><strong>Problema:</strong> </p>
                    <p id="intervalo_inicio"><strong >Data e Hora:</strong> </p>
                </div> -->
            </div>
    
            `
            console.log("Dados do alerta clicado: ", dados)

            const ctx = document.getElementById('cpuChart').getContext('2d');

            listaData = []
            listaDados = []
            i = 0
            a = 0
            while (i < dados.length) {
                //Logica de formatar data para enviar dentro da lista
                const data = new Date(dados[i].intervalo_inicio)
                const opcoes = {
                    day: 'numeric',
                    month: 'numeric',
                    year: 'numeric',
                    hour: '2-digit',
                    minute: '2-digit',
                    second: '2-digit',
                    hour12: false
                };

                const dataFormatada = data.toLocaleString('pt-BR', opcoes);
                listaData.push(dataFormatada);
                i++
            }

            // horário errado, data correta
            while (a < dados.length) {
                console.log(dados[a].pico_maximo)
                listaDados.push(dados[a].pico_maximo)
                a++
            }

            console.log("Lista Dados", listaDados)
            console.log("Lista Tempo", listaData)

            new Chart(ctx, {
                type: 'line',
                data: {
                    labels: listaData,
                    datasets: [{
                        label: dados[0].descricao,
                        data: listaDados,
                        borderColor: 'rgba(255, 99, 132, 1)',
                        backgroundColor: 'rgba(255, 99, 132, 0.2)',
                        pointBackgroundColor: 'red',
                        borderWidth: 2,
                        tension: 0.12
                    }]
                },
                options: {
                    responsive: true,
                    
                }
            });

            let maquinaNome = document.getElementById('nomeMaquina')
            maquinaNome.innerHTML = dados[0].nome

            let maquinaDescricao = document.getElementById('descricao')
            maquinaDescricao.innerHTML = dados[0].descricao

            // let maquinaDispositivo = document.getElementById('listaData')
            // maquinaDispositivo.innerHTML = dados[0].data

            maior = 0
            b = 0
            listaMaior = []
            for (let b = 0; b < dados.length; b++) {
                if (dados[b].pico_maximo > maior) {
                    maior = dados[b].pico_maximo;
                }
            }

            for (picoMaior in dados) {
                if (dados[picoMaior].pico_maximo === maior) {
                    const data = new Date(dados[picoMaior].intervalo_inicio)
                    const opcoes = {
                        day: 'numeric',
                        month: 'numeric',
                        year: 'numeric',
                        hour: '2-digit',
                        minute: '2-digit',
                        second: '2-digit',
                        hour12: false
                    };

                    const dataFormatada = data.toLocaleString('pt-BR', opcoes);
                    listaMaior.push(dataFormatada);
                }
            }

            let maquinaDataHora = document.getElementById('intervalo_inicio')
            maquinaDataHora.innerHTML = listaMaior[0]
        })

        .catch(function (error) {
            console.log("Deu erro na função graficoAlerta()", error)
        })
}

// Ram
var listaRam = []
var dataRam = []

//Cpu
var listaCPU = []
var listaVelocidade = 0;
//Armazenamento
var listaMemoria = []
var ArmazenamentoTotal;


//Rede
var perdaPacotes = []
var pacotesEnviados = []
var pacotesRecebidos = []


function listandologMaquinas() {
    var idUsuario = sessionStorage.getItem('ID_USUARIO')
    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')
    var dispositivo = idDispositivo

    fetch(`/maquinas/listarlogMaquina/${dispositivo}?idUsuario=${idUsuario}&fkEmpresa=${fkEmpresa}`, {
        method: 'GET',
        headers: { "Content-Type": "application/json" },
    })
        .then(function (resposta) {
            if (resposta.ok) {
                return resposta.json()

            }
            console.log("AQUI NA VALIDAÇÂO RYAN")
        })
        .then(function (listarlogMaquinas) {
            console.log(listarlogMaquinas)
            // Listas e validações para separar componentes


            var statusCPU = document.getElementById('status-cpu')
            var minIntervaloCPU = 0
            var maxIntervaloCPU = 5

            var statusRAM = document.getElementById('status-ram')
            var minIntervaloRAM = 0
            var maxIntervaloRAM = ramTOTAL * 0.8


            var statusMEM = document.getElementById('status-mem')
            var minIntervaloMEM = 0
            var maxIntervaloMEM = memoriaTOTAL * 0.8




            var statusREDE = document.getElementById('status-rede')
            

            for (let i = 0; i < 8; i++) {


                if (listarlogMaquinas[i].tipoComponente == "Memória") {


                    listaRam.push(listarlogMaquinas[i].valor)
                    dataRam.push(listarlogMaquinas[i].dataHoraLog)

                    
                    if (listarlogMaquinas[i].minIntervalo != null) {
                        minIntervaloRAM = listarlogMaquinas[i].minIntervalo

                    }
                    if (listarlogMaquinas[i].maxIntervalo != null) {
                        maxIntervaloRAM = listarlogMaquinas[i].maxIntervalo
                    }


                  
                    if (listaRam.length > 0) {
                        var valorAtual = listaRam[listaRam.length - 1]; // Último valor da lista
                    
                        // Verificar se o valor está dentro do intervalo
                        if (valorAtual >= minIntervaloRAM && valorAtual <= maxIntervaloRAM) {
                            var limiteSuperiorCuidado = maxIntervaloRAM - (maxIntervaloRAM * 0.30);
                    
                            // Determinar o status baseado no valor atual
                            var status = valorAtual >= limiteSuperiorCuidado ? "cuidado" : "bom";
                    
                            statusRAM.innerHTML = `
                                <p>Status</p>
                                <img src="./img/${status}.svg" alt="">
                            `;
                        } else {
                            // Valor fora do intervalo
                            statusRAM.innerHTML = `
                                <p>Status</p>
                                <img src="./img/ruim.svg" alt="">
                            `;
                        }
                    }

                    if(listaRam.length >= 7){
                        listaRam.shift()
                    }
                }


                //-----------------------------------------------------------------------

    
                else if (listarlogMaquinas[i].tipoComponente == "Processador") {
                    listaCPU.push(listarlogMaquinas[i].valor)

                    if (listarlogMaquinas[i].minIntervalo != null) {
                        minIntervaloCPU = listarlogMaquinas[i].minIntervalo

                    }
                    if (listarlogMaquinas[i].maxIntervalo != null) {
                        maxIntervaloCPU = listarlogMaquinas[i].maxIntervalo
                    }


                  
                    if (listaCPU[listaCPU.length - 1] >= minIntervaloCPU && listaCPU[listaCPU.length - 1] <= maxIntervaloCPU) {
                        var cuidado = maxIntervaloCPU- (maxIntervaloCPU * 0.30);
                        
                        // Verificar se o valor está 10% próximo do limite superior
                        if (listaCPU[listaCPU.length - 1] >= cuidado && listaCPU[listaCPU.length - 1] <= maxIntervaloCPU) {
                            // Status de cuidado
                            statusCPU.innerHTML = `<p>Status</p>
                                                    <img src="./img/cuidado.svg" alt="">`;
                        } else {
                            // Status bom
                            statusCPU.innerHTML = `<p>Status</p>
                                                    <img src="./img/bom.svg" alt="">`;
                        }
                    }
                    
                    if (listaCPU[listaCPU.length-1] <= minIntervaloCPU || listaCPU[listaCPU.length-1] >= maxIntervaloCPU){
                        statusCPU.innerHTML = `<p>Status</p>
                                <img src="./img/ruim.svg" alt="">`
                    }

                    if (listaCPU.length >= 7) {
                        listaCPU.shift()
                    }
                    
                }





                else if (listarlogMaquinas[i].unidadeDeMedida == "Ghz") {
                    listaVelocidade = listarlogMaquinas[i].valor

                }
                else if (listarlogMaquinas[i].descricaoLog == "Perda de Pacotes") {
                    perdaPacotes.push(listarlogMaquinas[i].valor)
                
                    var pEnviados = pacotesEnviados[pacotesRecebidos.length-1]*0.05;
                    var pRecebidos = pacotesRecebidos[pacotesRecebidos.length-1]*0.05;
                    var padraoAceitavel = perdaPacotes[perdaPacotes.length-1]*0.01;

                    if(perdaPacotes[perdaPacotes.length-1] <= padraoAceitavel){
                         statusREDE.innerHTML = `<p>Status</p>
                                <img src="./img/bom.svg" alt="">`
                    }
                    if(perdaPacotes[perdaPacotes.length-1] > padraoAceitavel && perdaPacotes[perdaPacotes.length-1] <= pEnviados || perdaPacotes[perdaPacotes.length-1] > padraoAceitavel && perdaPacotes[perdaPacotes.length-1] <= pRecebidos){
                           statusREDE.innerHTML = `<p>Status</p>
                                <img src="./img/cuidado.svg" alt="">`
                    }
                    if(perdaPacotes[perdaPacotes.length-1] > pEnviados || perdaPacotes[perdaPacotes.length-1] > pRecebidos ){
                               statusREDE.innerHTML = `<p>Status</p>
                                <img src="./img/ruim.svg" alt="">`

                    }
                  

                    if (perdaPacotes.length >= 7) {
                        perdaPacotes.shift()
                    }

               
                }
                else if (listarlogMaquinas[i].tipoComponente == "Armazenamento") {
                    listaMemoria.push(listarlogMaquinas[i].valor)
              

                    
                    if (listarlogMaquinas[i].minIntervalo != null) {
                        minIntervaloMEM = listarlogMaquinas[i].minIntervalo

                    }
                    if (listarlogMaquinas[i].maxIntervalo != null) {
                        maxIntervaloMEM = listarlogMaquinas[i].maxIntervalo
                    }


                  
                    if (listaMemoria[listaMemoria.length - 1] >= minIntervaloMEM && listaMemoria[listaMemoria.length - 1] <= maxIntervaloMEM) {
                    
                        var cuidado = maxIntervaloMEM - (maxIntervaloMEM * 0.30);
                        
                        // Verificar se o valor está 10% próximo do limite superior
                        if (listaMemoria[listaMemoria.length - 1] >= cuidado && listaMemoria[listaMemoria.length - 1] <= maxIntervaloMEM) {
                            // Status de cuidado
                            statusMEM.innerHTML = `<p>Status</p>
                                                    <img src="./img/cuidado.svg" alt="">`;
                        } else {
                            // Status bom
                            statusMEM.innerHTML = `<p>Status</p>
                                                    <img src="./img/bom.svg" alt="">`;
                        }
                    }
                    
                    if (listaMemoria[listaMemoria.length-1] < minIntervaloMEM || listaMemoria[listaMemoria.length-1] > maxIntervaloMEM){

                        statusMEM.innerHTML = `<p>Status</p>
                                <img src="./img/ruim.svg" alt="">`
                    }

                    if (listaMemoria.length >= 7) {
                        listaMemoria.shift()
                    }








                }
                else if (listarlogMaquinas[i].descricaoLog == "BytesEnviados") {
                    pacotesEnviados.push(listarlogMaquinas[i].valor)
                    if (pacotesEnviados.length >= 7) {
                        pacotesEnviados.shift()
                    }

                }
                else if (listarlogMaquinas[i].descricaoLog == "BytesRecebidos") {
                    pacotesRecebidos.push(listarlogMaquinas[i].valor)
                    if (pacotesRecebidos.length >= 7) {
                        pacotesRecebidos.shift()
                    }

                }
                else if (listarlogMaquinas[i].descricaoLog == "Armazenamento Total") {
                    ArmazenamentoTotal = listarlogMaquinas[i].valor
                }

                const enviados = document.getElementById('Rede-enviados')
                var MbEnviados = pacotesEnviados[pacotesEnviados.length - 1];
                enviados.innerHTML = `<p>Enviados</p>
                <p ><strong >${MbEnviados}Mb</strong></p>`;

                const recebidos = document.getElementById('Rede-recebidos')
                var MbRecebidos = pacotesRecebidos[pacotesRecebidos.length - 1];
                recebidos.innerHTML = `<p>Recebidos</p>
                <p ><strong >${MbRecebidos}Mb</strong></p>`;

                const perda = document.getElementById('Rede-perdidos')
                var perdidos = perdaPacotes[perdaPacotes.length - 1];
                perda.innerHTML = `<p>Perdidos</p>
                <p ><strong >${perdidos}Mb</strong></p>`


                const ramUso = document.getElementById('USO-RAM')
                var RamEmUso = listaRam[listaRam.length - 1];
                ramUso.innerHTML = `<p>Em uso</p>
                <p ><strong >${RamEmUso}Gb</strong></p>`;



                const memoriaUso = document.getElementById('USO-MEMORIA')
                var MemoriaEmUso = listaMemoria[listaMemoria.length - 1];
                memoriaUso.innerHTML = `<p>Em uso</p>
                <p ><strong >${MemoriaEmUso}Gb</strong></p>`;

                const porcentagemRam = document.getElementById('porcentagemRAM')
                var RamPorcentagem = RamEmUso / ramTOTAL * 100;
                porcentagemRam.innerHTML = `<p>RAM</p>
                <p><strong>${RamPorcentagem.toFixed(0)}%</strong> </p>`

                const porcentagemMemoria = document.getElementById('porcentagemMemoria')
                var MemoriaPorcentagem = MemoriaEmUso / memoriaTOTAL * 100;
                porcentagemMemoria.innerHTML = `<p>MEM</p>
                <p><strong>${MemoriaPorcentagem.toFixed(0)}%</strong> </p>`



                const usoCPU = document.getElementById('USO-CPU')
                var usoAtualCPU = listaCPU[listaCPU.length - 1]
                usoCPU.innerHTML = ` <p>CPU</p>
                                <p><strong>${usoAtualCPU}%</strong> </p>`

                const velocidade = document.getElementById('velocidade-CPU')
                velocidade.innerHTML = ` <p>Velocidade</p>
                <p><strong>${listaVelocidade}Ghz</strong> </p>`



                meuGrafico.update()
                meuGrafico2.update()
                meuGrafico3.update()
                meuGrafico4.update()

            }



            console.log("AQUI NA RESPOSTA RYAN")



        })
        .catch(function (error) {
            console.log("AQUI NO ERRO RYAN")
            console.log("Erro!: ", error)
        })



}

// setInterval(() => {

//     listandologMaquinas();


// }, 2000);


function overview(tipoComp) {
   

    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA'); // Obtém a empresa do sessionStorage
    var tipoComponente = tipoComp;

    alert(`TIPO COMPONENTE: ${tipoComp}`);

    // Remove o '}' extra da URL
    fetch(`/maquinas/overview/${fkEmpresa}?tipoComponente=${tipoComponente}`, {
        method: 'GET',
        headers: { "Content-Type": "application/json" },
    })
        .then(function (resposta) {
            if (resposta.ok) {
                return resposta.json(); // Converte para JSON se a resposta for bem-sucedida
            } else {
                throw new Error("Erro na resposta da API");
            }
        })
        .then(function (log) {
            console.log("Dados recebidos:", log);
            // Aqui você pode processar os dados recebidos
        })
        .catch(function (error) {
            console.log("Erro ao executar overview");
            console.log("Detalhes do erro:", error);
        });
}

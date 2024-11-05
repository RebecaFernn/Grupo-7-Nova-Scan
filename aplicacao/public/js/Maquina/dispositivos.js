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

function contarMaquinas() {
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
            console.log("Maquinas encontradas: ", listaMaquinas)

            var maquinasOk = 0
            var totalMaquinas = 0
            var maquinasCriticas = 0

            for (var i = 0; i < listaMaquinas.length; i++) {

                totalMaquinas++

                if (listaMaquinas[i].alerta == 0) {
                    maquinasOk++
                }
                else {
                    maquinasCriticas++
                }
            }
            overviewMaquinas(maquinasOk, maquinasCriticas, totalMaquinas)
        })
        .catch(function (error) {
            console.log("Erro!: ", error)
        })
}

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

function overviewSelect(){

    fkEmpresa = sessionStorage.getItem('FK_EMPRESA')
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
            console.log("Maquinas encontradas: ", listaMaquinas)
            let selectMaquinas = ""
            selectMaquinas = `<option selected value="#">Seleciona a máquina que deseja visualizar</option>`
            for (var i = 0; i < listaMaquinas.length; i++) {
                selectMaquinas += `
                    <option value="${listaMaquinas[i].id}">${listaMaquinas[i].nome}</option>
                `
                const elementoPai = document.getElementById('select-maquina');
                elementoPai.innerHTML += selectMaquinas;
                console.log(elementoPai);
            }
        })
        .catch(function (error) {
            console.log("Erro!: ", error)
        })
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
                <p> <strong>Total Mémoria Ram Total: </strong> ${valores[0].valor} GB</p>
                <p> <strong>Total Armazenamento Total: </strong> ${valores[1].valor}GB</p>
            `
            elementoPai.innerHTML += componentes;
            console.log(elementoPai);
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
                    <div class="top-low">
                        <p><strong>Máximo do Intervalo:</strong> ${listaAlertas[i].maxIntervalo}</p>
                        <p><strong>Minimo do Intervalo:</strong> ${listaAlertas[i].minIntervalo}</p>
                        <p><strong>Tipo do Componente:</strong> ${listaAlertas[i].tipo}</p>
                    </div>
                `
                }
                else if (listaAlertas[i].tipo == "Mémoria") {
                    alertas += `
                        <div class="mid-low">
                            <p><strong>Máximo do Intervalo:</strong> ${listaAlertas[i].maxIntervalo}</p>
                            <p><strong>Minimo do Intervalo:</strong> ${listaAlertas[i].minIntervalo}</p>
                            <p><strong>Tipo do Componente:</strong> ${listaAlertas[i].tipo}</p>
                        </div>
                    `
                }
                else if (listaAlertas[i].tipo == "Armazenamento") {
                    alertas += `
                        <div class="low-low">
                            <p><strong>Máximo do Intervalo:</strong> ${listaAlertas[i].maxIntervalo}</p>
                            <p><strong>Minimo do Intervalo:</strong> ${listaAlertas[i].minIntervalo}</p>
                            <p><strong>Tipo do Componente:</strong> ${listaAlertas[i].tipo}</p>
                        </div>
                    `
                }
                else {
                    alertas += `
                        <div class="low-low">
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
            const elementoPai = document.getElementById('right-informacoes');
            elementoPai.innerHTML = "";

            let alertasDisparados = ""

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

                if (listaAlertasDisparado[i].tipo == "Processador") {
                    alertasDisparados += `
                <div class="BoxAlertaUso" onclick = "visualizarGraficoAlerta()">
                    <img src="./img/alertwhite.svg" alt="">
                    <p>${listaAlertasDisparado[i].descricao}: ${listaAlertasDisparado[i].valor}% <br> ${dataFormatada}</p>
                </div>
            `
                }
                else if (listaAlertasDisparado[i].tipo == "Memória") {
                    alertasDisparados += `
                <div class="BoxAlertaUso" onclick = "visualizarGraficoAlerta()">
                    <img src="./img/alertwhite.svg" alt="">
                    <p>${listaAlertasDisparado[i].descricao}: ${listaAlertasDisparado[i].valor} GB <br> ${dataFormatada}</p>
                </div>
            `
                }
                else if (listaAlertasDisparado[i].tipo == "Armazenamento") {
                    alertasDisparados += `
                <div class="BoxAlertaUso" onclick = "visualizarGraficoAlerta()">
                    <img src="./img/alertwhite.svg" alt="">
                    <p>${listaAlertasDisparado[i].descricao}: ${listaAlertasDisparado[i].valor} GB <br> ${dataFormatada}</p>
                </div>
            `
                }
                else {
                    alertasDisparados += `
                <div class="BoxAlertaUso" onclick = "visualizarGraficoAlerta()">
                    <img src="./img/alertwhite.svg" alt="">
                    <p>${listaAlertasDisparado[i].descricao}: ${listaAlertasDisparado[i].valor}% <br> ${dataFormatada}</p>
                </div>
            `
                }

            }

            elementoPai.innerHTML += alertasDisparados
        })
        .catch(function (error) {
            console.log("Erro!: ", error)
        })
}

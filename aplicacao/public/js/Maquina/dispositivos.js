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
            console.log("Maquinas encontradas: ", listaMaquinas)
            let maquinas
            for (var i = 0; i < listaMaquinas.length; i++) {

                if (listaMaquinas[i].situacao == "Ativo") {
                    maquinas = `
                    <div class="maquinasOK" onclick="maquina(${listaMaquinas[i].id})">
                        <p>${listaMaquinas[i].nome}</p>
                        <img src="./img/ok.svg" class="imgMaquina" alt="">
                    </div>`;
                }
                else if (listaMaquinas[i].situacao == "Inativo") {
                    maquinas = `
                    <div class="maquinasInativa" onclick="maquina(${listaMaquinas[i].id})">
                        <p>${listaMaquinas[i].nome}</p>
                        <img src="./img/inativo.svg" class="imgMaquina" alt="">
                     </div>
                    `
                }
                // Tem que ter mais uma validação para ver se a máquina entrou em estado de alerta
                const elementoPai = document.getElementById('boxmaquinas');
                elementoPai.innerHTML += maquinas;
                console.log(elementoPai);
            }
        })
        .catch(function (error) {
            console.log("Erro!: ", error)
        })
}

var idDispositivo;

// Função para abrir o modal de informações da máquina
function maquina(id) {
    const fundoInformacoesmaquina = document.getElementById('fundoInformacoesmaquina');
    fundoInformacoesmaquina.style.display = 'flex';

    idDispositivo = id;
    componentesDispositivo();
    valoresComponentes();
    listandoAlertasMaquinas();
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
        method: 'PATCH',
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
        method: 'PATCH',
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
            let alertas
            for (var i = 0; i < listaAlertas.length; i++) {
                console.log(listaAlertas[i])
                if (listaAlertas[i].tipo == "Processador") {
                    alertas += `
                    <div class="top-low">
                        <p><strong>Intervalo Máximo:</strong> ${listaAlertas[i].maxIntervalo}</p>
                        <p><strong>Intervalo Minimo:</strong> ${listaAlertas[i].minIntervalo}</p>
                        <p><strong>Tipo Componente:</strong> ${listaAlertas[i].tipo}</p>
                    </div>
                `
                }
                else if (listaAlertas[i].tipo == "Mémoria") {
                    alertas += `
                        <div class="mid-low">
                            <p><strong>Intervalo Máximo:</strong> ${listaAlertas[i].maxIntervalo}</p>
                            <p><strong>Intervalo Minimo:</strong> ${listaAlertas[i].minIntervalo}</p>
                            <p><strong>Tipo Componente:</strong> ${listaAlertas[i].tipo}</p>
                        </div>
                    `
                }
                else if (listaAlertas[i].tipo == "Armazenamento") {
                    alertas += `
                        <div class="low-low">
                            <p><strong>Intervalo Máximo:</strong> ${listaAlertas[i].maxIntervalo}</p>
                            <p><strong>Intervalo Minimo:</strong> ${listaAlertas[i].minIntervalo}</p>
                            <p><strong>Tipo Componente:</strong> ${listaAlertas[i].tipo}</p>
                        </div>
                    `
                }
                else{
                    alertas += `
                        <div class="low-low">
                            <p><strong>Intervalo Máximo:</strong> ${listaAlertas[i].maxIntervalo}</p>
                            <p><strong>Intervalo Minimo:</strong> ${listaAlertas[i].minIntervalo}</p>
                            <p><strong>Tipo Componente:</strong> ${listaAlertas[i].tipo}</p>
                        </div>
                    `
                }
            }
            const elementoPai = document.getElementById('low-info');
            elementoPai.innerHTML += alertas
            console.log(elementoPai)
        })
        .catch(function (error) {
            console.log("Erro!: ", error)
        })
}

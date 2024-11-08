//Listando as máquinas da empresa
function listarMaquinas() {
    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')
    fetch(`/maquinas/listaSelect/${fkEmpresa}`, {
        method: 'GET',
        headers: { "Content-Type": "application/json" },
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

            //colocando as máquinas encontradas dentro do select
            let nomeMaquina = `<option selected value="">Selecione a máquina que deseja atribuir</option>`
            const elementoPai = document.getElementById('comboBoxMaquinas')

            for (i = 0; i < listaMaquinas.length; i++) {
                nomeMaquina += `
                <option value="${listaMaquinas[i].id}">${listaMaquinas[i].nome}</option>
            `
            }
            elementoPai.innerHTML = nomeMaquina;
            console.log(elementoPai);

        })
        .catch(function (error) {
            console.log("Erro!: ", error)
        })
}

//Listando os componentes da máquina no select
var listaGlobalComponentes = []

function listarComponentes() {
    var idSelecionado = comboBoxMaquinas.value
    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')

    fetch(`/alertas/listaComponentes/${fkEmpresa}?idSelecionado=${idSelecionado}`, {
        method: 'GET',
        headers: { "Content-Type": "application/json" },
    })
        .then(function (resposta) {
            return resposta.json()
        })
        .then(function (listaComponentes) {
            console.log("Componentes encontrados: ", listaComponentes)

            //colocando as máquinas encontradas dentro do select
            let nomeComponentes = `<option selected value="">Selecione seu componente</option>`
            const elementoPai = document.getElementById('comboBoxComponentes')

            for (i = 0; i < listaComponentes.length; i++) {
                nomeComponentes += `
                <option value="${listaComponentes[i].idComponente}">${listaComponentes[i].nomeComponente}</option>
            `
            }
            elementoPai.innerHTML = nomeComponentes;
            console.log(elementoPai);

            listaGlobalComponentes = listaComponentes
        })
        .catch(function (error) {
            console.log("Erro ao buscar os componentes: ", error)
        })
}

function listarTipoAlertaComponente() {

    var idSelecionado = comboBoxComponentes.value

    console.log("Componente selecionado: ", idSelecionado)
    console.log("Retorno da função lista global: ", listaGlobalComponentes)

    fetch(`/alertas/listarTipoAlertaComponente/`, {
        method: 'GET',
        headers: { "Content-Type": "application/json" },
    })
        .then(function (resposta) {
            return resposta.json()
        })
        .then(function (tipoAlerta) {
            console.log("Tipo de alerta encontrado: ", tipoAlerta)

            const elementoPai = document.getElementById('comboBoxTipoAlertaComponente')
            let tipo = `<option selected value="">Selecione o tipo de alerta</option>`

            for (i = 0; i < tipoAlerta.length; i++) {

                for (a = 0; a < listaGlobalComponentes.length; a++) {

                    if (listaGlobalComponentes[a].idComponente == idSelecionado && listaGlobalComponentes[a].nomeComponente == "Processador") {
                        tipo = `
                            <option value="${tipoAlerta[0].id}">${tipoAlerta[0].tipo}</option>
                            <option value="${tipoAlerta[1].id}">${tipoAlerta[1].tipo}</option>
                            `
                    }
                    else if(listaGlobalComponentes[a].idComponente == idSelecionado && listaGlobalComponentes[a].nomeComponente == "Memória"){
                        tipo = `
                            <option value="${tipoAlerta[2].id}">${tipoAlerta[2].tipo}</option>
                            `
                    }
                    else if(listaGlobalComponentes[a].idComponente == idSelecionado && listaGlobalComponentes[a].nomeComponente == "Armazenamento"){
                        tipo = `
                            <option value="${tipoAlerta[3].id}">${tipoAlerta[3].tipo}</option>
                            `
                    }
                    else if(listaGlobalComponentes[a].idComponente == idSelecionado && listaGlobalComponentes[a].nomeComponente == "Placa de Rede"){
                        tipo = `
                            <option value="${tipoAlerta[4].id}">${tipoAlerta[4].tipo}</option>
                            <option value="${tipoAlerta[5].id}">${tipoAlerta[5].tipo}</option>
                            `
                    }
                }
            }

            elementoPai.innerHTML = tipo
            console.log(elementoPai)
        })
        .catch(function (error) {
            console.log("Erro ao buscar o tipo de alerta: ", error)
        })
}

//Função para criar o alerta
function criarAlerta() {

    var fkUsuario = sessionStorage.getItem('ID_USUARIO')
    var fkComponente = comboBoxComponentes.value
    var fkDispositivo = comboBoxMaquinas.value
    var minIntervalo = Number(input_min.value)
    var maxIntervalo = Number(input_max.value)
    var fkTipoAlerta = comboBoxTipoAlertaComponente.value

    //verificando a quantidade de alertas do usuário

    if (minIntervalo >= maxIntervalo) {
        Swal.fire({
            title: 'Intervalo mínimo maior ou igual ao intervalo máximo!',
            icon: 'error',
            showConfirmButton: false,
            timer: 2000
        })
    }
    else if (minIntervalo == "" || maxIntervalo == "") {
        Swal.fire({
            title: 'Preencha os campos de intervalo!',
            icon: 'error',
            showConfirmButton: false,
            timer: 2000
        })
    }
    else if (fkComponente == "" || fkDispositivo == "") {
        Swal.fire({
            title: 'Selecione um componente e uma máquina!',
            icon: 'error',
            showConfirmButton: false,
            timer: 2000
        })
    }
    else {
        fetch(`/alertas/criarAlerta`, {
            method: 'POST',
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
                fkUsuarioServer: fkUsuario,
                fkComponenteServer: fkComponente,
                fkDispositivoServer: fkDispositivo,
                minIntervaloServer: minIntervalo,
                maxIntervaloServer: maxIntervalo,
                fkTipoAlertaServer: fkTipoAlerta
            })
        })
            .then(function (resposta) {
                if (resposta.ok) {
                    resposta.json()
                    Swal.fire({
                        title: 'Alerta criado com sucesso!',
                        imageUrl: "img/ok.svg",
                        showConfirmButton: false,
                        timer: 2000
                    })

                    listaGlobalComponentes = []
                }
            })
            .catch(function (error) {
                console.log("Erro ao criar o alerta: ", error)
                Swal.fire({
                    title: 'Erro ao criar o alerta!',
                    icon: 'error',
                    showConfirmButton: false,
                    timer: 2000
                })
            })
    }
}

// função de contar quantos alertas o usuário tem
function qtdAlertasUsuario() {
    var fkUsuario = sessionStorage.getItem('ID_USUARIO')
    var fkDispositivo = comboBoxMaquinas.value
    var fkComponente = comboBoxComponentes.value
    var fkTipoAlerta = comboBoxTipoAlertaComponente.value

    fetch(`/alertas/qtdAlertasUsuario/${fkUsuario}?fkDispositivo=${fkDispositivo}&fkComponente=${fkComponente}&fkTipoAlerta=${fkTipoAlerta}`, {
        method: 'GET',
        headers: { "Content-Type": "application/json" },
    })
        .then(function (resposta) {
            if (resposta.ok) {
                return resposta.json()
            }
        })
        .then(function (qtd) {
            var quantidade = qtd[0].qtdAlertas

            if (quantidade >= 1) {
                Swal.fire({
                    title: 'Limites de alertas para o componente e máquina selecionado!',
                    icon: 'error',
                    showConfirmButton: false,
                    timer: 2000
                })
            }
            else {
                console.log("Quantidade de alertas: ", quantidade)
                criarAlerta()
            }
        })
        .catch(function (error) {
            console.log("Houve um erro ao contar os alertas", error)
        })
}


// função para listar os alertas do usuario

function listarAlertas() {
    var fkUsuario = sessionStorage.getItem('ID_USUARIO')

    fetch(`/alertas/listaAlertas/${fkUsuario}`, {
        method: 'GET',
        headers: { "Content-Type": "application/json" },
    })
        .then(function (resposta) {
            if (resposta.ok) {
                return resposta.json()
            }
        })
        .then(function (listaAlertas) {
            console.log("Alertas encontrados: ", listaAlertas)
            const elementoPai = document.getElementById('alertas')
            let alertas = ""
            for (i = 0; i < listaAlertas.length; i++) {
                alertas += `
                <div class="box-colaboradores">
                    <div class="nome" id="nome">${listaAlertas[i].NomeMaquina}</div>
                    <div class="email" id="email">${listaAlertas[i].minIntervalo}</div>
                    <div class="cargo" id="cargo">${listaAlertas[i].maxIntervalo}</div>
                    <div class="administrador" id="administrador">${listaAlertas[i].tipoComponente}</div>
                    <div class="administrador" id="administrador">${listaAlertas[i].tipoAlerta}</div>
                    <button id="editar" onclick="abrirEditar(${listaAlertas[i].idAlerta})"> <img src="./img/editar.svg" alt=""> </button>
                    <button id="deletar" onclick="excluirAlerta(${listaAlertas[i].idAlerta})"> <img src="./img/delete.svg" alt=""></button>
                </div>
            `
            }
            elementoPai.innerHTML += alertas
            console.log(elementoPai)
        })
        .catch(function (error) {
            console.log("Houve um erro ao listar os alertas", error)
        })
}

// função para excluir o alerta
function excluirAlerta(id) {
    var idAlerta = id
    fetch(`/alertas/excluirAlerta/${idAlerta}`, {
        method: 'DELETE',
        headers: { "Content-Type": "application/json" },
    })
        .then(function (resposta) {
            if (resposta.ok) {
                resposta.json()
                console.log("Alerta excluido com sucesso!")
                Swal.fire({
                    title: 'Alerta excluido com sucesso!',
                    imageUrl: "img/ok.svg",
                    showConfirmButton: false,
                    timer: 2000
                })
                setTimeout(function () {
                    atualizarPagina();
                }, 2000)
            }
        })
        .catch(function (error) {
            console.log("Erro ao excluir o alerta: ", error)
            Swal.fire({
                title: 'Erro ao excluir o alerta!',
                icon: 'error',
                showConfirmButton: false,
                timer: 2000
            })
        })
}

var idAlerta = 0

function abrirEditar(id) {
    const fundoEditar = document.getElementById('fundoEditar')
    fundoEditar.style.display = 'flex'
    idAlerta = id
}

function editarAlerta() {
    var minIntervalo = Number(min1.value)
    var maxIntervalo = Number(max1.value)
    var idUsuario = sessionStorage.getItem('ID_USUARIO')

    fetch(`/alertas/editarAlerta`, {
        method: 'PATCH',
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
            minIntervaloServer: minIntervalo,
            maxIntervaloServer: maxIntervalo,
            idUsuarioServer: idUsuario,
            idAlertaServer: idAlerta
        })
    })
        .then(function (resposta) {
            if (resposta.ok) {
                resposta.json()
                Swal.fire({
                    title: 'Alerta editado com sucesso!',
                    imageUrl: "img/ok.svg",
                    showConfirmButton: false,
                    timer: 2000
                })
                setTimeout(function () {
                    atualizarPagina();
                }, 2000)
            }
        })
        .catch(function (error) {
            console.log("Erro ao editar o alerta: ", error)
            Swal.fire({
                title: 'Erro ao editar o alerta!',
                icon: 'error',
                showConfirmButton: false,
                timer: 2000
            })
        })
}
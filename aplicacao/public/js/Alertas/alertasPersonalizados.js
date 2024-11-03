//Listando as máquinas da empresa
function listarMaquinas() {
    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')
    fetch(`/maquinas/lista/${fkEmpresa}`, {
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

        })
}

//Função para criar o alerta
function criarAlerta() {

    var fkUsuario = sessionStorage.getItem('ID_USUARIO')
    var fkComponente = comboBoxComponentes.value
    var fkDispositivo = comboBoxMaquinas.value
    var minIntervalo = Number(input_min.value)
    var maxIntervalo = Number(input_max.value)

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
                maxIntervaloServer: maxIntervalo
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

    fetch(`/alertas/qtdAlertasUsuario/${fkUsuario}?fkDispositivo=${fkDispositivo}&fkComponente=${fkComponente}`, {
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
                    <div class="administrador" id="administrador">${listaAlertas[i].tipo}</div>
                    <button id="editar" onclick="abrirEditar()"> <img src="./img/editar.svg" alt=""> </button>
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
                }, 3000)
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
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
                icons: 'error',
                showConfirmButton: false,
                timer: 2000
            })
        })
}
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
                    <div class="maquinasOK" onclick="maquina()">
                        <p>${listaMaquinas[i].nome}</p>
                        <img src="./img/ok.svg" class="imgMaquina" alt="">
                    </div>`;
                }
                else if (listaMaquinas[i].situacao == "Inativo") {
                    maquinas = `
                    <div class="maquinasInativa" onclick="maquina()">
                        <p>${listaMaquinas[i].nome}</p>
                        <img src="./img/inativo.svg" class="imgMaquina" alt="">
                     </div>
                    `
                }
                const elementoPai = document.getElementById('boxmaquinas');
                elementoPai.innerHTML += maquinas;
                console.log(elementoPai);
            }
        })
        .catch(function (error) {
            console.log("Erro!: ", error)
        })
}

function atualizarNomeDispositivo() {
    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')
    var idDispositivo = sessionStorage.getItem('ID_DISPOSITIVO')
    var novoNome = nome_input.value

    fetch(`/maquinas/atualizarNome/${fkEmpresa}?idDispositivo=${idDispositivo}`, {
        method: 'POST',
        headers: { contentType: 'application/json' },
        body: JSON.stringify({
            nomeServer: novoNome
        })
    })
        .then(function (resposta) {
            if (resposta.ok) {
                resposta.json()
                console.log("Nome atualizado com sucesso")
            }
        })
        .catch(function (error) {
            console.log("Erro!: ", error)
        })
}

function atualizarStatus() {
    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')
    var idDispositivo = sessionStorage.getItem('ID_DISPOSITIVO')
    var status = status_dispositivo.value

    fetch(`/maquinas/atualizarStatus/${fkEmpresa}?idDispositivo=${idDispositivo}`, {
        method: 'POST',
        headers: { contentType: 'application/json' },
        body: JSON.stringify({
            statusServer: status
        })
    })
        .then(function (resposta) {
            if (resposta.ok) {
                resposta.json()
                console.log("Status atualizado com sucesso")
            }
        })
        .catch(function (error) {
            console.log("Erro!: ", error)
        })
}

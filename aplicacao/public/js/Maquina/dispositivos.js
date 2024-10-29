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
}

function componentesDispositivo(){
    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')

    fetch(`/maquinas/componentes/${fkEmpresa}?idDispositivo=${idDispositivo}`,{
        method: 'GET',
        headers: { "Content-Type": "application/json"},
    })
    .then(function(resposta){
        if(resposta.ok){
           return resposta.json()
        }
    })
    .then(function(listaComponente){
        console.log("Componentes encontrados: ", listaComponente)
        const elementoPai = document.getElementById('top-info');
        elementoPai.innerHTML = "";
        let componentes
            componentes = `
                <p> <strong>Nome da máquina:</strong> ${listaComponente[0].nomeMaquina}</p>
                <p> <strong>Processador:</strong> ${listaComponente[5].nomeComponente}</p>
                <p> <strong>Total Mémoria Ram Total:</strong> ${listaComponente[3].valor} GB</p>
                <p> <strong>Total Armazenamento Total:</strong> ${listaComponente[2].valor}GB</p>
            `
            elementoPai.innerHTML += componentes;
            console.log(elementoPai);
    })
    .catch(function(error){
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

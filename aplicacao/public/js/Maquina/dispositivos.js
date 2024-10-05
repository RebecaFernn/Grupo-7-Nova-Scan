function ListarEmpresa(){
    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')
    fetch(`/maquinas/lista/${fkEmpresa}`,{
        method: 'GET',
        headers: {contentType: 'application/json'},
    })
    .then(function(resposta){
        if(resposta.ok){
            resposta.json()
            console.log("Maquinas encontradas: ", resposta)
        }
        else{
            console.log("Houve um problema ao buscar as maquinas")
        }
    })
    .catch(function(error){
        console.log("Erro!: ", error)
    })
}

function atualizarNomeDispositivo(){
    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')
    var idDispositivo = sessionStorage.getItem('ID_DISPOSITIVO')
    var novoNome = nome_dispositivo.value

    fetch(`/maquinas/atualizarNome/${fkEmpresa}?idDispositivo=${idDispositivo}`,{
        method: 'POST',
        headers: {contentType: 'application/json'},
        body: JSON.stringify({
            nomeServer: novoNome
        })
    })
    .then(function(resposta){
        if(resposta.ok){
            resposta.json()
            console.log("Nome atualizado com sucesso")
        }
    })
    .catch(function(error){
        console.log("Erro!: ", error)
    })
}
    
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
    
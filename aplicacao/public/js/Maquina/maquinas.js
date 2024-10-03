function ListarEmpresa(){

    var fkEmpresa = sessionStorage.getItem('FK_EMPRESA')
    fetch('/maquinas/lista/${fkEmpresa}')
}
    
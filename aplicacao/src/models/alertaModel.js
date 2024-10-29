var database = require("../database/config");


function listaComponentes(fkEmpresa, id) {
    console.log("ACESSEI O ALERTA MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listarComponentes():");
    console.log("Inserindo na tabela usuario:", fkEmpresa, id);

    var instrucaoSql = `SELECT c.id as idComponente, c.tipo as nomeComponente FROM componente AS c JOIN dispositivo as d
ON c.fkDispositivo = d.id
JOIN empresa as e
ON d.fkEmpresa = e.id
WHERE d.id = ${id} AND e.id = ${fkEmpresa};`
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function criarAlerta(fkUsuario, fkComponente, fkDispositivo, minIntervalo, maxIntervalo) {
    console.log("ACESSEI O ALERTA MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function criarAlerta():");
    console.log("Inserindo na tabela usuario:", fkUsuario, fkComponente, fkDispositivo, minIntervalo, maxIntervalo);

    var instrucaoSql = `INSERT INTO alerta (minIntervalo, maxIntervalo, fkUsuario, fkComponente, fkDispositivo) VALUES (${minIntervalo}, ${maxIntervalo}, ${fkUsuario}, ${fkComponente}, ${fkDispositivo});`

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = { listaComponentes, criarAlerta };
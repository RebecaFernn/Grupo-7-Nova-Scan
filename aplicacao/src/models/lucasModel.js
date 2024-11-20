var database = require("../database/config")

function bootTime(fkEmpresa) {
    console.log("Executando a função bootTime()")
    var instrucaoSql = `
        SELECT d.id, d.nome, ta.bootTime FROM dispositivo as d JOIN tempoAtividade as ta
ON d.id = ta.fkDispositivo
JOIN empresa as e
ON d.fkEmpresa = e.id
WHERE e.id = ${fkEmpresa};

    `
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    bootTime
}
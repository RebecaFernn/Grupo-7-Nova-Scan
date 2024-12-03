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

function dadosGraficoRosquinha(fkEmpresa) {
    console.log("Executando a função dadosGraficoRosquinha()")
    var instrucaoSql = `
    SELECT descricao AS Descrição_Alerta, COUNT(*) AS Quantidade_Alertas FROM baseLK 
JOIN dispositivo as d
ON baseLK.fkDispositivo = d.id 
JOIN empresa as e
ON d.fkEmpresa = e.id
WHERE 
    eAlerta = 1 
    AND dataHora >= DATE_SUB(NOW(), INTERVAL 1 WEEK)
    AND e.id = ${fkEmpresa}
GROUP BY 
    descricao
ORDER BY 
    Quantidade_Alertas DESC;

    `
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function dadosKpiAlerta(fkEmpresa) {
    console.log("Executando a função dadosGraficoRosquinha()")
    var instrucaoSql = `
    SELECT count(*) as alertasGerados FROM baseLK as l
JOIN dispositivo as d
ON l.fkDispositivo = d.id
JOIN empresa as e
ON d.fkEmpresa = e.id
WHERE l.eAlerta = 1 
AND l.dataHora >= DATE_SUB(NOW(), INTERVAL 1 WEEK)
AND e.id = ${fkEmpresa};
    `
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function tempoTotal(fkEmpresa) {
    console.log("Executando a função tempoTotal()")
    var instrucaoSql = `
    SELECT ta.bootTime, d.nome FROM tempoAtividade as ta JOIN dispositivo as d 
ON ta.fkDispositivo = d.id
WHERE fkEmpresa = ${fkEmpresa};
    `
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function qtdAlertasPorMaquina(fkEmpresa) {
    console.log("Executando a função qtdAlertasPorMaquina()")
    var instrucaoSql = `
    SELECT count(l.eAlerta) as quantidade_alerta FROM baseLK as l JOIN dispositivo as d
ON l.fkDispositivo = d.id
JOIN empresa as e 
ON d.fkEmpresa = e.id
WHERE e.id = ${fkEmpresa}
GROUP BY d.id;
    `
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    bootTime,
    dadosGraficoRosquinha,
    dadosKpiAlerta,
    tempoTotal,
    qtdAlertasPorMaquina
}
var database = require("../database/config");

function grafico(inicio, fim, idEmpresa, tipoDispositivo) {
    // Monta a instrução SQL usando os parâmetros fornecidos
    var instrucaoSql = ` 
        SELECT 
            DATE_FORMAT(log.dataHora, '%W') AS dia_semana,
            DATE_FORMAT(log.dataHora, '%H:00') AS hora, 
            DATE_FORMAT(log.dataHora, '%Y-%m-%d') AS data,
            AVG(log.valor) AS media_valor
        FROM log
        INNER JOIN componente ON log.fkComponente = componente.id
        INNER JOIN dispositivo ON componente.fkDispositivo = dispositivo.id
        WHERE log.dataHora BETWEEN '${inicio} 00:00:00' AND '${fim} 23:59:59'
            AND componente.tipo = '${tipoDispositivo}'
            AND dispositivo.fkEmpresa = ${idEmpresa}
        GROUP BY 
            DATE_FORMAT(log.dataHora, '%W'),
            DATE_FORMAT(log.dataHora, '%H:00'),
            DATE_FORMAT(log.dataHora, '%Y-%m-%d')
        ORDER BY 
            DATE_FORMAT(log.dataHora, '%Y-%m-%d') DESC, 
            hora ASC;
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function grafico2(idEmpresa, tipoDispositivo, day) {
    // Monta o select ainda
    var instrucaoSql = ` 
        SELECT 
            DATE_FORMAT(log.dataHora, '%H:00') AS hora, 
            MIN(log.valor) AS minimo,
            MAX(log.valor) AS maximo
        FROM log
        INNER JOIN componente ON log.fkComponente = componente.id
        INNER JOIN dispositivo ON componente.fkDispositivo = dispositivo.id
        WHERE 
            componente.tipo = '${tipoDispositivo}'
            AND dispositivo.fkEmpresa = '${idEmpresa}'
            AND log.dataHora BETWEEN '${day} 00:00:00' AND '${day} 23:59:59' 
        GROUP BY 
            DATE_FORMAT(log.dataHora, '%H:00')
        ORDER BY 
        hora ASC;
            
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function KPI1(day, idEmpresa, tipoDispositivo) {
    // Monta a instrução SQL usando os parâmetros fornecidos
    var instrucaoSql = ` 
        SELECT 
       
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function KPI2(day, idEmpresa, tipoDispositivo) {
    // Monta a instrução SQL usando os parâmetros fornecidos
    var instrucaoSql = ` 
        SELECT 
       
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function KPI3(day, idEmpresa, tipoDispositivo) {
    // Monta a instrução SQL usando os parâmetros fornecidos
    var instrucaoSql = ` 
        SELECT 
       
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    grafico,
    grafico2,
    KPI1,
    KPI2,
    KPI3
};

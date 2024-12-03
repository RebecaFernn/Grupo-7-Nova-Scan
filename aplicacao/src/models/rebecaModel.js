var database = require("../database/config");

function grafico(inicio, fim, idEmpresa, tipoDispositivo) {
    // Monta a instrução SQL usando os parâmetros fornecidos
    var instrucaoSql = ` 
        SELECT 
            DATE_FORMAT(baseR.dataHora, '%W') AS dia_semana,
            DATE_FORMAT(baseR.dataHora, '%H:00') AS hora, 
            DATE_FORMAT(baseR.dataHora, '%Y-%m-%d') AS data,
            AVG(baseR.valor) AS media_valor
        FROM log
        INNER JOIN componente ON baseR.fkComponente = componente.id
        INNER JOIN dispositivo ON componente.fkDispositivo = dispositivo.id
        WHERE baseR.dataHora BETWEEN '${inicio} 00:00:00' AND '${fim} 23:59:59'
            AND baseR.descricao = '${tipoDispositivo}'
            AND dispositivo.fkEmpresa = ${idEmpresa}
        GROUP BY 
            DATE_FORMAT(baseR.dataHora, '%W'),
            DATE_FORMAT(baseR.dataHora, '%H:00'),
            DATE_FORMAT(baseR.dataHora, '%Y-%m-%d')
        ORDER BY 
            DATE_FORMAT(baseR.dataHora, '%Y-%m-%d') DESC, 
            hora ASC;
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function grafico2(idEmpresa, tipoDispositivo, day) {
    // Monta o select ainda
    var instrucaoSql = ` 
        SELECT 
            DATE_FORMAT(baseR.dataHora, '%H:00') AS hora, 
            MIN(baseR.valor) AS minimo,
            MAX(baseR.valor) AS maximo
        FROM log
        INNER JOIN componente ON baseR.fkComponente = componente.id
        INNER JOIN dispositivo ON componente.fkDispositivo = dispositivo.id
        WHERE 
            baseR.descricao = '${tipoDispositivo}'
            AND dispositivo.fkEmpresa = '${idEmpresa}'
            AND baseR.dataHora BETWEEN '${day} 00:00:00' AND '${day} 23:59:59' 
        GROUP BY 
            DATE_FORMAT(baseR.dataHora, '%H:00')
        ORDER BY 
        hora ASC;
            
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function KPI1(inicio, fim, idEmpresa, tipoDispositivo) {
    // Monta a instrução SQL usando os parâmetros fornecidos
    var instrucaoSql = ` 
        SELECT 
            DATE_FORMAT(baseR.dataHora, '%H:00') AS hora,
            MAX(baseR.valor) AS maximo
        FROM log
        INNER JOIN componente ON baseR.fkComponente = componente.id
        INNER JOIN dispositivo ON componente.fkDispositivo = dispositivo.id
        WHERE 
            baseR.descricao = '${tipoDispositivo}'
            AND dispositivo.fkEmpresa = '${idEmpresa}'
            AND baseR.dataHora BETWEEN '${inicio} 00:00:00' AND '${fim} 23:59:59'
        GROUP BY 
            DATE_FORMAT(baseR.dataHora, '%H:00')
        ORDER BY 
            maximo DESC
        LIMIT 1;

       
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function KPI2(inicio, fim, idEmpresa, tipoDispositivo) {
    // Monta a instrução SQL usando os parâmetros fornecidos
    var instrucaoSql = ` 
        SELECT 
            DATE_FORMAT(baseR.dataHora, '%H:00') AS hora,
            MIN(baseR.valor) AS minimo
        FROM log
        INNER JOIN componente ON baseR.fkComponente = componente.id
        INNER JOIN dispositivo ON componente.fkDispositivo = dispositivo.id
        WHERE 
            baseR.descricao = '${tipoDispositivo}'
            AND dispositivo.fkEmpresa = '${idEmpresa}'
            AND baseR.dataHora BETWEEN '${inicio} 00:00:00' AND '${fim} 23:59:59'
        GROUP BY 
            DATE_FORMAT(baseR.dataHora, '%H:00')
        ORDER BY 
            minimo ASC
LIMIT 1;

       
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function KPI3(inicio, fim, idEmpresa, tipoDispositivo) {
    // Monta a instrução SQL usando os parâmetros fornecidos
    var instrucaoSql = ` 
        SELECT 
            ROUND(AVG(baseR.valor), 2) AS media_diaria
        FROM log
        INNER JOIN componente ON baseR.fkComponente = componente.id
        INNER JOIN dispositivo ON componente.fkDispositivo = dispositivo.id
        WHERE 
            baseR.descricao = '${tipoDispositivo}'
            AND dispositivo.fkEmpresa = '${idEmpresa}'
            AND baseR.dataHora BETWEEN '${inicio} 00:00:00' AND '${fim} 23:59:59';

       
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

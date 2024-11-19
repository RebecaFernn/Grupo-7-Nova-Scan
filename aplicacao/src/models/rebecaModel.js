var database = require("../database/config");

function grafico(idEmpresa, tipoDispositivo) {
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
        WHERE log.dataHora BETWEEN '2024-11-03 00:00:00' AND '2024-11-09 23:59:59'
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

module.exports = {
    grafico
};

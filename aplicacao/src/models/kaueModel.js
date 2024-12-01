var database = require("../database/config")
function graficopacotes(nomeMaquina) {
    var instrucaoSql = `
         SELECT descricao, valor 
        FROM log as l 
        JOIN dispositivo as d ON l.fkDispositivo = d.id
        WHERE d.nome = '${nomeMaquina}' 
        AND descricao IN ('BytesRecebidos', 'BytesEnviados');
    `;
    console.log("Executando a instrução SQL:\n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
function graficoperda(nomeMaquina){
    var instrucaoSql = `   SELECT descricao, valor 
        FROM log as l 
        JOIN dispositivo as d ON l.fkDispositivo = d.id
        WHERE d.nome = '${nomeMaquina}'
        AND descricao = 'Perda de Pacotes' ;
    `;
    console.log("Executando a instrução SQL: \n"+ instrucaoSql);
    return database.executar(instrucaoSql);
}
function listamaquina(fkEmpresa){
    var instrucaoSql = `
    SELECT d.nome, l.descricao, sum(l.valor) as valor FROM log as l JOIN dispositivo as d
ON l.fkDispositivo = d.id
JOIN empresa as e
ON d.fkEmpresa = d.id
WHERE e.id = ${fkEmpresa}
AND l.descricao IN ( 'BytesEnviados', 'BytesRecebidos')
GROUP BY d.nome, l.descricao;
    `;
    console.log("Executando a instrução SQL: \n"+ instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    graficopacotes,
    graficoperda,
    listamaquina
};

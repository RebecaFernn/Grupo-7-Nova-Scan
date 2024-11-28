var database = require("../database/config")
function graficopacotes() {
    var instrucaoSql = `
        SELECT descricao, valor 
        FROM log 
        WHERE descricao IN ('BytesRecebidos', 'BytesEnviados');
    `;
    console.log("Executando a instrução SQL:\n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
function graficoperda(){
    var instrucaoSql = `SELECT valor, descricao 
    FROM log 
    WHERE descricao = "Perda de Pacotes";
    `;
    console.log("Executando a instrução SQL: \n"+ instrucaoSql);
    return database.executar(instrucaoSql);
}
function listamaquina(fkEm){
    var instrucaoSql = `
    SELECT d.id, d.nome, ta.bootTime FROM dispositivo as d JOIN tempoAtividade as ta
ON d.id = ta.fkDispositivo
JOIN empresa as e
ON d.fkEmpresa = e.id
WHERE e.id = ${fkEmpresa};
    `;
    console.log("Executando a instrução SQL: \n"+ instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    graficopacotes,
    graficoperda,
    listamaquina
};

var database = require("../database/config");

function graficopacoterecebido() {

    var instrucaoSql = `SELECT * FROM log WHERE descricao = "BytesRecebidos";`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}
function graficopacoteenviado(){
    var instrucaoSql = `SELECT * FROM log WHERE descricao = "BytesEnviados";`;
    
    console.log("Executando a instrução SQL: \n "+ instrucaoSql);
    return database.executar(instrucaoSql)
}
module.exports = {
    graficopacoterecebido,
    graficopacoteenviado
};
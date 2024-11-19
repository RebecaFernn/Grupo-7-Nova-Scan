var database = require("../database/config");

function grafico() {

    var instrucaoSql = ` 
    select * from mediaPorHorario;
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    grafico
};
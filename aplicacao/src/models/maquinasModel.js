var database = require("../database/config");

function lista() {
    // Listagem de maquians feitas mas o select pode ser alterado 
    var instrucaoSql = `SELECT * FROM dispositivo`;
  
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
  }

module.exports = { lista };
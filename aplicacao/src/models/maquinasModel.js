var database = require("../database/config");

function lista(fkEmpresa) {
    // Listagem de maquians feitas mas o select pode ser alterado 
    var instrucaoSql = `SELECT * FROM dispositivo WHERE fkEmpresa = ${fkEmpresa}`;
  
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
  }

function atualizarNome(novoNome, fkEmpresa, idDispositivo) {
  var instrucaoSql = `UPDATE dispositivo SET nome = '${novoNome}' WHERE fkEmpresa = ${fkEmpresa} AND id = ${idDispositivo}`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function atualizarStatus(status, fkEmpresa, idDispositivo) {
  var instrucaoSql = `UPDATE historicodipositivo SET fkAtividade = ${status} WHERE fkDispositivo = ${idDispositivo} AND fkEmpresa = ${fkEmpresa}`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

module.exports = { lista, atualizarNome, atualizarStatus };
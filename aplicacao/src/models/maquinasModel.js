var database = require("../database/config");

function lista(fkEmpresa) {
  console.log("Inserindo na tabela dispositivo:", fkEmpresa);
  var instrucaoSql = `SELECT * FROM listaDispositivo WHERE idEmpresa = ${fkEmpresa}`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function atualizarNome(novoNome, fkEmpresa, idDispositivo) {
  console.log("Inserindo na tabela dispositivo:", novoNome, fkEmpresa, idDispositivo);
  var instrucaoSql = `UPDATE dispositivo SET nome = '${novoNome}' WHERE fkEmpresa = ${fkEmpresa} AND id = ${idDispositivo}`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function desativarDispositivo(idDispositivo) {
  console.log("Inserindo na tabela historicoDispositivo:", idDispositivo);
  var instrucaoSql = `UPDATE historicoAtividade SET fkAtividade = 2 WHERE fkDispositivo = ${idDispositivo}`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function ativarDispositivo(idDispositivo) {
  console.log("Inserindo na tabela historicoDispositivo:", idDispositivo);
  var instrucaoSql = `UPDATE historicoAtividade SET fkAtividade = 1 WHERE fkDispositivo = ${idDispositivo}`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

module.exports = { lista, atualizarNome, desativarDispositivo, ativarDispositivo };
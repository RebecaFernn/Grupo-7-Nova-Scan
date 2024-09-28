var database = require("../database/config");

function ultimaEmpresa() {
  var instrucaoSql = `SELECT id FROM empresa ORDER BY id DESC LIMIT 1;`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function listarCnpj(cnpj) {
  var instrucaoSql = `SELECT * FROM empresa WHERE cnpj = '${cnpj}'`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function cadastrar(nomeEmpresa, cnpj) {
  var instrucaoSql = `INSERT INTO empresa (razaoSocial, cnpj) VALUES ('${nomeEmpresa}', '${cnpj}')`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

module.exports = { listarCnpj, cadastrar, ultimaEmpresa };

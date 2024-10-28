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


function componentes(fkEmpresa, fkDispositivo) {
  console.log("Inserindo na tabela dispositivo:", fkEmpresa, fkDispositivo);
  var instrucaoSql = `SELECT d.nome as nomeMaquina, c.nome as nomeComponente, c.tipo, l.valor, l.descricao FROM dispositivo as d JOIN componente as c 
ON d.id = c.fkDispositivo 
JOIN empresa as e 
ON d.fkEmpresa = e.id
JOIN log as l 
ON d.id = l.fkDispositivo
WHERE d.id = ${fkDispositivo} AND e.id = ${fkEmpresa}
AND l.descricao IN ('Armazenamento Total', 'Memória RAM Total')
GROUP BY d.nome, c.nome, c.tipo, l.descricao, l.valor;`

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

module.exports = { lista, atualizarNome, desativarDispositivo, ativarDispositivo, componentes };
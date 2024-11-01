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
  var instrucaoSql = `SELECT d.nome as nomeMaquina, c.nome as nomeProcessador, e.id FROM dispositivo as d JOIN componente as c
ON d.id = c.fkDispositivo 
JOIN empresa as e
ON e.id = d.fkEmpresa
WHERE c.fkDispositivo = ${fkDispositivo} AND e.id = ${fkEmpresa}
AND c.tipo = 'Processador';`

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}


function valoresComponentes(fkEmpresa, fkDispositivo) {
  console.log("Inserindo na tabela dispositivo:", fkEmpresa, fkDispositivo);
  var instrucaoSql = `SELECT l.valor, l.fkDispositivo, l.descricao FROM log as l JOIN dispositivo as d
ON l.fkDispositivo = d.id
JOIN empresa as e
ON d.fkEmpresa = e.id
WHERE descricao IN ('Armazenamento Total', 'Memória RAM Total') 
AND l.fkDispositivo = ${fkDispositivo}
AND e.id = ${fkEmpresa};`

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function listaAlertasMaquina(idUsuario, fkDispositivo){
  console.log("Inserindo na tabela dispositivo:", idUsuario);
  var instrucaoSql = `SELECT * FROM alertaUsuario WHERE fkUsuario = ${idUsuario} AND fkDispositivo = ${fkDispositivo}`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

module.exports = { lista, atualizarNome, desativarDispositivo, ativarDispositivo, componentes, valoresComponentes, listaAlertasMaquina };
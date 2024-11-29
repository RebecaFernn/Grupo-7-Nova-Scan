var database = require("../database/config");

function lista(fkEmpresa) {
  console.log("Usando a função lista() na model valores a serem usados:", fkEmpresa);
  var instrucaoSql = `SELECT * FROM listaDispositivo WHERE idEmpresa = ${fkEmpresa}`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function listaSelect(fkEmpresa) {
  console.log("Usando a função lista() na model valores a serem usados:", fkEmpresa);
  var instrucaoSql = `SELECT * FROM dispositivo WHERE fkEmpresa = ${fkEmpresa}`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function atualizarNome(novoNome, fkEmpresa, idDispositivo) {
  console.log("Usando a função atualizarNome() na model valores a serem usados:", novoNome, fkEmpresa, idDispositivo);
  var instrucaoSql = `UPDATE dispositivo SET nome = '${novoNome}' WHERE fkEmpresa = ${fkEmpresa} AND id = ${idDispositivo}`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function desativarDispositivo(idDispositivo) {
  console.log("Inserindo na tabela historicoDispositivo:", idDispositivo);
  var instrucaoSql = `INSERT INTO historicoAtividade (fkAtividade, fkDispositivo, dataHora) VALUES
                      (2, ${idDispositivo}, current_timestamp())`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function ativarDispositivo(idDispositivo) {
  console.log("Inserindo na tabela historicoDispositivo:", idDispositivo);
  var instrucaoSql = `INSERT INTO historicoAtividade (fkAtividade, fkDispositivo, dataHora) VALUES
                      (1, ${idDispositivo}, current_timestamp())`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}


function componentes(fkEmpresa, fkDispositivo) {
  console.log("Usando a função componentes() na model valores a serem usados:", fkEmpresa, fkDispositivo);
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
  console.log("Usando a função valoresComponentes() na model valores a serem usados:", fkEmpresa, fkDispositivo);
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

function listaAlertasMaquina(idUsuario, fkDispositivo) {
  console.log("Usando a função listarAlertasMaquina() na model valores a serem usados:", idUsuario);
  var instrucaoSql = `SELECT * FROM alertaUsuario WHERE fkUsuario = ${idUsuario} AND fkDispositivo = ${fkDispositivo}`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function listarAlertasComponentesMaquina(idDispositivo) {
  console.log("Usando a função listarAlertasComponentesMaquina() na model valores a serem usados:", idDispositivo);
  var instrucaoSql = `SELECT * FROM alertaDispositivo WHERE idDispositivo = ${idDispositivo};`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function listarLogMaquina(idUsuario, idDispositivo, fkEmpresa) {
  console.log("Usando a função listarLogMaquina() na model valores a serem usados:", idDispositivo, fkEmpresa, idUsuario);
  var instrucaoSql = `SELECT * FROM graficoTempoReal WHERE idUsuario = ${idUsuario} AND idEmpresa = ${fkEmpresa} AND idDispositivo = ${idDispositivo};`

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function graficoAlerta(descricaoLog) {
  console.log("Usando a função graficoAlerta, valores a ser recebido: ", descricaoLog)
  var instrucaoSql = `SELECT 
    FROM_UNIXTIME(FLOOR(UNIX_TIMESTAMP(dataHora) / 5) * 5) AS intervalo_inicio, 
    MAX(valor) AS pico_maximo,
    descricao,
    d.nome
FROM log 
JOIN dispositivo as d
ON log.fkDispositivo = d.id
WHERE descricao = '${descricaoLog}' AND
eAlerta = 1
AND DATE(dataHora) = curdate() 
GROUP BY intervalo_inicio, d.id
ORDER BY intervalo_inicio;`

  console.log("Executando a instrução SQL " + instrucaoSql)
  return database.executar(instrucaoSql)

}



function overview(fkEmpresa, tipoComponente) {
  console.log("Usando a função overview() na model valores a serem usados:", fkEmpresa, tipoComponente);

  var instrucaoSql = `
    SELECT l.valor
    FROM log l
    INNER JOIN componente c ON l.fkComponente = c.id
    INNER JOIN dispositivo d ON l.fkDispositivo = d.id
    INNER JOIN empresa e ON d.fkEmpresa = e.id
    WHERE e.id = ${fkEmpresa} AND c.tipo = '${tipoComponente}'
    AND l.dataHora >= CURDATE() - INTERVAL 1 MONTH;
;
  `;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);

  // Usando parâmetros preparados para evitar SQL Injection
  return database.executar(instrucaoSql, [fkEmpresa, tipoComponente]);
}


module.exports = {
  lista,
  atualizarNome,
  desativarDispositivo,
  ativarDispositivo,
  componentes,
  valoresComponentes,
  listaAlertasMaquina,
  listarAlertasComponentesMaquina,
  listaSelect,
  listarLogMaquina,
  graficoAlerta,
  overview
};
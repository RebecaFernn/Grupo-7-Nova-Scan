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

function listaAlertasMaquina(idUsuario, fkDispositivo){
  console.log("Usando a função listarAlertasMaquina() na model valores a serem usados:", idUsuario);
  var instrucaoSql = `SELECT * FROM alertaUsuario WHERE fkUsuario = ${idUsuario} AND fkDispositivo = ${fkDispositivo}`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

function listarAlertasComponentesMaquina(idDispositivo){
  console.log("Usando a função listarAlertasComponentesMaquina() na model valores a serem usados:", idDispositivo);
  var instrucaoSql = `SELECT * FROM alertaDispositivo WHERE idDispositivo = ${idDispositivo};`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}



function listarLogMaquina(idUsuario, idDispositivo, fkEmpresa){
  console.log("Usando a função listarLogMaquina() na model valores a serem usados:", idDispositivo, fkEmpresa, idUsuario);
  var instrucaoSql = `SELECT 
    u.id AS idUsuario,
    u.nome AS nomeUsuario,
    e.id AS idEmpresa,
    e.razaoSocial AS nomeEmpresa,
    d.id AS idDispositivo,
    d.nome AS nomeDispositivo,
    c.id AS idComponente,
    c.nome AS nomeComponente,
    c.tipo AS tipoComponente,
    l.id AS idLog,
    l.valor,
    l.unidadeDeMedida,
    l.dataHora AS dataHoraLog,
    l.descricao AS descricaoLog,
    l.eAlerta,
    a.id AS idAlerta,
    ta.tipo AS tipoAlerta,
    a.minIntervalo,
    a.maxIntervalo
FROM 
    usuario AS u
JOIN 
    empresa AS e ON u.fkEmpresa = e.id
JOIN 
    dispositivo AS d ON d.fkEmpresa = e.id
JOIN 
    componente AS c ON c.fkDispositivo = d.id
LEFT JOIN 
    log AS l ON l.fkComponente = c.id AND l.fkDispositivo = d.id
LEFT JOIN 
    alerta AS a ON a.fkComponente = c.id AND a.fkDispositivo = d.id AND a.fkUsuario = u.id
LEFT JOIN 
    tipoAlerta AS ta ON a.fkTipoAlerta = ta.id
WHERE 
    u.id = ${idUsuario} AND e.id = ${fkEmpresa} AND d.id = ${idDispositivo}
ORDER BY 
    l.dataHora DESC
LIMIT 7;
`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}


module.exports = { lista, atualizarNome, desativarDispositivo, ativarDispositivo, componentes, valoresComponentes, listaAlertasMaquina , listarAlertasComponentesMaquina, listaSelect, listarLogMaquina};
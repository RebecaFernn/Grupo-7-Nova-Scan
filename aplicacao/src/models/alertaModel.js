var database = require("../database/config");


function listaComponentes(fkEmpresa, id) {
    console.log("ACESSEI O ALERTA MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listarComponentes():");
    console.log("Inserindo na tabela usuario:", fkEmpresa, id);

    var instrucaoSql = `SELECT c.id as idComponente, c.tipo as nomeComponente FROM componente AS c JOIN dispositivo as d
ON c.fkDispositivo = d.id
JOIN empresa as e
ON d.fkEmpresa = e.id
WHERE d.id = ${id} AND e.id = ${fkEmpresa};`
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function listarAlertaComponente(){
    console.log("ACESSEI O ALERTA MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listarAlertasComponente():");

    var instrucaoSql = `SELECT * FROM tipoAlerta;`

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function criarAlerta(fkUsuario, fkComponente, fkDispositivo, minIntervalo, maxIntervalo) {
    console.log("ACESSEI O ALERTA MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function criarAlerta():");
    console.log("Inserindo na tabela usuario:", fkUsuario, fkComponente, fkDispositivo, minIntervalo, maxIntervalo);

    var instrucaoSql = `INSERT INTO alerta (minIntervalo, maxIntervalo, fkUsuario, fkComponente, fkDispositivo) VALUES (${minIntervalo}, ${maxIntervalo}, ${fkUsuario}, ${fkComponente}, ${fkDispositivo});`

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function qtdAlertasUsuario(fkUsuario, fkDispositivo, fkComponente) {
    console.log("ACESSEI O ALERTA MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function qtdAlertasUsuario():");
    console.log("Inserindo na tabela usuariooooooooooooooooooooooooooooooooooooooooooooo:", fkUsuario, fkDispositivo, fkComponente);

    var instrucaoSql = `SELECT COUNT(*) as qtdAlertas FROM alerta WHERE fkUsuario = ${fkUsuario} AND fkDispositivo = ${fkDispositivo} AND fkComponente = ${fkComponente};`

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function listaAlertas(fkUsuario) {
    console.log("ACESSEI O ALERTA MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listaAlertas():");
    console.log("Inserindo na tabela usuario:", fkUsuario);

    var instrucaoSql = `SELECT a.id as idAlerta,
    a.minIntervalo, 
a.maxIntervalo, 
c.tipo, 
d.nome as NomeMaquina, 
u.nome as NomeUsuario
FROM alerta as a JOIN componente as c 
ON a.fkComponente = c.id
JOIN dispositivo as d
ON a.fkDispositivo = d.id
JOIN usuario as u
ON a.fkUsuario = u.id
WHERE a.fkUsuario = ${fkUsuario};`

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function excluirAlerta(idAlerta) {
    console.log("ACESSEI O ALERTA MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function excluirAlerta():");
    console.log("Inserindo na tabela usuario:", idAlerta);

    var instrucaoSql = `DELETE FROM alerta WHERE id = ${idAlerta};`

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


function editarAlerta(idUsuario, minIntervalo, maxIntervalo, idAlerta){
    console.log("ACESSEI O ALERTA MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function excluirAlerta():");
    console.log("Atualizando alerta do usuario:", idUsuario, minIntervalo, maxIntervalo, idAlerta);

    var instrucaoSql = `
    UPDATE alerta SET minIntervalo = ${minIntervalo}, maxIntervalo = ${maxIntervalo} WHERE fkUsuario = ${idUsuario} AND id = ${idAlerta};
    `

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}



module.exports = { listaComponentes, criarAlerta, qtdAlertasUsuario, listaAlertas, excluirAlerta, editarAlerta, listarAlertaComponente };
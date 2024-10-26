var database = require("../database/config")

function autenticar(email, senha) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function autenticar(): ", email, senha)
    var instrucaoSql = `
        SELECT id, nome, email, senha, fkEmpresa FROM usuario WHERE email = '${email}' AND senha = '${senha}';
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function cadastrarFunc(nome, email, senha, fkUsuario, empresa) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrarFunc():", email, senha, empresa);
    console.log("Inserindo na tabela usuario:", empresa, senha, email);

    var instrucaoSql = `
        INSERT INTO usuario (nome, email, senha, fkAdmin, fkEmpresa, fkTipoUsuario, fkStatusUsuario) VALUES ('${nome}', '${email}', '${senha}', ${fkUsuario}, ${empresa}, 2, 1);
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function primeiroAcesso(nome, email, senha) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function primeiroAcesso():", nome, email, senha);
    console.log("Inserindo na tabela usuario:", nome, email, senha);

    var instrucaoSql = `
           INSERT INTO usuario (nome, email, senha, fkEmpresa, fkTipoUsuario, fkStatusUsuario) VALUES ('${nome}', '${email}', '${senha}', (SELECT MAX(id) AS 'Último ID' FROM empresa), 1, 1); 
    `
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function alterarSenha(email, senha) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function primeiroAcesso():", nome, email, senha);
    console.log("Modificando na tabela usuario:", email, senha);

    var instrucaoSql = `
           UPDATE usuario SET senha = '${senha}' WHERE email = '${email}';; 
    `
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function listarPainel(fkEmpresa) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listarPainel():");

    var instrucaoSql = `
          SELECT * FROM listarfuncionario WHERE fkEmpresa = ${fkEmpresa} ORDER BY id; 
    `
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


function atualizarDados(novoNome, novoEmail, novaSenha, idUsuario, fkEmpresa) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function atualizarDados():");
    console.log("Inserindo na tabela usuario:", novoNome, novoEmail, novaSenha, idUsuario, fkEmpresa);
    /*
     usando operador ternário para poder fazer uma estrutura de if-else, onde ele verifica se diferente de nulo, 
     se for nulo ele mantém o novoNome em aspas simples
     */
    var instrucaoSql = `UPDATE usuario
    SET
        nome = COALESCE(${novoNome !== null ? `'${novoNome}'` : null}, nome),
        email = COALESCE(${novoEmail !== null ? `'${novoEmail}'` : null}, email),
        senha = COALESCE(${novaSenha !== null ? `'${novaSenha}'` : null}, senha)
    WHERE id = ${idUsuario} AND fkEmpresa = ${fkEmpresa};
`;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function atualizarCargo(novoCargo, idUsuario, fkEmpresa) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function atualizarDados():");
    console.log("Inserindo na tabela usuario:", novoCargo, fkEmpresa, idUsuario);

    var instrucaoSql = `UPDATE usuario SET fkTipoUsuario = ${novoCargo} WHERE fkEmpresa = ${fkEmpresa} AND id = ${idUsuario};`
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function desativarFuncionario(fkEmpresa, idUsuario){
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function desativarFuncionario():");
    console.log("Inserindo na tabela usuario:", fkEmpresa, idUsuario);

    var instrucaoSql = `UPDATE usuario SET fkStatusUsuario = 2 WHERE fkEmpresa = ${fkEmpresa} AND id = ${idUsuario};`
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    autenticar,
    cadastrarFunc,
    primeiroAcesso,
    alterarSenha,
    listarPainel,
    atualizarDados,
    atualizarCargo,
    desativarFuncionario
};
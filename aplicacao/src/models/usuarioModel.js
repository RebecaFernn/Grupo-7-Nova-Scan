var database = require("../database/config")

function autenticar(email, senha) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function autenticar(): ", email, senha)
    var instrucaoSql = `
        SELECT id, nome, email, senha, fkEmpresa FROM usuario WHERE email = '${email}' AND senha = '${senha}';
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

// Coloque os mesmos parâmetros aqui. Vá para a var instrucaoSql
function cadastrarFunc(nome, email, senha, fkUsuario, empresa) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrarFunc():", email, senha, empresa);
    console.log("Inserindo na tabela usuario:", empresa, senha, email);

    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucaoSql = `
        INSERT INTO usuario (nome, email, senha, fkAdmin, fkEmpresa, fkTipoUsuario, fkStatusUsuario) VALUES ('${nome}', '${email}', '${senha}', ${fkUsuario}, ${empresa}, 1, 1);
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function primeiroAcesso(nome, email, senha, fkEmpresa) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function primeiroAcesso():", nome, email, senha, fkEmpresa);
    console.log("Inserindo na tabela usuario:", nome, email, senha, fkEmpresa);

    var instrucaoSql = `
           INSERT INTO usuario (nome, email, senha, fkEmpresa, fkTipoUsuario, fkStatusUsuario) VALUES ('${nome}', '${email}', '${senha}', ${fkEmpresa}, 1, 1); 
    `
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function listarPainel(fkEmpresa) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listarPainel():");

    var instrucaoSql = `
          SELECT u.nome, 
                u.email,  
                adm.nome as 'Administrador Por:', 
                tu.tipo, 
                su.situacao 
                FROM usuario as u 
                LEFT JOIN usuario as adm
                ON adm.id = u.fkAdmin
                JOIN empresa as e 
                ON e.id = u.fkEmpresa
                JOIN tipoUsuario as tu
                ON tu.id = u.fkTipoUsuario
                JOIN statusUsuario as su
                ON su.id = u.fkStatusUsuario
                    WHERE u.fkEmpresa = ${fkEmpresa}; 
    `
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


function atualizarDados(novoNome, novoEmail, novaSenha, idUsuario, fkEmpresa) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function atualizarDados():");
    console.log("Inserindo na tabela usuario:", novoNome, novoEmail, novaSenha);

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

module.exports = {
    autenticar,
    cadastrarFunc,
    primeiroAcesso,
    listarPainel,
    atualizarDados
};
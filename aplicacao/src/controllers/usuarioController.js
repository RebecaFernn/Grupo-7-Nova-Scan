var usuarioModel = require("../models/usuarioModel");

function autenticar(req, res) {
    var email = req.body.emailServer;
    var senha = req.body.senhaServer;

    if (email == undefined) {
        res.status(400).send("Seu email está undefined!");
    } else if (senha == undefined) {
        res.status(400).send("Sua senha está indefinida!");
    } else {
        usuarioModel.autenticar(email, senha)
            .then(
                function (resultadoAutenticar) {
                    console.log(`\nResultados encontrados: ${resultadoAutenticar.length}`);
                    console.log(`Resultados: ${JSON.stringify(resultadoAutenticar)}`); // transforma JSON em String

                    if (resultadoAutenticar.length == 1) {
                        console.log(resultadoAutenticar);
                        res.json({
                            id: resultadoAutenticar[0].id,
                            email: resultadoAutenticar[0].email,
                            nome: resultadoAutenticar[0].nome,
                            senha: resultadoAutenticar[0].senha,
                            fkEmpresa: resultadoAutenticar[0].fkEmpresa
                        });
                    } else if (resultadoAutenticar.length == 0) {
                        res.status(403).send("Email e/ou senha inválido(s)");
                    } else {
                        res.status(403).send("Mais de um usuário com o mesmo login e senha!");
                    }
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log("\nHouve um erro ao realizar o login! Erro: ", erro.sqlMessage);
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }

}

function cadastrarFunc(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    var empresa = req.body.empresaServer;
    var nome = req.body.nomeServer;
    var email = req.body.emailServer;
    var senha = req.body.senhaServer;
    var fkUsuario = req.body.fkUsuarioServer;

    // Faça as validações dos valores
    if (email == undefined) {
        res.status(400).send("Seu email está undefined!");
    } else if (senha == undefined) {
        res.status(400).send("Sua senha está undefined!");
    } else if (empresa == undefined) {
        res.status(400).send("Sua empresa a vincular está undefined!");
    } else if (nome == undefined) {
        res.status(400).send("O nome esta undefined");
    } else {
        // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
        usuarioModel.cadastrarFunc(nome, email, senha, fkUsuario, empresa)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

function primeiroAcesso(req, res) {
    var nome = req.body.nomeServer
    var email = req.body.emailServer
    var senha = req.body.senhaServer

    if (email == undefined) {
        res.status(400).send("Seu email está undefined!");
    } else if (senha == undefined) {
        res.status(400).send("Sua senha está undefined!");
    } else if (nome == undefined) {
        res.status(400).send("O nome esta undefined")
    } else {
        usuarioModel.primeiroAcesso(nome, email, senha)
            .then(
                function (resposta) {
                    res.json(resposta)
                }
            )
            .catch(
                function (erro) {
                    console.log(erro)
                    console.log(`Teve um erro ao realizar o cadastro! Erro: ${erro.sqlMessage}`)
                    res.status(500).json(erro.sqlMessage)
                }
            )
    }
}

function listarPainel(req,res){
    var fkEmpresa = req.params.fkEmpresa

    if(fkEmpresa == undefined){
        res.status(400).send("A fkEmpresa esta undefined")
    }
    else{
        usuarioModel.listarPainel(fkEmpresa).then((resultado) => {
            res.status(200).json(resultado)
        })
        .catch(function(error){
            console.log(error)
        })
    }
}

function atualizarDados(req,res){
    var idUsuario = req.params.idUsuario
    var fkEmpresa = req.query.fkEmpresa
    
    var novoEmail = req.body.novoEmailServer !== "" ? req.body.novoEmailServer : null
    var novoNome = req.body.novoNomeServer !== "" ? req.body.novoNomeServer : null
    var novaSenha = req.body.novoSenhaServer !== "" ? req.body.novoSenhaServer : null

    if(fkEmpresa == undefined){
        res.status(400).send("A fkEmpresa esta undefined")
    }
    else if(idUsuario == undefined){
        res.status(400).send("O idUsuario está undefined")
    }
    else{
        usuarioModel.atualizarDados(novoNome, novoEmail, novaSenha, idUsuario, fkEmpresa)
        .then(function(resposta){
            console.log("Informações atualizada dentro do banco: ", resposta)
            res.status(200).json(resposta)
        })
        .catch(function(error){
            console.log("Houve um erro ao tentar atualizar as informações: ", error)
        })
    }
    
}

function atualizarCargo(req,res){
    var fkEmpresa = req.query.fkEmpresa
    var novoCargo = req.body.cargoServer
    var idUsuario = req.body.idUsuarioServer

    if(fkEmpresa == undefined){
        res.status(400).send("A fkEmpresa esta undefined")
    }
    else if(novoCargo == undefined){
        res.status(400).send("O novoCargo está undefined")
    }
    else if(idUsuario == undefined){
        res.status(400).send("O idUsuario está undefined")
    }
    else{
        usuarioModel.atualizarCargo(novoCargo, idUsuario, fkEmpresa)
        .then(function(resposta){
            console.log("Informações atualizada dentro do banco: ", resposta)
        })
        .catch(function(error){
            console.log("Houve um erro ao tentar atualizar as informações: ", error)
        })
    }
}

module.exports = {
    autenticar,
    cadastrarFunc,
    primeiroAcesso,
    listarPainel,
    atualizarDados,
    atualizarCargo
}
var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrarFunc", function (req, res) {
    usuarioController.cadastrarFunc(req, res);
})

// Rota do primeiro cadastro
router.post("/primeiroAcesso", function (req, res) {
    usuarioController.primeiroAcesso(req, res);
})

// Rota para alterar a senha
router.post("/alterarSenha", function (req, res) {
    usuarioController.primeiroAcesso(req, res);
})

// Rota para fazer o login
router.post("/autenticar", function (req, res) {
    usuarioController.autenticar(req, res);
});

// Rota para listar os funcionarios na parte de colaboradores
router.get("/listarPainel/:fkEmpresa", function (req, res) {
    usuarioController.listarPainel(req, res);
});

// Rota para atualizar os dados do funcionario
router.patch("/atualizarDados/:idUsuario", function (req, res) {
    usuarioController.atualizarDados(req, res);
});

// Rota para mudar o cargo do funcionario
router.patch("/atualizarCargo/:fkEmpresa", function (req, res) {
    usuarioController.atualizarCargo(req, res);
});

// Rota para desativar o funcionario
router.patch("/desativarFuncionario/:fkEmpresa", function (req, res) {
    usuarioController.desativarFuncionario(req, res);
})


module.exports = router;
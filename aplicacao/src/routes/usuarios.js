var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrarFunc", function (req, res) {
    usuarioController.cadastrarFunc(req, res);
})

router.post("/primeiroAcesso", function (req, res) {
    usuarioController.primeiroAcesso(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.autenticar(req, res);
});

router.get("/listarPainel/:fkEmpresa", function (req, res) {
    usuarioController.listarPainel(req, res);
});

router.patch("/atualizarDados/:idUsuario", function (req, res) {
    usuarioController.atualizarDados(req, res);
});


module.exports = router;
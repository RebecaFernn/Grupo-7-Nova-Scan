var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrarAdmin", function (req, res) {
    usuarioController.cadastrarAdmin(req, res);
})

router.post("/primeiroAcesso", function (req, res) {
    usuarioController.primeiroAcesso(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.autenticar(req, res);
});

router.get("/listarPainel", function (req, res) {
    usuarioController.listarPainel(req, res);
});

module.exports = router;
var express = require("express");
var router = express.Router();

var empresaController = require("../controllers/empresaController");

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    empresaController.cadastrar(req, res);
})

router.get("/listarCnpj", function (req, res) {
    empresaController.listarCnpj(req, res);
});

router.get("/ultimaEmpresa", function (req, res) {
  empresaController.ultimaEmpresa(req, res);
});

module.exports = router;
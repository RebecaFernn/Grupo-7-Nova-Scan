var express = require("express");
var router = express.Router();

var alertaController = require("../controllers/alertaController");

router.get("/listaComponentes/:fkEmpresa", function (req, res) {
    alertaController.listaComponentes(req, res);
})

module.exports = router;
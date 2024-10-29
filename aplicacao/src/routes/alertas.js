var express = require("express");
var router = express.Router();

var alertaController = require("../controllers/alertaController");

router.get("/listaComponentes/:fkEmpresa", function (req, res) {
    alertaController.listaComponentes(req, res);
})

router.get("/qtdAlertasUsuario/:fkUsuario", function (req, res) {
    alertaController.qtdAlertasUsuario(req, res);
})

router.post("/criarAlerta", function (req, res) {
    alertaController.criarAlerta(req, res);
})



module.exports = router;
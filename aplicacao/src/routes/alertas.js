var express = require("express");
var router = express.Router();

var alertaController = require("../controllers/alertaController");

router.get("/listaComponentes/:fkEmpresa", function (req, res) {
    alertaController.listaComponentes(req, res);
})

router.get("/qtdAlertasUsuario/:fkUsuario", function (req, res) {
    alertaController.qtdAlertasUsuario(req, res);
})

router.get("/listaAlertas/:fkUsuario", function (req, res) {
    alertaController.listaAlertas(req, res);
})

router.get("/listarTipoAlertaComponente", function(req, res){
    alertaController.listarAlertaComponente(req, res);
})

router.post("/criarAlerta", function (req, res) {
    alertaController.criarAlerta(req, res);
})

router.delete("/excluirAlerta/:idAlerta", function (req, res) {
    alertaController.excluirAlerta(req, res);
})

router.patch("/editarAlerta", function (req, res) {
    alertaController.editarAlerta(req, res);
})





module.exports = router;
var express = require("express");
var router = express.Router();

var maquinasController = require("../controllers/maquinasController");

router.get("/lista/:fkEmpresa", function (req, res) {
    maquinasController.lista(req, res);
});

router.get("/componentes/:fkEmpresa", function(req,res){
    maquinasController.componentes(req,res);
})

router.post("/atualizarNome/:fkEmpresa", function(req,res){
    maquinasController.atualizarNome(req,res);
})

router.patch("/desativarDispositivo/", function(req,res){
    maquinasController.desativarDispositivo(req,res);
})

router.patch("/ativarDispositivo/", function(req,res){
    maquinasController.ativarDispositivo(req,res);
})

module.exports = router;
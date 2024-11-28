var express = require("express")
var router = express.Router()

var lucasController = require("../controllers/lucasController")

router.get("/bootTime/:fkEmpresa", function(req, res){
    lucasController.bootTime(req,res);
})

router.get("/dadosGraficoRosquinha/:fkEmpresa", function(req, res){
    lucasController.dadosGraficoRosquinha(req, res)
})

router.get("/dadosKpiAlerta/:fkEmpresa", function(req, res){
    lucasController.dadosKpiAlerta(req, res)
})

router.get("/tempoTotal/:fkEmpresa", function(req, res){
    lucasController.tempoTotal(req, res)
})

router.get("/qtdAlertasPorMaquina/:fkEmpresa", function(req, res){
    lucasController.qtdAlertasPorMaquina(req, res)
})

module.exports = router
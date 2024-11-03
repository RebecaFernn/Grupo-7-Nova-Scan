var express = require("express");
var router = express.Router();

var maquinasController = require("../controllers/maquinasController");

router.get("/lista/:fkEmpresa", function (req, res) {
    maquinasController.lista(req, res);
});

router.get("/componentes/:fkEmpresa", function(req,res){
    maquinasController.componentes(req,res);
})

router.get("/valoresComponentes/:fkEmpresa", function(req,res){
    maquinasController.valoresComponentes(req,res);
})

router.get("/listaAlertasMaquina/:idUsuario", function(req,res){
    maquinasController.listaAlertasMaquina(req,res);
})

router.get("/listarAlertasComponentesMaquina/:idDispositivo", function(req,res){
    maquinasController.listarAlertasComponentesMaquina(req,res);
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
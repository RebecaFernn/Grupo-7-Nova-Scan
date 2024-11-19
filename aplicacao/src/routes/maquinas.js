var express = require("express");
var router = express.Router();

var maquinasController = require("../controllers/maquinasController");

router.get("/lista/:fkEmpresa", function (req, res) {
    maquinasController.lista(req, res);
});

router.get("/listaSelect/:fkEmpresa", function (req, res) {
    maquinasController.listaSelect(req, res);
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

router.get("/graficoAlerta/:descricao", function(req, res){
    maquinasController.graficoAlerta(req, res);
})

router.post("/atualizarNome/:fkEmpresa", function(req,res){
    maquinasController.atualizarNome(req,res);
})

router.post("/desativarDispositivo/", function(req,res){
    maquinasController.desativarDispositivo(req,res);
})

router.post("/ativarDispositivo/", function(req,res){
    maquinasController.ativarDispositivo(req,res);
})

// logs maquina
router.get("/listarlogMaquina/:dispositivo", function(req,res){
    maquinasController.listarLogMaquina(req,res);
})

module.exports = router;
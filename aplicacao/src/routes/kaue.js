var express = require("express");
var router = express.Router();

var kaueController = require("../controllers/kaueController");

router.get("/graficopacotes/:maquinaSelecionada", function (req, res) {
    kaueController.graficopacotes(req, res);
});
router.get ("/graficoperda/:maquinaSelecionada", function(req, res){
    kaueController.graficoperda(req, res);
});
router.get ("/listamaquina/:fkEmpresa", function(req, res){
    kaueController.listamaquina(req, res);
});

module.exports = router;
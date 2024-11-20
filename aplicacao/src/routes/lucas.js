var express = require("express")
var router = express.Router()

var lucasController = require("../controllers/lucasController")

router.get("/bootTime/:fkEmpresa", function(req, res){
    lucasController.bootTime(req,res);
})

module.exports = router
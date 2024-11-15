var express = require("express");
var router = express.Router();

var rebecaController = require("../controllers/rebecaController");


router.get("/grafico", function (req, res) {
    rebecaController.grafico(req, res);
});


module.exports = router;
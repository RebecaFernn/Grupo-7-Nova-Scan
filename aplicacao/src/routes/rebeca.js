var express = require("express");
var router = express.Router();

var rebecaController = require("../controllers/rebecaController");


router.get("/grafico", function (req, res) {
    rebecaController.grafico(req, res);
});

router.get("/grafico2", function (req, res) {
    rebecaController.grafico2(req, res);
});

router.get("/KPI1", function (req, res) {
    rebecaController.grafico(req, res);
});

router.get("/KPI2", function (req, res) {
    rebecaController.grafico(req, res);
});

router.get("/KPI3", function (req, res) {
    rebecaController.grafico(req, res);
});


module.exports = router;
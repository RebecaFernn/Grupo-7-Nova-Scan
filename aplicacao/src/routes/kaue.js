var express = require("express");
var router = express.Router();

var kaueController = require("../controllers/kaueController");


router.get("/graficopacoterecebido", function (req, res) {
    kaueController.grafico(req, res);
});
router.get("/graficopacoteenviado", function (req, res) {
    kaueController.grafico(req, res);
});


module.exports = router;
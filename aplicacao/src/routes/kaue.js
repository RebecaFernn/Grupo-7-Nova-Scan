var express = require("express");
var router = express.Router();

var kaueController = require("../controllers/kaueController");


router.get("/graficopacote", function (req, res) {
    kaueController.grafico(req, res);
});


module.exports = router;
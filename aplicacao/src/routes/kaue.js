var express = require("express");
var router = express.Router();

var kaueController = require("../controllers/kaueController");

router.get("/graficopacotes", function (req, res) {
    kaueController.graficopacotes(req, res);
});
router.get ("/graficoperda", function(req, res){
    kaueController.graficoperda(req, res);
});
router.get ("/atualizarhorario", function(req, res){
    kaueController.graficoperda(req, res);
});

module.exports = router;
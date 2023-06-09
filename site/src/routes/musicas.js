var express = require("express");
var router = express.Router();

var musicaController = require("../controllers/musicaController");


router.get("/listar/:serie", function (req, res) {
    musicaController.listar(req, res);
});

router.get("/curtiu/:idUsuario/:idMusica", function (req, res) {
    musicaController.curtiu(req, res);
});

router.delete("/descurtir", function (req, res) {
    musicaController.descurtir(req, res);
});

router.post("/curtir", function (req, res) {
    musicaController.curtir(req, res);
});

router.get("/curtidas/:idUsuario", function (req, res) {
    musicaController.curtidas(req, res);
});

router.get("/luckyFind", function (req, res) {
    musicaController.luckyFind(req, res);
});




module.exports = router;
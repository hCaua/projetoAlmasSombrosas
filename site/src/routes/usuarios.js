var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.get("/", function (req, res) {
    usuarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
});

router.get("/obterId/:nomeUsuario", function (req, res) {
    usuarioController.obterId(req, res);
});


router.get("/cadastrarSenhaUsuario/:idUsuario/:senhaUsuario", function (req, res) {
    usuarioController.cadastrarSenhaUsuario(req, res);
});



//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.login(req, res);
});

module.exports = router;